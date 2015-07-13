{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PackageImports     #-}

-- |
-- Module      : Network.AWS.Data.Body
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Data.Body where

import           Control.Monad.Trans.Resource
import           Data.Aeson
import qualified Data.ByteString.Char8        as BS8
import qualified Data.ByteString.Lazy         as LBS
import qualified Data.ByteString.Lazy.Char8   as LBS8
import           Data.Conduit
import           Data.Monoid
import           Data.String
import           GHC.Generics                 (Generic)
import           Network.AWS.Data.ByteString
import           Network.AWS.Data.Crypto
import           Network.AWS.Data.XML         (encodeXML)
import           Network.HTTP.Client
import           Text.XML                     (Element)

-- | A streaming, exception safe response body.
newtype RsBody = RsBody
    { bodyResponse :: ResumableSource (ResourceT IO) ByteString
    }

instance Show RsBody where
    show = const "RsBody { ResumableSource (ResourceT IO) ByteString }"

-- | An opaque request body containing a 'SHA256' hash.
data RqBody = RqBody
    { bodyDigest  :: Digest SHA256
    , bodyRequest :: RequestBody
    }

instance Show RqBody where
    show b = "RqBody { RequestBody " ++ BS8.unpack (bodyHash b) ++ " }"

instance IsString RqBody where
    fromString = toBody . LBS8.pack

bodyHash :: RqBody -> ByteString
bodyHash = digestToBase Base16 . bodyDigest

bodyStream :: RqBody -> Bool
bodyStream b =
    case bodyRequest b of
        RequestBodyLBS           {} -> False
        RequestBodyBS            {} -> False
        RequestBodyBuilder       {} -> False
        RequestBodyStream        {} -> True
        RequestBodyStreamChunked {} -> True

-- | Anything that can be safely converted to a 'RqBody'.
class ToBody a where
    -- | Convert a value to a request body.
    toBody :: a -> RqBody

instance ToBody RqBody where
    toBody = id

instance ToBody LBS.ByteString where
    toBody x = RqBody (hashlazy x) (RequestBodyLBS x)

instance ToBody ByteString where
    toBody x = RqBody (hash x) (RequestBodyBS x)

instance ToBody Value where
    toBody = toBody . encode

instance ToBody Element where
    toBody = toBody . encodeXML
