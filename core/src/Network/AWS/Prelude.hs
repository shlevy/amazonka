-- |
-- Module      : Network.AWS.Prelude
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Prelude
    ( module Export
    ) where

import           Control.Applicative         as Export ((<$>), (<*>), (<|>))
import           Control.Lens                as Export hiding ((.=))
import           Data.Data                   as Export (Data, Typeable)
import           Data.Hashable               as Export (Hashable)
import           Data.HashMap.Strict         as Export (HashMap)
import           Data.List.NonEmpty          as Export (NonEmpty (..))
import           Data.Maybe                  as Export
import           Data.Monoid                 as Export (First, mconcat, mempty,
                                                        (<>))
import           GHC.Generics                as Export (Generic)
import           Network.AWS.Data.Base64     as Export
import           Network.AWS.Data.Body       as Export
import           Network.AWS.Data.ByteString as Export
import           Network.AWS.Data.Crypto     as Export
import           Network.AWS.Data.Headers    as Export
import           Network.AWS.Data.JSON       as Export
import           Network.AWS.Data.List1      as Export
import           Network.AWS.Data.Map        as Export
import           Network.AWS.Data.Numeric    as Export
import           Network.AWS.Data.Path       as Export
import           Network.AWS.Data.Query      as Export
import           Network.AWS.Data.Sensitive  as Export
import           Network.AWS.Data.Text       as Export
import           Network.AWS.Data.Time       as Export
import           Network.AWS.Data.XML        as Export
import           Network.AWS.Endpoint        as Export
import           Network.AWS.Error           as Export
import           Network.AWS.Types           as Export hiding (AccessKey,
                                                        Endpoint, Seconds,
                                                        SecretKey)
import           Network.HTTP.Types.Status   as Export (Status (..))
import           Numeric.Natural             as Export (Natural)
