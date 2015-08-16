{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.PollForJobs
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about any jobs for AWS CodePipeline to act upon.
--
-- When this API is called, AWS CodePipeline returns temporary credentials
-- for the Amazon S3 bucket used to store artifacts for the pipeline, if
-- the action requires access to that Amazon S3 bucket for input or output
-- artifacts. Additionally, this API returns any secret values defined for
-- the action.
--
-- /See:/ <http://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PollForJobs.html AWS API Reference> for PollForJobs.
module Network.AWS.CodePipeline.PollForJobs
    (
    -- * Creating a Request
      pollForJobs
    , PollForJobs
    -- * Request Lenses
    , pfjMaxBatchSize
    , pfjQueryParam
    , pfjActionTypeId

    -- * Destructuring the Response
    , pollForJobsResponse
    , PollForJobsResponse
    -- * Response Lenses
    , pfjrsJobs
    , pfjrsStatus
    ) where

import           Network.AWS.CodePipeline.Types
import           Network.AWS.CodePipeline.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | Represents the input of a poll for jobs action.
--
-- /See:/ 'pollForJobs' smart constructor.
data PollForJobs = PollForJobs'
    { _pfjMaxBatchSize :: !(Maybe Nat)
    , _pfjQueryParam   :: !(Maybe (Map Text Text))
    , _pfjActionTypeId :: !ActionTypeId
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PollForJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfjMaxBatchSize'
--
-- * 'pfjQueryParam'
--
-- * 'pfjActionTypeId'
pollForJobs
    :: ActionTypeId -- ^ 'pfjActionTypeId'
    -> PollForJobs
pollForJobs pActionTypeId_ =
    PollForJobs'
    { _pfjMaxBatchSize = Nothing
    , _pfjQueryParam = Nothing
    , _pfjActionTypeId = pActionTypeId_
    }

-- | The maximum number of jobs to return in a poll for jobs call.
pfjMaxBatchSize :: Lens' PollForJobs (Maybe Natural)
pfjMaxBatchSize = lens _pfjMaxBatchSize (\ s a -> s{_pfjMaxBatchSize = a}) . mapping _Nat;

-- | A map of property names and values. For an action type with no queryable
-- properties, this value must be null or an empty map. For an action type
-- with a queryable property, you must supply that property as a key in the
-- map. Only jobs whose action configuration matches the mapped value will
-- be returned.
pfjQueryParam :: Lens' PollForJobs (HashMap Text Text)
pfjQueryParam = lens _pfjQueryParam (\ s a -> s{_pfjQueryParam = a}) . _Default . _Map;

-- | Undocumented member.
pfjActionTypeId :: Lens' PollForJobs ActionTypeId
pfjActionTypeId = lens _pfjActionTypeId (\ s a -> s{_pfjActionTypeId = a});

instance AWSRequest PollForJobs where
        type Sv PollForJobs = CodePipeline
        type Rs PollForJobs = PollForJobsResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 PollForJobsResponse' <$>
                   (x .?> "jobs" .!@ mempty) <*> (pure (fromEnum s)))

instance ToHeaders PollForJobs where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("CodePipeline_20150709.PollForJobs" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON PollForJobs where
        toJSON PollForJobs'{..}
          = object
              ["maxBatchSize" .= _pfjMaxBatchSize,
               "queryParam" .= _pfjQueryParam,
               "actionTypeId" .= _pfjActionTypeId]

instance ToPath PollForJobs where
        toPath = const "/"

instance ToQuery PollForJobs where
        toQuery = const mempty

-- | Represents the output of a poll for jobs action.
--
-- /See:/ 'pollForJobsResponse' smart constructor.
data PollForJobsResponse = PollForJobsResponse'
    { _pfjrsJobs   :: !(Maybe [Job])
    , _pfjrsStatus :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PollForJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfjrsJobs'
--
-- * 'pfjrsStatus'
pollForJobsResponse
    :: Int -- ^ 'pfjrsStatus'
    -> PollForJobsResponse
pollForJobsResponse pStatus_ =
    PollForJobsResponse'
    { _pfjrsJobs = Nothing
    , _pfjrsStatus = pStatus_
    }

-- | Information about the jobs to take action on.
pfjrsJobs :: Lens' PollForJobsResponse [Job]
pfjrsJobs = lens _pfjrsJobs (\ s a -> s{_pfjrsJobs = a}) . _Default . _Coerce;

-- | The response status code.
pfjrsStatus :: Lens' PollForJobsResponse Int
pfjrsStatus = lens _pfjrsStatus (\ s a -> s{_pfjrsStatus = a});
