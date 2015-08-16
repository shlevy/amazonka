{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.Product
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.Product where

import           Network.AWS.Prelude
import           Network.AWS.SWF.Types.Sum

-- | Provides details of the 'ActivityTaskCancelRequested' event.
--
-- /See:/ 'activityTaskCancelRequestedEventAttributes' smart constructor.
data ActivityTaskCancelRequestedEventAttributes = ActivityTaskCancelRequestedEventAttributes'
    { _atcreaDecisionTaskCompletedEventId :: !Integer
    , _atcreaActivityId                   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTaskCancelRequestedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atcreaDecisionTaskCompletedEventId'
--
-- * 'atcreaActivityId'
activityTaskCancelRequestedEventAttributes
    :: Integer -- ^ 'atcreaDecisionTaskCompletedEventId'
    -> Text -- ^ 'atcreaActivityId'
    -> ActivityTaskCancelRequestedEventAttributes
activityTaskCancelRequestedEventAttributes pDecisionTaskCompletedEventId_ pActivityId_ =
    ActivityTaskCancelRequestedEventAttributes'
    { _atcreaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    , _atcreaActivityId = pActivityId_
    }

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'RequestCancelActivityTask' decision
-- for this cancellation request. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
atcreaDecisionTaskCompletedEventId :: Lens' ActivityTaskCancelRequestedEventAttributes Integer
atcreaDecisionTaskCompletedEventId = lens _atcreaDecisionTaskCompletedEventId (\ s a -> s{_atcreaDecisionTaskCompletedEventId = a});

-- | The unique ID of the task.
atcreaActivityId :: Lens' ActivityTaskCancelRequestedEventAttributes Text
atcreaActivityId = lens _atcreaActivityId (\ s a -> s{_atcreaActivityId = a});

instance FromJSON
         ActivityTaskCancelRequestedEventAttributes where
        parseJSON
          = withObject
              "ActivityTaskCancelRequestedEventAttributes"
              (\ x ->
                 ActivityTaskCancelRequestedEventAttributes' <$>
                   (x .: "decisionTaskCompletedEventId") <*>
                     (x .: "activityId"))

-- | Provides details of the 'ActivityTaskCanceled' event.
--
-- /See:/ 'activityTaskCanceledEventAttributes' smart constructor.
data ActivityTaskCanceledEventAttributes = ActivityTaskCanceledEventAttributes'
    { _aLatestCancelRequestedEventId :: !(Maybe Integer)
    , _aDetails                      :: !(Maybe Text)
    , _aScheduledEventId             :: !Integer
    , _aStartedEventId               :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTaskCanceledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aLatestCancelRequestedEventId'
--
-- * 'aDetails'
--
-- * 'aScheduledEventId'
--
-- * 'aStartedEventId'
activityTaskCanceledEventAttributes
    :: Integer -- ^ 'aScheduledEventId'
    -> Integer -- ^ 'aStartedEventId'
    -> ActivityTaskCanceledEventAttributes
activityTaskCanceledEventAttributes pScheduledEventId_ pStartedEventId_ =
    ActivityTaskCanceledEventAttributes'
    { _aLatestCancelRequestedEventId = Nothing
    , _aDetails = Nothing
    , _aScheduledEventId = pScheduledEventId_
    , _aStartedEventId = pStartedEventId_
    }

-- | If set, contains the ID of the last 'ActivityTaskCancelRequested' event
-- recorded for this activity task. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
aLatestCancelRequestedEventId :: Lens' ActivityTaskCanceledEventAttributes (Maybe Integer)
aLatestCancelRequestedEventId = lens _aLatestCancelRequestedEventId (\ s a -> s{_aLatestCancelRequestedEventId = a});

-- | Details of the cancellation (if any).
aDetails :: Lens' ActivityTaskCanceledEventAttributes (Maybe Text)
aDetails = lens _aDetails (\ s a -> s{_aDetails = a});

-- | The ID of the 'ActivityTaskScheduled' event that was recorded when this
-- activity task was scheduled. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
aScheduledEventId :: Lens' ActivityTaskCanceledEventAttributes Integer
aScheduledEventId = lens _aScheduledEventId (\ s a -> s{_aScheduledEventId = a});

-- | The ID of the 'ActivityTaskStarted' event recorded when this activity
-- task was started. This information can be useful for diagnosing problems
-- by tracing back the chain of events leading up to this event.
aStartedEventId :: Lens' ActivityTaskCanceledEventAttributes Integer
aStartedEventId = lens _aStartedEventId (\ s a -> s{_aStartedEventId = a});

instance FromJSON ActivityTaskCanceledEventAttributes
         where
        parseJSON
          = withObject "ActivityTaskCanceledEventAttributes"
              (\ x ->
                 ActivityTaskCanceledEventAttributes' <$>
                   (x .:? "latestCancelRequestedEventId") <*>
                     (x .:? "details")
                     <*> (x .: "scheduledEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details of the 'ActivityTaskCompleted' event.
--
-- /See:/ 'activityTaskCompletedEventAttributes' smart constructor.
data ActivityTaskCompletedEventAttributes = ActivityTaskCompletedEventAttributes'
    { _atceaResult           :: !(Maybe Text)
    , _atceaScheduledEventId :: !Integer
    , _atceaStartedEventId   :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTaskCompletedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atceaResult'
--
-- * 'atceaScheduledEventId'
--
-- * 'atceaStartedEventId'
activityTaskCompletedEventAttributes
    :: Integer -- ^ 'atceaScheduledEventId'
    -> Integer -- ^ 'atceaStartedEventId'
    -> ActivityTaskCompletedEventAttributes
activityTaskCompletedEventAttributes pScheduledEventId_ pStartedEventId_ =
    ActivityTaskCompletedEventAttributes'
    { _atceaResult = Nothing
    , _atceaScheduledEventId = pScheduledEventId_
    , _atceaStartedEventId = pStartedEventId_
    }

-- | The results of the activity task (if any).
atceaResult :: Lens' ActivityTaskCompletedEventAttributes (Maybe Text)
atceaResult = lens _atceaResult (\ s a -> s{_atceaResult = a});

-- | The ID of the 'ActivityTaskScheduled' event that was recorded when this
-- activity task was scheduled. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
atceaScheduledEventId :: Lens' ActivityTaskCompletedEventAttributes Integer
atceaScheduledEventId = lens _atceaScheduledEventId (\ s a -> s{_atceaScheduledEventId = a});

-- | The ID of the 'ActivityTaskStarted' event recorded when this activity
-- task was started. This information can be useful for diagnosing problems
-- by tracing back the chain of events leading up to this event.
atceaStartedEventId :: Lens' ActivityTaskCompletedEventAttributes Integer
atceaStartedEventId = lens _atceaStartedEventId (\ s a -> s{_atceaStartedEventId = a});

instance FromJSON
         ActivityTaskCompletedEventAttributes where
        parseJSON
          = withObject "ActivityTaskCompletedEventAttributes"
              (\ x ->
                 ActivityTaskCompletedEventAttributes' <$>
                   (x .:? "result") <*> (x .: "scheduledEventId") <*>
                     (x .: "startedEventId"))

-- | Provides details of the 'ActivityTaskFailed' event.
--
-- /See:/ 'activityTaskFailedEventAttributes' smart constructor.
data ActivityTaskFailedEventAttributes = ActivityTaskFailedEventAttributes'
    { _atfeaReason           :: !(Maybe Text)
    , _atfeaDetails          :: !(Maybe Text)
    , _atfeaScheduledEventId :: !Integer
    , _atfeaStartedEventId   :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTaskFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atfeaReason'
--
-- * 'atfeaDetails'
--
-- * 'atfeaScheduledEventId'
--
-- * 'atfeaStartedEventId'
activityTaskFailedEventAttributes
    :: Integer -- ^ 'atfeaScheduledEventId'
    -> Integer -- ^ 'atfeaStartedEventId'
    -> ActivityTaskFailedEventAttributes
activityTaskFailedEventAttributes pScheduledEventId_ pStartedEventId_ =
    ActivityTaskFailedEventAttributes'
    { _atfeaReason = Nothing
    , _atfeaDetails = Nothing
    , _atfeaScheduledEventId = pScheduledEventId_
    , _atfeaStartedEventId = pStartedEventId_
    }

-- | The reason provided for the failure (if any).
atfeaReason :: Lens' ActivityTaskFailedEventAttributes (Maybe Text)
atfeaReason = lens _atfeaReason (\ s a -> s{_atfeaReason = a});

-- | The details of the failure (if any).
atfeaDetails :: Lens' ActivityTaskFailedEventAttributes (Maybe Text)
atfeaDetails = lens _atfeaDetails (\ s a -> s{_atfeaDetails = a});

-- | The ID of the 'ActivityTaskScheduled' event that was recorded when this
-- activity task was scheduled. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
atfeaScheduledEventId :: Lens' ActivityTaskFailedEventAttributes Integer
atfeaScheduledEventId = lens _atfeaScheduledEventId (\ s a -> s{_atfeaScheduledEventId = a});

-- | The ID of the 'ActivityTaskStarted' event recorded when this activity
-- task was started. This information can be useful for diagnosing problems
-- by tracing back the chain of events leading up to this event.
atfeaStartedEventId :: Lens' ActivityTaskFailedEventAttributes Integer
atfeaStartedEventId = lens _atfeaStartedEventId (\ s a -> s{_atfeaStartedEventId = a});

instance FromJSON ActivityTaskFailedEventAttributes
         where
        parseJSON
          = withObject "ActivityTaskFailedEventAttributes"
              (\ x ->
                 ActivityTaskFailedEventAttributes' <$>
                   (x .:? "reason") <*> (x .:? "details") <*>
                     (x .: "scheduledEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details of the 'ActivityTaskScheduled' event.
--
-- /See:/ 'activityTaskScheduledEventAttributes' smart constructor.
data ActivityTaskScheduledEventAttributes = ActivityTaskScheduledEventAttributes'
    { _atseaControl                      :: !(Maybe Text)
    , _atseaScheduleToCloseTimeout       :: !(Maybe Text)
    , _atseaHeartbeatTimeout             :: !(Maybe Text)
    , _atseaInput                        :: !(Maybe Text)
    , _atseaTaskPriority                 :: !(Maybe Text)
    , _atseaScheduleToStartTimeout       :: !(Maybe Text)
    , _atseaStartToCloseTimeout          :: !(Maybe Text)
    , _atseaActivityType                 :: !ActivityType
    , _atseaActivityId                   :: !Text
    , _atseaTaskList                     :: !TaskList
    , _atseaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTaskScheduledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atseaControl'
--
-- * 'atseaScheduleToCloseTimeout'
--
-- * 'atseaHeartbeatTimeout'
--
-- * 'atseaInput'
--
-- * 'atseaTaskPriority'
--
-- * 'atseaScheduleToStartTimeout'
--
-- * 'atseaStartToCloseTimeout'
--
-- * 'atseaActivityType'
--
-- * 'atseaActivityId'
--
-- * 'atseaTaskList'
--
-- * 'atseaDecisionTaskCompletedEventId'
activityTaskScheduledEventAttributes
    :: ActivityType -- ^ 'atseaActivityType'
    -> Text -- ^ 'atseaActivityId'
    -> TaskList -- ^ 'atseaTaskList'
    -> Integer -- ^ 'atseaDecisionTaskCompletedEventId'
    -> ActivityTaskScheduledEventAttributes
activityTaskScheduledEventAttributes pActivityType_ pActivityId_ pTaskList_ pDecisionTaskCompletedEventId_ =
    ActivityTaskScheduledEventAttributes'
    { _atseaControl = Nothing
    , _atseaScheduleToCloseTimeout = Nothing
    , _atseaHeartbeatTimeout = Nothing
    , _atseaInput = Nothing
    , _atseaTaskPriority = Nothing
    , _atseaScheduleToStartTimeout = Nothing
    , _atseaStartToCloseTimeout = Nothing
    , _atseaActivityType = pActivityType_
    , _atseaActivityId = pActivityId_
    , _atseaTaskList = pTaskList_
    , _atseaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent workflow tasks. This data is not sent to the activity.
atseaControl :: Lens' ActivityTaskScheduledEventAttributes (Maybe Text)
atseaControl = lens _atseaControl (\ s a -> s{_atseaControl = a});

-- | The maximum amount of time for this activity task.
atseaScheduleToCloseTimeout :: Lens' ActivityTaskScheduledEventAttributes (Maybe Text)
atseaScheduleToCloseTimeout = lens _atseaScheduleToCloseTimeout (\ s a -> s{_atseaScheduleToCloseTimeout = a});

-- | The maximum time before which the worker processing this task must
-- report progress by calling RecordActivityTaskHeartbeat. If the timeout
-- is exceeded, the activity task is automatically timed out. If the worker
-- subsequently attempts to record a heartbeat or return a result, it will
-- be ignored.
atseaHeartbeatTimeout :: Lens' ActivityTaskScheduledEventAttributes (Maybe Text)
atseaHeartbeatTimeout = lens _atseaHeartbeatTimeout (\ s a -> s{_atseaHeartbeatTimeout = a});

-- | The input provided to the activity task.
atseaInput :: Lens' ActivityTaskScheduledEventAttributes (Maybe Text)
atseaInput = lens _atseaInput (\ s a -> s{_atseaInput = a});

-- | /Optional./ The priority to assign to the scheduled activity task. If
-- set, this will override any default priority value that was assigned
-- when the activity type was registered.
--
-- Valid values are integers that range from Java\'s 'Integer.MIN_VALUE'
-- (-2147483648) to 'Integer.MAX_VALUE' (2147483647). Higher numbers
-- indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
atseaTaskPriority :: Lens' ActivityTaskScheduledEventAttributes (Maybe Text)
atseaTaskPriority = lens _atseaTaskPriority (\ s a -> s{_atseaTaskPriority = a});

-- | The maximum amount of time the activity task can wait to be assigned to
-- a worker.
atseaScheduleToStartTimeout :: Lens' ActivityTaskScheduledEventAttributes (Maybe Text)
atseaScheduleToStartTimeout = lens _atseaScheduleToStartTimeout (\ s a -> s{_atseaScheduleToStartTimeout = a});

-- | The maximum amount of time a worker may take to process the activity
-- task.
atseaStartToCloseTimeout :: Lens' ActivityTaskScheduledEventAttributes (Maybe Text)
atseaStartToCloseTimeout = lens _atseaStartToCloseTimeout (\ s a -> s{_atseaStartToCloseTimeout = a});

-- | The type of the activity task.
atseaActivityType :: Lens' ActivityTaskScheduledEventAttributes ActivityType
atseaActivityType = lens _atseaActivityType (\ s a -> s{_atseaActivityType = a});

-- | The unique ID of the activity task.
atseaActivityId :: Lens' ActivityTaskScheduledEventAttributes Text
atseaActivityId = lens _atseaActivityId (\ s a -> s{_atseaActivityId = a});

-- | The task list in which the activity task has been scheduled.
atseaTaskList :: Lens' ActivityTaskScheduledEventAttributes TaskList
atseaTaskList = lens _atseaTaskList (\ s a -> s{_atseaTaskList = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision that resulted in the scheduling of this activity task. This
-- information can be useful for diagnosing problems by tracing back the
-- chain of events leading up to this event.
atseaDecisionTaskCompletedEventId :: Lens' ActivityTaskScheduledEventAttributes Integer
atseaDecisionTaskCompletedEventId = lens _atseaDecisionTaskCompletedEventId (\ s a -> s{_atseaDecisionTaskCompletedEventId = a});

instance FromJSON
         ActivityTaskScheduledEventAttributes where
        parseJSON
          = withObject "ActivityTaskScheduledEventAttributes"
              (\ x ->
                 ActivityTaskScheduledEventAttributes' <$>
                   (x .:? "control") <*>
                     (x .:? "scheduleToCloseTimeout")
                     <*> (x .:? "heartbeatTimeout")
                     <*> (x .:? "input")
                     <*> (x .:? "taskPriority")
                     <*> (x .:? "scheduleToStartTimeout")
                     <*> (x .:? "startToCloseTimeout")
                     <*> (x .: "activityType")
                     <*> (x .: "activityId")
                     <*> (x .: "taskList")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'ActivityTaskStarted' event.
--
-- /See:/ 'activityTaskStartedEventAttributes' smart constructor.
data ActivityTaskStartedEventAttributes = ActivityTaskStartedEventAttributes'
    { _atseaIdentity         :: !(Maybe Text)
    , _atseaScheduledEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTaskStartedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atseaIdentity'
--
-- * 'atseaScheduledEventId'
activityTaskStartedEventAttributes
    :: Integer -- ^ 'atseaScheduledEventId'
    -> ActivityTaskStartedEventAttributes
activityTaskStartedEventAttributes pScheduledEventId_ =
    ActivityTaskStartedEventAttributes'
    { _atseaIdentity = Nothing
    , _atseaScheduledEventId = pScheduledEventId_
    }

-- | Identity of the worker that was assigned this task. This aids
-- diagnostics when problems arise. The form of this identity is user
-- defined.
atseaIdentity :: Lens' ActivityTaskStartedEventAttributes (Maybe Text)
atseaIdentity = lens _atseaIdentity (\ s a -> s{_atseaIdentity = a});

-- | The ID of the 'ActivityTaskScheduled' event that was recorded when this
-- activity task was scheduled. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
atseaScheduledEventId :: Lens' ActivityTaskStartedEventAttributes Integer
atseaScheduledEventId = lens _atseaScheduledEventId (\ s a -> s{_atseaScheduledEventId = a});

instance FromJSON ActivityTaskStartedEventAttributes
         where
        parseJSON
          = withObject "ActivityTaskStartedEventAttributes"
              (\ x ->
                 ActivityTaskStartedEventAttributes' <$>
                   (x .:? "identity") <*> (x .: "scheduledEventId"))

-- | Provides details of the 'ActivityTaskTimedOut' event.
--
-- /See:/ 'activityTaskTimedOutEventAttributes' smart constructor.
data ActivityTaskTimedOutEventAttributes = ActivityTaskTimedOutEventAttributes'
    { _attoeaDetails          :: !(Maybe Text)
    , _attoeaTimeoutType      :: !ActivityTaskTimeoutType
    , _attoeaScheduledEventId :: !Integer
    , _attoeaStartedEventId   :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTaskTimedOutEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'attoeaDetails'
--
-- * 'attoeaTimeoutType'
--
-- * 'attoeaScheduledEventId'
--
-- * 'attoeaStartedEventId'
activityTaskTimedOutEventAttributes
    :: ActivityTaskTimeoutType -- ^ 'attoeaTimeoutType'
    -> Integer -- ^ 'attoeaScheduledEventId'
    -> Integer -- ^ 'attoeaStartedEventId'
    -> ActivityTaskTimedOutEventAttributes
activityTaskTimedOutEventAttributes pTimeoutType_ pScheduledEventId_ pStartedEventId_ =
    ActivityTaskTimedOutEventAttributes'
    { _attoeaDetails = Nothing
    , _attoeaTimeoutType = pTimeoutType_
    , _attoeaScheduledEventId = pScheduledEventId_
    , _attoeaStartedEventId = pStartedEventId_
    }

-- | Contains the content of the 'details' parameter for the last call made
-- by the activity to 'RecordActivityTaskHeartbeat'.
attoeaDetails :: Lens' ActivityTaskTimedOutEventAttributes (Maybe Text)
attoeaDetails = lens _attoeaDetails (\ s a -> s{_attoeaDetails = a});

-- | The type of the timeout that caused this event.
attoeaTimeoutType :: Lens' ActivityTaskTimedOutEventAttributes ActivityTaskTimeoutType
attoeaTimeoutType = lens _attoeaTimeoutType (\ s a -> s{_attoeaTimeoutType = a});

-- | The ID of the 'ActivityTaskScheduled' event that was recorded when this
-- activity task was scheduled. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
attoeaScheduledEventId :: Lens' ActivityTaskTimedOutEventAttributes Integer
attoeaScheduledEventId = lens _attoeaScheduledEventId (\ s a -> s{_attoeaScheduledEventId = a});

-- | The ID of the 'ActivityTaskStarted' event recorded when this activity
-- task was started. This information can be useful for diagnosing problems
-- by tracing back the chain of events leading up to this event.
attoeaStartedEventId :: Lens' ActivityTaskTimedOutEventAttributes Integer
attoeaStartedEventId = lens _attoeaStartedEventId (\ s a -> s{_attoeaStartedEventId = a});

instance FromJSON ActivityTaskTimedOutEventAttributes
         where
        parseJSON
          = withObject "ActivityTaskTimedOutEventAttributes"
              (\ x ->
                 ActivityTaskTimedOutEventAttributes' <$>
                   (x .:? "details") <*> (x .: "timeoutType") <*>
                     (x .: "scheduledEventId")
                     <*> (x .: "startedEventId"))

-- | Represents an activity type.
--
-- /See:/ 'activityType' smart constructor.
data ActivityType = ActivityType'
    { _atName    :: !Text
    , _atVersion :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atName'
--
-- * 'atVersion'
activityType
    :: Text -- ^ 'atName'
    -> Text -- ^ 'atVersion'
    -> ActivityType
activityType pName_ pVersion_ =
    ActivityType'
    { _atName = pName_
    , _atVersion = pVersion_
    }

-- | The name of this activity.
--
-- The combination of activity type name and version must be unique within
-- a domain.
atName :: Lens' ActivityType Text
atName = lens _atName (\ s a -> s{_atName = a});

-- | The version of this activity.
--
-- The combination of activity type name and version must be unique with in
-- a domain.
atVersion :: Lens' ActivityType Text
atVersion = lens _atVersion (\ s a -> s{_atVersion = a});

instance FromJSON ActivityType where
        parseJSON
          = withObject "ActivityType"
              (\ x ->
                 ActivityType' <$> (x .: "name") <*> (x .: "version"))

instance ToJSON ActivityType where
        toJSON ActivityType'{..}
          = object ["name" .= _atName, "version" .= _atVersion]

-- | Configuration settings registered with the activity type.
--
-- /See:/ 'activityTypeConfiguration' smart constructor.
data ActivityTypeConfiguration = ActivityTypeConfiguration'
    { _atcDefaultTaskScheduleToStartTimeout :: !(Maybe Text)
    , _atcDefaultTaskList                   :: !(Maybe TaskList)
    , _atcDefaultTaskPriority               :: !(Maybe Text)
    , _atcDefaultTaskHeartbeatTimeout       :: !(Maybe Text)
    , _atcDefaultTaskScheduleToCloseTimeout :: !(Maybe Text)
    , _atcDefaultTaskStartToCloseTimeout    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTypeConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atcDefaultTaskScheduleToStartTimeout'
--
-- * 'atcDefaultTaskList'
--
-- * 'atcDefaultTaskPriority'
--
-- * 'atcDefaultTaskHeartbeatTimeout'
--
-- * 'atcDefaultTaskScheduleToCloseTimeout'
--
-- * 'atcDefaultTaskStartToCloseTimeout'
activityTypeConfiguration
    :: ActivityTypeConfiguration
activityTypeConfiguration =
    ActivityTypeConfiguration'
    { _atcDefaultTaskScheduleToStartTimeout = Nothing
    , _atcDefaultTaskList = Nothing
    , _atcDefaultTaskPriority = Nothing
    , _atcDefaultTaskHeartbeatTimeout = Nothing
    , _atcDefaultTaskScheduleToCloseTimeout = Nothing
    , _atcDefaultTaskStartToCloseTimeout = Nothing
    }

-- | /Optional./ The default maximum duration, specified when registering the
-- activity type, that a task of an activity type can wait before being
-- assigned to a worker. You can override this default when scheduling a
-- task through the 'ScheduleActivityTask' decision.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
atcDefaultTaskScheduleToStartTimeout :: Lens' ActivityTypeConfiguration (Maybe Text)
atcDefaultTaskScheduleToStartTimeout = lens _atcDefaultTaskScheduleToStartTimeout (\ s a -> s{_atcDefaultTaskScheduleToStartTimeout = a});

-- | /Optional./ The default task list specified for this activity type at
-- registration. This default is used if a task list is not provided when a
-- task is scheduled through the 'ScheduleActivityTask' decision. You can
-- override the default registered task list when scheduling a task through
-- the 'ScheduleActivityTask' decision.
atcDefaultTaskList :: Lens' ActivityTypeConfiguration (Maybe TaskList)
atcDefaultTaskList = lens _atcDefaultTaskList (\ s a -> s{_atcDefaultTaskList = a});

-- | /Optional./ The default task priority for tasks of this activity type,
-- specified at registration. If not set, then \"0\" will be used as the
-- default priority. This default can be overridden when scheduling an
-- activity task.
--
-- Valid values are integers that range from Java\'s 'Integer.MIN_VALUE'
-- (-2147483648) to 'Integer.MAX_VALUE' (2147483647). Higher numbers
-- indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
atcDefaultTaskPriority :: Lens' ActivityTypeConfiguration (Maybe Text)
atcDefaultTaskPriority = lens _atcDefaultTaskPriority (\ s a -> s{_atcDefaultTaskPriority = a});

-- | /Optional./ The default maximum time, in seconds, before which a worker
-- processing a task must report progress by calling
-- RecordActivityTaskHeartbeat.
--
-- You can specify this value only when /registering/ an activity type. The
-- registered default value can be overridden when you schedule a task
-- through the 'ScheduleActivityTask' decision. If the activity worker
-- subsequently attempts to record a heartbeat or returns a result, the
-- activity worker receives an 'UnknownResource' fault. In this case,
-- Amazon SWF no longer considers the activity task to be valid; the
-- activity worker should clean up the activity task.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
atcDefaultTaskHeartbeatTimeout :: Lens' ActivityTypeConfiguration (Maybe Text)
atcDefaultTaskHeartbeatTimeout = lens _atcDefaultTaskHeartbeatTimeout (\ s a -> s{_atcDefaultTaskHeartbeatTimeout = a});

-- | /Optional./ The default maximum duration, specified when registering the
-- activity type, for tasks of this activity type. You can override this
-- default when scheduling a task through the 'ScheduleActivityTask'
-- decision.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
atcDefaultTaskScheduleToCloseTimeout :: Lens' ActivityTypeConfiguration (Maybe Text)
atcDefaultTaskScheduleToCloseTimeout = lens _atcDefaultTaskScheduleToCloseTimeout (\ s a -> s{_atcDefaultTaskScheduleToCloseTimeout = a});

-- | /Optional./ The default maximum duration for tasks of an activity type
-- specified when registering the activity type. You can override this
-- default when scheduling a task through the 'ScheduleActivityTask'
-- decision.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
atcDefaultTaskStartToCloseTimeout :: Lens' ActivityTypeConfiguration (Maybe Text)
atcDefaultTaskStartToCloseTimeout = lens _atcDefaultTaskStartToCloseTimeout (\ s a -> s{_atcDefaultTaskStartToCloseTimeout = a});

instance FromJSON ActivityTypeConfiguration where
        parseJSON
          = withObject "ActivityTypeConfiguration"
              (\ x ->
                 ActivityTypeConfiguration' <$>
                   (x .:? "defaultTaskScheduleToStartTimeout") <*>
                     (x .:? "defaultTaskList")
                     <*> (x .:? "defaultTaskPriority")
                     <*> (x .:? "defaultTaskHeartbeatTimeout")
                     <*> (x .:? "defaultTaskScheduleToCloseTimeout")
                     <*> (x .:? "defaultTaskStartToCloseTimeout"))

-- | Detailed information about an activity type.
--
-- /See:/ 'activityTypeInfo' smart constructor.
data ActivityTypeInfo = ActivityTypeInfo'
    { _atiDeprecationDate :: !(Maybe POSIX)
    , _atiDescription     :: !(Maybe Text)
    , _atiActivityType    :: !ActivityType
    , _atiStatus          :: !RegistrationStatus
    , _atiCreationDate    :: !POSIX
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityTypeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atiDeprecationDate'
--
-- * 'atiDescription'
--
-- * 'atiActivityType'
--
-- * 'atiStatus'
--
-- * 'atiCreationDate'
activityTypeInfo
    :: ActivityType -- ^ 'atiActivityType'
    -> RegistrationStatus -- ^ 'atiStatus'
    -> UTCTime -- ^ 'atiCreationDate'
    -> ActivityTypeInfo
activityTypeInfo pActivityType_ pStatus_ pCreationDate_ =
    ActivityTypeInfo'
    { _atiDeprecationDate = Nothing
    , _atiDescription = Nothing
    , _atiActivityType = pActivityType_
    , _atiStatus = pStatus_
    , _atiCreationDate = _Time # pCreationDate_
    }

-- | If DEPRECATED, the date and time DeprecateActivityType was called.
atiDeprecationDate :: Lens' ActivityTypeInfo (Maybe UTCTime)
atiDeprecationDate = lens _atiDeprecationDate (\ s a -> s{_atiDeprecationDate = a}) . mapping _Time;

-- | The description of the activity type provided in RegisterActivityType.
atiDescription :: Lens' ActivityTypeInfo (Maybe Text)
atiDescription = lens _atiDescription (\ s a -> s{_atiDescription = a});

-- | The ActivityType type structure representing the activity type.
atiActivityType :: Lens' ActivityTypeInfo ActivityType
atiActivityType = lens _atiActivityType (\ s a -> s{_atiActivityType = a});

-- | The current status of the activity type.
atiStatus :: Lens' ActivityTypeInfo RegistrationStatus
atiStatus = lens _atiStatus (\ s a -> s{_atiStatus = a});

-- | The date and time this activity type was created through
-- RegisterActivityType.
atiCreationDate :: Lens' ActivityTypeInfo UTCTime
atiCreationDate = lens _atiCreationDate (\ s a -> s{_atiCreationDate = a}) . _Time;

instance FromJSON ActivityTypeInfo where
        parseJSON
          = withObject "ActivityTypeInfo"
              (\ x ->
                 ActivityTypeInfo' <$>
                   (x .:? "deprecationDate") <*> (x .:? "description")
                     <*> (x .: "activityType")
                     <*> (x .: "status")
                     <*> (x .: "creationDate"))

-- | Provides details of the 'CancelTimer' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'cancelTimerDecisionAttributes' smart constructor.
newtype CancelTimerDecisionAttributes = CancelTimerDecisionAttributes'
    { _ctdaTimerId :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CancelTimerDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctdaTimerId'
cancelTimerDecisionAttributes
    :: Text -- ^ 'ctdaTimerId'
    -> CancelTimerDecisionAttributes
cancelTimerDecisionAttributes pTimerId_ =
    CancelTimerDecisionAttributes'
    { _ctdaTimerId = pTimerId_
    }

-- | __Required.__ The unique ID of the timer to cancel.
ctdaTimerId :: Lens' CancelTimerDecisionAttributes Text
ctdaTimerId = lens _ctdaTimerId (\ s a -> s{_ctdaTimerId = a});

instance ToJSON CancelTimerDecisionAttributes where
        toJSON CancelTimerDecisionAttributes'{..}
          = object ["timerId" .= _ctdaTimerId]

-- | Provides details of the 'CancelTimerFailed' event.
--
-- /See:/ 'cancelTimerFailedEventAttributes' smart constructor.
data CancelTimerFailedEventAttributes = CancelTimerFailedEventAttributes'
    { _ctfeaTimerId                      :: !Text
    , _ctfeaCause                        :: !CancelTimerFailedCause
    , _ctfeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CancelTimerFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctfeaTimerId'
--
-- * 'ctfeaCause'
--
-- * 'ctfeaDecisionTaskCompletedEventId'
cancelTimerFailedEventAttributes
    :: Text -- ^ 'ctfeaTimerId'
    -> CancelTimerFailedCause -- ^ 'ctfeaCause'
    -> Integer -- ^ 'ctfeaDecisionTaskCompletedEventId'
    -> CancelTimerFailedEventAttributes
cancelTimerFailedEventAttributes pTimerId_ pCause_ pDecisionTaskCompletedEventId_ =
    CancelTimerFailedEventAttributes'
    { _ctfeaTimerId = pTimerId_
    , _ctfeaCause = pCause_
    , _ctfeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The timerId provided in the 'CancelTimer' decision that failed.
ctfeaTimerId :: Lens' CancelTimerFailedEventAttributes Text
ctfeaTimerId = lens _ctfeaTimerId (\ s a -> s{_ctfeaTimerId = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
ctfeaCause :: Lens' CancelTimerFailedEventAttributes CancelTimerFailedCause
ctfeaCause = lens _ctfeaCause (\ s a -> s{_ctfeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'CancelTimer' decision to cancel this
-- timer. This information can be useful for diagnosing problems by tracing
-- back the chain of events leading up to this event.
ctfeaDecisionTaskCompletedEventId :: Lens' CancelTimerFailedEventAttributes Integer
ctfeaDecisionTaskCompletedEventId = lens _ctfeaDecisionTaskCompletedEventId (\ s a -> s{_ctfeaDecisionTaskCompletedEventId = a});

instance FromJSON CancelTimerFailedEventAttributes
         where
        parseJSON
          = withObject "CancelTimerFailedEventAttributes"
              (\ x ->
                 CancelTimerFailedEventAttributes' <$>
                   (x .: "timerId") <*> (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'CancelWorkflowExecution' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'cancelWorkflowExecutionDecisionAttributes' smart constructor.
newtype CancelWorkflowExecutionDecisionAttributes = CancelWorkflowExecutionDecisionAttributes'
    { _cwedaDetails :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CancelWorkflowExecutionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwedaDetails'
cancelWorkflowExecutionDecisionAttributes
    :: CancelWorkflowExecutionDecisionAttributes
cancelWorkflowExecutionDecisionAttributes =
    CancelWorkflowExecutionDecisionAttributes'
    { _cwedaDetails = Nothing
    }

-- | /Optional./ details of the cancellation.
cwedaDetails :: Lens' CancelWorkflowExecutionDecisionAttributes (Maybe Text)
cwedaDetails = lens _cwedaDetails (\ s a -> s{_cwedaDetails = a});

instance ToJSON
         CancelWorkflowExecutionDecisionAttributes where
        toJSON CancelWorkflowExecutionDecisionAttributes'{..}
          = object ["details" .= _cwedaDetails]

-- | Provides details of the 'CancelWorkflowExecutionFailed' event.
--
-- /See:/ 'cancelWorkflowExecutionFailedEventAttributes' smart constructor.
data CancelWorkflowExecutionFailedEventAttributes = CancelWorkflowExecutionFailedEventAttributes'
    { _cCause                        :: !CancelWorkflowExecutionFailedCause
    , _cDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CancelWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCause'
--
-- * 'cDecisionTaskCompletedEventId'
cancelWorkflowExecutionFailedEventAttributes
    :: CancelWorkflowExecutionFailedCause -- ^ 'cCause'
    -> Integer -- ^ 'cDecisionTaskCompletedEventId'
    -> CancelWorkflowExecutionFailedEventAttributes
cancelWorkflowExecutionFailedEventAttributes pCause_ pDecisionTaskCompletedEventId_ =
    CancelWorkflowExecutionFailedEventAttributes'
    { _cCause = pCause_
    , _cDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
cCause :: Lens' CancelWorkflowExecutionFailedEventAttributes CancelWorkflowExecutionFailedCause
cCause = lens _cCause (\ s a -> s{_cCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'CancelWorkflowExecution' decision
-- for this cancellation request. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
cDecisionTaskCompletedEventId :: Lens' CancelWorkflowExecutionFailedEventAttributes Integer
cDecisionTaskCompletedEventId = lens _cDecisionTaskCompletedEventId (\ s a -> s{_cDecisionTaskCompletedEventId = a});

instance FromJSON
         CancelWorkflowExecutionFailedEventAttributes where
        parseJSON
          = withObject
              "CancelWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 CancelWorkflowExecutionFailedEventAttributes' <$>
                   (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Provide details of the 'ChildWorkflowExecutionCanceled' event.
--
-- /See:/ 'childWorkflowExecutionCanceledEventAttributes' smart constructor.
data ChildWorkflowExecutionCanceledEventAttributes = ChildWorkflowExecutionCanceledEventAttributes'
    { _cDetails           :: !(Maybe Text)
    , _cWorkflowExecution :: !WorkflowExecution
    , _cWorkflowType      :: !WorkflowType
    , _cInitiatedEventId  :: !Integer
    , _cStartedEventId    :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildWorkflowExecutionCanceledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDetails'
--
-- * 'cWorkflowExecution'
--
-- * 'cWorkflowType'
--
-- * 'cInitiatedEventId'
--
-- * 'cStartedEventId'
childWorkflowExecutionCanceledEventAttributes
    :: WorkflowExecution -- ^ 'cWorkflowExecution'
    -> WorkflowType -- ^ 'cWorkflowType'
    -> Integer -- ^ 'cInitiatedEventId'
    -> Integer -- ^ 'cStartedEventId'
    -> ChildWorkflowExecutionCanceledEventAttributes
childWorkflowExecutionCanceledEventAttributes pWorkflowExecution_ pWorkflowType_ pInitiatedEventId_ pStartedEventId_ =
    ChildWorkflowExecutionCanceledEventAttributes'
    { _cDetails = Nothing
    , _cWorkflowExecution = pWorkflowExecution_
    , _cWorkflowType = pWorkflowType_
    , _cInitiatedEventId = pInitiatedEventId_
    , _cStartedEventId = pStartedEventId_
    }

-- | Details of the cancellation (if provided).
cDetails :: Lens' ChildWorkflowExecutionCanceledEventAttributes (Maybe Text)
cDetails = lens _cDetails (\ s a -> s{_cDetails = a});

-- | The child workflow execution that was canceled.
cWorkflowExecution :: Lens' ChildWorkflowExecutionCanceledEventAttributes WorkflowExecution
cWorkflowExecution = lens _cWorkflowExecution (\ s a -> s{_cWorkflowExecution = a});

-- | The type of the child workflow execution.
cWorkflowType :: Lens' ChildWorkflowExecutionCanceledEventAttributes WorkflowType
cWorkflowType = lens _cWorkflowType (\ s a -> s{_cWorkflowType = a});

-- | The ID of the 'StartChildWorkflowExecutionInitiated' event corresponding
-- to the 'StartChildWorkflowExecution' decision to start this child
-- workflow execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
cInitiatedEventId :: Lens' ChildWorkflowExecutionCanceledEventAttributes Integer
cInitiatedEventId = lens _cInitiatedEventId (\ s a -> s{_cInitiatedEventId = a});

-- | The ID of the 'ChildWorkflowExecutionStarted' event recorded when this
-- child workflow execution was started. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
cStartedEventId :: Lens' ChildWorkflowExecutionCanceledEventAttributes Integer
cStartedEventId = lens _cStartedEventId (\ s a -> s{_cStartedEventId = a});

instance FromJSON
         ChildWorkflowExecutionCanceledEventAttributes where
        parseJSON
          = withObject
              "ChildWorkflowExecutionCanceledEventAttributes"
              (\ x ->
                 ChildWorkflowExecutionCanceledEventAttributes' <$>
                   (x .:? "details") <*> (x .: "workflowExecution") <*>
                     (x .: "workflowType")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details of the 'ChildWorkflowExecutionCompleted' event.
--
-- /See:/ 'childWorkflowExecutionCompletedEventAttributes' smart constructor.
data ChildWorkflowExecutionCompletedEventAttributes = ChildWorkflowExecutionCompletedEventAttributes'
    { _cweceaResult            :: !(Maybe Text)
    , _cweceaWorkflowExecution :: !WorkflowExecution
    , _cweceaWorkflowType      :: !WorkflowType
    , _cweceaInitiatedEventId  :: !Integer
    , _cweceaStartedEventId    :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildWorkflowExecutionCompletedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cweceaResult'
--
-- * 'cweceaWorkflowExecution'
--
-- * 'cweceaWorkflowType'
--
-- * 'cweceaInitiatedEventId'
--
-- * 'cweceaStartedEventId'
childWorkflowExecutionCompletedEventAttributes
    :: WorkflowExecution -- ^ 'cweceaWorkflowExecution'
    -> WorkflowType -- ^ 'cweceaWorkflowType'
    -> Integer -- ^ 'cweceaInitiatedEventId'
    -> Integer -- ^ 'cweceaStartedEventId'
    -> ChildWorkflowExecutionCompletedEventAttributes
childWorkflowExecutionCompletedEventAttributes pWorkflowExecution_ pWorkflowType_ pInitiatedEventId_ pStartedEventId_ =
    ChildWorkflowExecutionCompletedEventAttributes'
    { _cweceaResult = Nothing
    , _cweceaWorkflowExecution = pWorkflowExecution_
    , _cweceaWorkflowType = pWorkflowType_
    , _cweceaInitiatedEventId = pInitiatedEventId_
    , _cweceaStartedEventId = pStartedEventId_
    }

-- | The result of the child workflow execution (if any).
cweceaResult :: Lens' ChildWorkflowExecutionCompletedEventAttributes (Maybe Text)
cweceaResult = lens _cweceaResult (\ s a -> s{_cweceaResult = a});

-- | The child workflow execution that was completed.
cweceaWorkflowExecution :: Lens' ChildWorkflowExecutionCompletedEventAttributes WorkflowExecution
cweceaWorkflowExecution = lens _cweceaWorkflowExecution (\ s a -> s{_cweceaWorkflowExecution = a});

-- | The type of the child workflow execution.
cweceaWorkflowType :: Lens' ChildWorkflowExecutionCompletedEventAttributes WorkflowType
cweceaWorkflowType = lens _cweceaWorkflowType (\ s a -> s{_cweceaWorkflowType = a});

-- | The ID of the 'StartChildWorkflowExecutionInitiated' event corresponding
-- to the 'StartChildWorkflowExecution' decision to start this child
-- workflow execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
cweceaInitiatedEventId :: Lens' ChildWorkflowExecutionCompletedEventAttributes Integer
cweceaInitiatedEventId = lens _cweceaInitiatedEventId (\ s a -> s{_cweceaInitiatedEventId = a});

-- | The ID of the 'ChildWorkflowExecutionStarted' event recorded when this
-- child workflow execution was started. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
cweceaStartedEventId :: Lens' ChildWorkflowExecutionCompletedEventAttributes Integer
cweceaStartedEventId = lens _cweceaStartedEventId (\ s a -> s{_cweceaStartedEventId = a});

instance FromJSON
         ChildWorkflowExecutionCompletedEventAttributes where
        parseJSON
          = withObject
              "ChildWorkflowExecutionCompletedEventAttributes"
              (\ x ->
                 ChildWorkflowExecutionCompletedEventAttributes' <$>
                   (x .:? "result") <*> (x .: "workflowExecution") <*>
                     (x .: "workflowType")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details of the 'ChildWorkflowExecutionFailed' event.
--
-- /See:/ 'childWorkflowExecutionFailedEventAttributes' smart constructor.
data ChildWorkflowExecutionFailedEventAttributes = ChildWorkflowExecutionFailedEventAttributes'
    { _cwefeaReason            :: !(Maybe Text)
    , _cwefeaDetails           :: !(Maybe Text)
    , _cwefeaWorkflowExecution :: !WorkflowExecution
    , _cwefeaWorkflowType      :: !WorkflowType
    , _cwefeaInitiatedEventId  :: !Integer
    , _cwefeaStartedEventId    :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwefeaReason'
--
-- * 'cwefeaDetails'
--
-- * 'cwefeaWorkflowExecution'
--
-- * 'cwefeaWorkflowType'
--
-- * 'cwefeaInitiatedEventId'
--
-- * 'cwefeaStartedEventId'
childWorkflowExecutionFailedEventAttributes
    :: WorkflowExecution -- ^ 'cwefeaWorkflowExecution'
    -> WorkflowType -- ^ 'cwefeaWorkflowType'
    -> Integer -- ^ 'cwefeaInitiatedEventId'
    -> Integer -- ^ 'cwefeaStartedEventId'
    -> ChildWorkflowExecutionFailedEventAttributes
childWorkflowExecutionFailedEventAttributes pWorkflowExecution_ pWorkflowType_ pInitiatedEventId_ pStartedEventId_ =
    ChildWorkflowExecutionFailedEventAttributes'
    { _cwefeaReason = Nothing
    , _cwefeaDetails = Nothing
    , _cwefeaWorkflowExecution = pWorkflowExecution_
    , _cwefeaWorkflowType = pWorkflowType_
    , _cwefeaInitiatedEventId = pInitiatedEventId_
    , _cwefeaStartedEventId = pStartedEventId_
    }

-- | The reason for the failure (if provided).
cwefeaReason :: Lens' ChildWorkflowExecutionFailedEventAttributes (Maybe Text)
cwefeaReason = lens _cwefeaReason (\ s a -> s{_cwefeaReason = a});

-- | The details of the failure (if provided).
cwefeaDetails :: Lens' ChildWorkflowExecutionFailedEventAttributes (Maybe Text)
cwefeaDetails = lens _cwefeaDetails (\ s a -> s{_cwefeaDetails = a});

-- | The child workflow execution that failed.
cwefeaWorkflowExecution :: Lens' ChildWorkflowExecutionFailedEventAttributes WorkflowExecution
cwefeaWorkflowExecution = lens _cwefeaWorkflowExecution (\ s a -> s{_cwefeaWorkflowExecution = a});

-- | The type of the child workflow execution.
cwefeaWorkflowType :: Lens' ChildWorkflowExecutionFailedEventAttributes WorkflowType
cwefeaWorkflowType = lens _cwefeaWorkflowType (\ s a -> s{_cwefeaWorkflowType = a});

-- | The ID of the 'StartChildWorkflowExecutionInitiated' event corresponding
-- to the 'StartChildWorkflowExecution' decision to start this child
-- workflow execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
cwefeaInitiatedEventId :: Lens' ChildWorkflowExecutionFailedEventAttributes Integer
cwefeaInitiatedEventId = lens _cwefeaInitiatedEventId (\ s a -> s{_cwefeaInitiatedEventId = a});

-- | The ID of the 'ChildWorkflowExecutionStarted' event recorded when this
-- child workflow execution was started. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
cwefeaStartedEventId :: Lens' ChildWorkflowExecutionFailedEventAttributes Integer
cwefeaStartedEventId = lens _cwefeaStartedEventId (\ s a -> s{_cwefeaStartedEventId = a});

instance FromJSON
         ChildWorkflowExecutionFailedEventAttributes where
        parseJSON
          = withObject
              "ChildWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 ChildWorkflowExecutionFailedEventAttributes' <$>
                   (x .:? "reason") <*> (x .:? "details") <*>
                     (x .: "workflowExecution")
                     <*> (x .: "workflowType")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details of the 'ChildWorkflowExecutionStarted' event.
--
-- /See:/ 'childWorkflowExecutionStartedEventAttributes' smart constructor.
data ChildWorkflowExecutionStartedEventAttributes = ChildWorkflowExecutionStartedEventAttributes'
    { _cweseaWorkflowExecution :: !WorkflowExecution
    , _cweseaWorkflowType      :: !WorkflowType
    , _cweseaInitiatedEventId  :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildWorkflowExecutionStartedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cweseaWorkflowExecution'
--
-- * 'cweseaWorkflowType'
--
-- * 'cweseaInitiatedEventId'
childWorkflowExecutionStartedEventAttributes
    :: WorkflowExecution -- ^ 'cweseaWorkflowExecution'
    -> WorkflowType -- ^ 'cweseaWorkflowType'
    -> Integer -- ^ 'cweseaInitiatedEventId'
    -> ChildWorkflowExecutionStartedEventAttributes
childWorkflowExecutionStartedEventAttributes pWorkflowExecution_ pWorkflowType_ pInitiatedEventId_ =
    ChildWorkflowExecutionStartedEventAttributes'
    { _cweseaWorkflowExecution = pWorkflowExecution_
    , _cweseaWorkflowType = pWorkflowType_
    , _cweseaInitiatedEventId = pInitiatedEventId_
    }

-- | The child workflow execution that was started.
cweseaWorkflowExecution :: Lens' ChildWorkflowExecutionStartedEventAttributes WorkflowExecution
cweseaWorkflowExecution = lens _cweseaWorkflowExecution (\ s a -> s{_cweseaWorkflowExecution = a});

-- | The type of the child workflow execution.
cweseaWorkflowType :: Lens' ChildWorkflowExecutionStartedEventAttributes WorkflowType
cweseaWorkflowType = lens _cweseaWorkflowType (\ s a -> s{_cweseaWorkflowType = a});

-- | The ID of the 'StartChildWorkflowExecutionInitiated' event corresponding
-- to the 'StartChildWorkflowExecution' decision to start this child
-- workflow execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
cweseaInitiatedEventId :: Lens' ChildWorkflowExecutionStartedEventAttributes Integer
cweseaInitiatedEventId = lens _cweseaInitiatedEventId (\ s a -> s{_cweseaInitiatedEventId = a});

instance FromJSON
         ChildWorkflowExecutionStartedEventAttributes where
        parseJSON
          = withObject
              "ChildWorkflowExecutionStartedEventAttributes"
              (\ x ->
                 ChildWorkflowExecutionStartedEventAttributes' <$>
                   (x .: "workflowExecution") <*> (x .: "workflowType")
                     <*> (x .: "initiatedEventId"))

-- | Provides details of the 'ChildWorkflowExecutionTerminated' event.
--
-- /See:/ 'childWorkflowExecutionTerminatedEventAttributes' smart constructor.
data ChildWorkflowExecutionTerminatedEventAttributes = ChildWorkflowExecutionTerminatedEventAttributes'
    { _cweteaWorkflowExecution :: !WorkflowExecution
    , _cweteaWorkflowType      :: !WorkflowType
    , _cweteaInitiatedEventId  :: !Integer
    , _cweteaStartedEventId    :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildWorkflowExecutionTerminatedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cweteaWorkflowExecution'
--
-- * 'cweteaWorkflowType'
--
-- * 'cweteaInitiatedEventId'
--
-- * 'cweteaStartedEventId'
childWorkflowExecutionTerminatedEventAttributes
    :: WorkflowExecution -- ^ 'cweteaWorkflowExecution'
    -> WorkflowType -- ^ 'cweteaWorkflowType'
    -> Integer -- ^ 'cweteaInitiatedEventId'
    -> Integer -- ^ 'cweteaStartedEventId'
    -> ChildWorkflowExecutionTerminatedEventAttributes
childWorkflowExecutionTerminatedEventAttributes pWorkflowExecution_ pWorkflowType_ pInitiatedEventId_ pStartedEventId_ =
    ChildWorkflowExecutionTerminatedEventAttributes'
    { _cweteaWorkflowExecution = pWorkflowExecution_
    , _cweteaWorkflowType = pWorkflowType_
    , _cweteaInitiatedEventId = pInitiatedEventId_
    , _cweteaStartedEventId = pStartedEventId_
    }

-- | The child workflow execution that was terminated.
cweteaWorkflowExecution :: Lens' ChildWorkflowExecutionTerminatedEventAttributes WorkflowExecution
cweteaWorkflowExecution = lens _cweteaWorkflowExecution (\ s a -> s{_cweteaWorkflowExecution = a});

-- | The type of the child workflow execution.
cweteaWorkflowType :: Lens' ChildWorkflowExecutionTerminatedEventAttributes WorkflowType
cweteaWorkflowType = lens _cweteaWorkflowType (\ s a -> s{_cweteaWorkflowType = a});

-- | The ID of the 'StartChildWorkflowExecutionInitiated' event corresponding
-- to the 'StartChildWorkflowExecution' decision to start this child
-- workflow execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
cweteaInitiatedEventId :: Lens' ChildWorkflowExecutionTerminatedEventAttributes Integer
cweteaInitiatedEventId = lens _cweteaInitiatedEventId (\ s a -> s{_cweteaInitiatedEventId = a});

-- | The ID of the 'ChildWorkflowExecutionStarted' event recorded when this
-- child workflow execution was started. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
cweteaStartedEventId :: Lens' ChildWorkflowExecutionTerminatedEventAttributes Integer
cweteaStartedEventId = lens _cweteaStartedEventId (\ s a -> s{_cweteaStartedEventId = a});

instance FromJSON
         ChildWorkflowExecutionTerminatedEventAttributes where
        parseJSON
          = withObject
              "ChildWorkflowExecutionTerminatedEventAttributes"
              (\ x ->
                 ChildWorkflowExecutionTerminatedEventAttributes' <$>
                   (x .: "workflowExecution") <*> (x .: "workflowType")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details of the 'ChildWorkflowExecutionTimedOut' event.
--
-- /See:/ 'childWorkflowExecutionTimedOutEventAttributes' smart constructor.
data ChildWorkflowExecutionTimedOutEventAttributes = ChildWorkflowExecutionTimedOutEventAttributes'
    { _cwetoeaWorkflowExecution :: !WorkflowExecution
    , _cwetoeaWorkflowType      :: !WorkflowType
    , _cwetoeaTimeoutType       :: !WorkflowExecutionTimeoutType
    , _cwetoeaInitiatedEventId  :: !Integer
    , _cwetoeaStartedEventId    :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildWorkflowExecutionTimedOutEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwetoeaWorkflowExecution'
--
-- * 'cwetoeaWorkflowType'
--
-- * 'cwetoeaTimeoutType'
--
-- * 'cwetoeaInitiatedEventId'
--
-- * 'cwetoeaStartedEventId'
childWorkflowExecutionTimedOutEventAttributes
    :: WorkflowExecution -- ^ 'cwetoeaWorkflowExecution'
    -> WorkflowType -- ^ 'cwetoeaWorkflowType'
    -> WorkflowExecutionTimeoutType -- ^ 'cwetoeaTimeoutType'
    -> Integer -- ^ 'cwetoeaInitiatedEventId'
    -> Integer -- ^ 'cwetoeaStartedEventId'
    -> ChildWorkflowExecutionTimedOutEventAttributes
childWorkflowExecutionTimedOutEventAttributes pWorkflowExecution_ pWorkflowType_ pTimeoutType_ pInitiatedEventId_ pStartedEventId_ =
    ChildWorkflowExecutionTimedOutEventAttributes'
    { _cwetoeaWorkflowExecution = pWorkflowExecution_
    , _cwetoeaWorkflowType = pWorkflowType_
    , _cwetoeaTimeoutType = pTimeoutType_
    , _cwetoeaInitiatedEventId = pInitiatedEventId_
    , _cwetoeaStartedEventId = pStartedEventId_
    }

-- | The child workflow execution that timed out.
cwetoeaWorkflowExecution :: Lens' ChildWorkflowExecutionTimedOutEventAttributes WorkflowExecution
cwetoeaWorkflowExecution = lens _cwetoeaWorkflowExecution (\ s a -> s{_cwetoeaWorkflowExecution = a});

-- | The type of the child workflow execution.
cwetoeaWorkflowType :: Lens' ChildWorkflowExecutionTimedOutEventAttributes WorkflowType
cwetoeaWorkflowType = lens _cwetoeaWorkflowType (\ s a -> s{_cwetoeaWorkflowType = a});

-- | The type of the timeout that caused the child workflow execution to time
-- out.
cwetoeaTimeoutType :: Lens' ChildWorkflowExecutionTimedOutEventAttributes WorkflowExecutionTimeoutType
cwetoeaTimeoutType = lens _cwetoeaTimeoutType (\ s a -> s{_cwetoeaTimeoutType = a});

-- | The ID of the 'StartChildWorkflowExecutionInitiated' event corresponding
-- to the 'StartChildWorkflowExecution' decision to start this child
-- workflow execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
cwetoeaInitiatedEventId :: Lens' ChildWorkflowExecutionTimedOutEventAttributes Integer
cwetoeaInitiatedEventId = lens _cwetoeaInitiatedEventId (\ s a -> s{_cwetoeaInitiatedEventId = a});

-- | The ID of the 'ChildWorkflowExecutionStarted' event recorded when this
-- child workflow execution was started. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
cwetoeaStartedEventId :: Lens' ChildWorkflowExecutionTimedOutEventAttributes Integer
cwetoeaStartedEventId = lens _cwetoeaStartedEventId (\ s a -> s{_cwetoeaStartedEventId = a});

instance FromJSON
         ChildWorkflowExecutionTimedOutEventAttributes where
        parseJSON
          = withObject
              "ChildWorkflowExecutionTimedOutEventAttributes"
              (\ x ->
                 ChildWorkflowExecutionTimedOutEventAttributes' <$>
                   (x .: "workflowExecution") <*> (x .: "workflowType")
                     <*> (x .: "timeoutType")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "startedEventId"))

-- | Used to filter the closed workflow executions in visibility APIs by
-- their close status.
--
-- /See:/ 'closeStatusFilter' smart constructor.
newtype CloseStatusFilter = CloseStatusFilter'
    { _csfStatus :: CloseStatus
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloseStatusFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csfStatus'
closeStatusFilter
    :: CloseStatus -- ^ 'csfStatus'
    -> CloseStatusFilter
closeStatusFilter pStatus_ =
    CloseStatusFilter'
    { _csfStatus = pStatus_
    }

-- | __Required.__ The close status that must match the close status of an
-- execution for it to meet the criteria of this filter.
csfStatus :: Lens' CloseStatusFilter CloseStatus
csfStatus = lens _csfStatus (\ s a -> s{_csfStatus = a});

instance ToJSON CloseStatusFilter where
        toJSON CloseStatusFilter'{..}
          = object ["status" .= _csfStatus]

-- | Provides details of the 'CompleteWorkflowExecution' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'completeWorkflowExecutionDecisionAttributes' smart constructor.
newtype CompleteWorkflowExecutionDecisionAttributes = CompleteWorkflowExecutionDecisionAttributes'
    { _cwedaResult :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompleteWorkflowExecutionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwedaResult'
completeWorkflowExecutionDecisionAttributes
    :: CompleteWorkflowExecutionDecisionAttributes
completeWorkflowExecutionDecisionAttributes =
    CompleteWorkflowExecutionDecisionAttributes'
    { _cwedaResult = Nothing
    }

-- | The result of the workflow execution. The form of the result is
-- implementation defined.
cwedaResult :: Lens' CompleteWorkflowExecutionDecisionAttributes (Maybe Text)
cwedaResult = lens _cwedaResult (\ s a -> s{_cwedaResult = a});

instance ToJSON
         CompleteWorkflowExecutionDecisionAttributes where
        toJSON
          CompleteWorkflowExecutionDecisionAttributes'{..}
          = object ["result" .= _cwedaResult]

-- | Provides details of the 'CompleteWorkflowExecutionFailed' event.
--
-- /See:/ 'completeWorkflowExecutionFailedEventAttributes' smart constructor.
data CompleteWorkflowExecutionFailedEventAttributes = CompleteWorkflowExecutionFailedEventAttributes'
    { _cwefeaCause                        :: !CompleteWorkflowExecutionFailedCause
    , _cwefeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompleteWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwefeaCause'
--
-- * 'cwefeaDecisionTaskCompletedEventId'
completeWorkflowExecutionFailedEventAttributes
    :: CompleteWorkflowExecutionFailedCause -- ^ 'cwefeaCause'
    -> Integer -- ^ 'cwefeaDecisionTaskCompletedEventId'
    -> CompleteWorkflowExecutionFailedEventAttributes
completeWorkflowExecutionFailedEventAttributes pCause_ pDecisionTaskCompletedEventId_ =
    CompleteWorkflowExecutionFailedEventAttributes'
    { _cwefeaCause = pCause_
    , _cwefeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
cwefeaCause :: Lens' CompleteWorkflowExecutionFailedEventAttributes CompleteWorkflowExecutionFailedCause
cwefeaCause = lens _cwefeaCause (\ s a -> s{_cwefeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'CompleteWorkflowExecution' decision
-- to complete this execution. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
cwefeaDecisionTaskCompletedEventId :: Lens' CompleteWorkflowExecutionFailedEventAttributes Integer
cwefeaDecisionTaskCompletedEventId = lens _cwefeaDecisionTaskCompletedEventId (\ s a -> s{_cwefeaDecisionTaskCompletedEventId = a});

instance FromJSON
         CompleteWorkflowExecutionFailedEventAttributes where
        parseJSON
          = withObject
              "CompleteWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 CompleteWorkflowExecutionFailedEventAttributes' <$>
                   (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'ContinueAsNewWorkflowExecution' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   Constrain the following parameters by using a 'Condition' element
--     with the appropriate keys.
--     -   'tag': /Optional./. A tag used to identify the workflow
--         execution
--     -   'taskList': String constraint. The key is 'swf:taskList.name'.
--     -   'workflowType.version': String constraint. The key is
--         'swf:workflowType.version'.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'continueAsNewWorkflowExecutionDecisionAttributes' smart constructor.
data ContinueAsNewWorkflowExecutionDecisionAttributes = ContinueAsNewWorkflowExecutionDecisionAttributes'
    { _canwedaTagList                      :: !(Maybe [Text])
    , _canwedaTaskStartToCloseTimeout      :: !(Maybe Text)
    , _canwedaLambdaRole                   :: !(Maybe Text)
    , _canwedaInput                        :: !(Maybe Text)
    , _canwedaWorkflowTypeVersion          :: !(Maybe Text)
    , _canwedaExecutionStartToCloseTimeout :: !(Maybe Text)
    , _canwedaTaskList                     :: !(Maybe TaskList)
    , _canwedaTaskPriority                 :: !(Maybe Text)
    , _canwedaChildPolicy                  :: !(Maybe ChildPolicy)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContinueAsNewWorkflowExecutionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'canwedaTagList'
--
-- * 'canwedaTaskStartToCloseTimeout'
--
-- * 'canwedaLambdaRole'
--
-- * 'canwedaInput'
--
-- * 'canwedaWorkflowTypeVersion'
--
-- * 'canwedaExecutionStartToCloseTimeout'
--
-- * 'canwedaTaskList'
--
-- * 'canwedaTaskPriority'
--
-- * 'canwedaChildPolicy'
continueAsNewWorkflowExecutionDecisionAttributes
    :: ContinueAsNewWorkflowExecutionDecisionAttributes
continueAsNewWorkflowExecutionDecisionAttributes =
    ContinueAsNewWorkflowExecutionDecisionAttributes'
    { _canwedaTagList = Nothing
    , _canwedaTaskStartToCloseTimeout = Nothing
    , _canwedaLambdaRole = Nothing
    , _canwedaInput = Nothing
    , _canwedaWorkflowTypeVersion = Nothing
    , _canwedaExecutionStartToCloseTimeout = Nothing
    , _canwedaTaskList = Nothing
    , _canwedaTaskPriority = Nothing
    , _canwedaChildPolicy = Nothing
    }

-- | The list of tags to associate with the new workflow execution. A maximum
-- of 5 tags can be specified. You can list workflow executions with a
-- specific tag by calling ListOpenWorkflowExecutions or
-- ListClosedWorkflowExecutions and specifying a TagFilter.
canwedaTagList :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes [Text]
canwedaTagList = lens _canwedaTagList (\ s a -> s{_canwedaTagList = a}) . _Default . _Coerce;

-- | Specifies the maximum duration of decision tasks for the new workflow
-- execution. This parameter overrides the 'defaultTaskStartToCloseTimout'
-- specified when registering the workflow type using RegisterWorkflowType.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
--
-- A task start-to-close timeout for the new workflow execution must be
-- specified either as a default for the workflow type or through this
-- parameter. If neither this parameter is set nor a default task
-- start-to-close timeout was specified at registration time then a fault
-- will be returned.
canwedaTaskStartToCloseTimeout :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes (Maybe Text)
canwedaTaskStartToCloseTimeout = lens _canwedaTaskStartToCloseTimeout (\ s a -> s{_canwedaTaskStartToCloseTimeout = a});

-- | The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda
-- functions.
--
-- In order for this workflow execution to invoke AWS Lambda functions, an
-- appropriate IAM role must be specified either as a default for the
-- workflow type or through this field.
canwedaLambdaRole :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes (Maybe Text)
canwedaLambdaRole = lens _canwedaLambdaRole (\ s a -> s{_canwedaLambdaRole = a});

-- | The input provided to the new workflow execution.
canwedaInput :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes (Maybe Text)
canwedaInput = lens _canwedaInput (\ s a -> s{_canwedaInput = a});

-- | Undocumented member.
canwedaWorkflowTypeVersion :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes (Maybe Text)
canwedaWorkflowTypeVersion = lens _canwedaWorkflowTypeVersion (\ s a -> s{_canwedaWorkflowTypeVersion = a});

-- | If set, specifies the total duration for this workflow execution. This
-- overrides the 'defaultExecutionStartToCloseTimeout' specified when
-- registering the workflow type.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
--
-- An execution start-to-close timeout for this workflow execution must be
-- specified either as a default for the workflow type or through this
-- field. If neither this field is set nor a default execution
-- start-to-close timeout was specified at registration time then a fault
-- will be returned.
canwedaExecutionStartToCloseTimeout :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes (Maybe Text)
canwedaExecutionStartToCloseTimeout = lens _canwedaExecutionStartToCloseTimeout (\ s a -> s{_canwedaExecutionStartToCloseTimeout = a});

-- | Undocumented member.
canwedaTaskList :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes (Maybe TaskList)
canwedaTaskList = lens _canwedaTaskList (\ s a -> s{_canwedaTaskList = a});

-- | /Optional./ The task priority that, if set, specifies the priority for
-- the decision tasks for this workflow execution. This overrides the
-- defaultTaskPriority specified when registering the workflow type. Valid
-- values are integers that range from Java\'s 'Integer.MIN_VALUE'
-- (-2147483648) to 'Integer.MAX_VALUE' (2147483647). Higher numbers
-- indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
canwedaTaskPriority :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes (Maybe Text)
canwedaTaskPriority = lens _canwedaTaskPriority (\ s a -> s{_canwedaTaskPriority = a});

-- | If set, specifies the policy to use for the child workflow executions of
-- the new execution if it is terminated by calling the
-- TerminateWorkflowExecution action explicitly or due to an expired
-- timeout. This policy overrides the default child policy specified when
-- registering the workflow type using RegisterWorkflowType.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
--
-- A child policy for this workflow execution must be specified either as a
-- default for the workflow type or through this parameter. If neither this
-- parameter is set nor a default child policy was specified at
-- registration time then a fault will be returned.
canwedaChildPolicy :: Lens' ContinueAsNewWorkflowExecutionDecisionAttributes (Maybe ChildPolicy)
canwedaChildPolicy = lens _canwedaChildPolicy (\ s a -> s{_canwedaChildPolicy = a});

instance ToJSON
         ContinueAsNewWorkflowExecutionDecisionAttributes
         where
        toJSON
          ContinueAsNewWorkflowExecutionDecisionAttributes'{..}
          = object
              ["tagList" .= _canwedaTagList,
               "taskStartToCloseTimeout" .=
                 _canwedaTaskStartToCloseTimeout,
               "lambdaRole" .= _canwedaLambdaRole,
               "input" .= _canwedaInput,
               "workflowTypeVersion" .= _canwedaWorkflowTypeVersion,
               "executionStartToCloseTimeout" .=
                 _canwedaExecutionStartToCloseTimeout,
               "taskList" .= _canwedaTaskList,
               "taskPriority" .= _canwedaTaskPriority,
               "childPolicy" .= _canwedaChildPolicy]

-- | Provides details of the 'ContinueAsNewWorkflowExecutionFailed' event.
--
-- /See:/ 'continueAsNewWorkflowExecutionFailedEventAttributes' smart constructor.
data ContinueAsNewWorkflowExecutionFailedEventAttributes = ContinueAsNewWorkflowExecutionFailedEventAttributes'
    { _canwefeaCause                        :: !ContinueAsNewWorkflowExecutionFailedCause
    , _canwefeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContinueAsNewWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'canwefeaCause'
--
-- * 'canwefeaDecisionTaskCompletedEventId'
continueAsNewWorkflowExecutionFailedEventAttributes
    :: ContinueAsNewWorkflowExecutionFailedCause -- ^ 'canwefeaCause'
    -> Integer -- ^ 'canwefeaDecisionTaskCompletedEventId'
    -> ContinueAsNewWorkflowExecutionFailedEventAttributes
continueAsNewWorkflowExecutionFailedEventAttributes pCause_ pDecisionTaskCompletedEventId_ =
    ContinueAsNewWorkflowExecutionFailedEventAttributes'
    { _canwefeaCause = pCause_
    , _canwefeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
canwefeaCause :: Lens' ContinueAsNewWorkflowExecutionFailedEventAttributes ContinueAsNewWorkflowExecutionFailedCause
canwefeaCause = lens _canwefeaCause (\ s a -> s{_canwefeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'ContinueAsNewWorkflowExecution'
-- decision that started this execution. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
canwefeaDecisionTaskCompletedEventId :: Lens' ContinueAsNewWorkflowExecutionFailedEventAttributes Integer
canwefeaDecisionTaskCompletedEventId = lens _canwefeaDecisionTaskCompletedEventId (\ s a -> s{_canwefeaDecisionTaskCompletedEventId = a});

instance FromJSON
         ContinueAsNewWorkflowExecutionFailedEventAttributes
         where
        parseJSON
          = withObject
              "ContinueAsNewWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 ContinueAsNewWorkflowExecutionFailedEventAttributes'
                   <$>
                   (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Specifies a decision made by the decider. A decision can be one of these
-- types:
--
-- -   __CancelTimer__: cancels a previously started timer and records a
--     'TimerCanceled' event in the history.
-- -   __CancelWorkflowExecution__: closes the workflow execution and
--     records a 'WorkflowExecutionCanceled' event in the history.
-- -   __CompleteWorkflowExecution__: closes the workflow execution and
--     records a 'WorkflowExecutionCompleted' event in the history .
-- -   __ContinueAsNewWorkflowExecution__: closes the workflow execution
--     and starts a new workflow execution of the same type using the same
--     workflow ID and a unique run ID. A 'WorkflowExecutionContinuedAsNew'
--     event is recorded in the history.
-- -   __FailWorkflowExecution__: closes the workflow execution and records
--     a 'WorkflowExecutionFailed' event in the history.
-- -   __RecordMarker__: records a 'MarkerRecorded' event in the history.
--     Markers can be used for adding custom information in the history for
--     instance to let deciders know that they do not need to look at the
--     history beyond the marker event.
-- -   __RequestCancelActivityTask__: attempts to cancel a previously
--     scheduled activity task. If the activity task was scheduled but has
--     not been assigned to a worker, then it will be canceled. If the
--     activity task was already assigned to a worker, then the worker will
--     be informed that cancellation has been requested in the response to
--     RecordActivityTaskHeartbeat.
-- -   __RequestCancelExternalWorkflowExecution__: requests that a request
--     be made to cancel the specified external workflow execution and
--     records a 'RequestCancelExternalWorkflowExecutionInitiated' event in
--     the history.
-- -   __ScheduleActivityTask__: schedules an activity task.
-- -   __ScheduleLambdaFunction__: schedules a AWS Lambda function.
-- -   __SignalExternalWorkflowExecution__: requests a signal to be
--     delivered to the specified external workflow execution and records a
--     'SignalExternalWorkflowExecutionInitiated' event in the history.
-- -   __StartChildWorkflowExecution__: requests that a child workflow
--     execution be started and records a
--     'StartChildWorkflowExecutionInitiated' event in the history. The
--     child workflow execution is a separate workflow execution with its
--     own history.
-- -   __StartTimer__: starts a timer for this workflow execution and
--     records a 'TimerStarted' event in the history. This timer will fire
--     after the specified delay and record a 'TimerFired' event.
--
-- __Access Control__
--
-- If you grant permission to use 'RespondDecisionTaskCompleted', you can
-- use IAM policies to express permissions for the list of decisions
-- returned by this action as if they were members of the API. Treating
-- decisions as a pseudo API maintains a uniform conceptual model and helps
-- keep policies readable. For details and example IAM policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- __Decision Failure__
--
-- Decisions can fail for several reasons
--
-- -   The ordering of decisions should follow a logical flow. Some
--     decisions might not make sense in the current context of the
--     workflow execution and will therefore fail.
-- -   A limit on your account was reached.
-- -   The decision lacks sufficient permissions.
--
-- One of the following events might be added to the history to indicate an
-- error. The event attribute\'s __cause__ parameter indicates the cause.
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- -   __ScheduleActivityTaskFailed__: a ScheduleActivityTask decision
--     failed. This could happen if the activity type specified in the
--     decision is not registered, is in a deprecated state, or the
--     decision is not properly configured.
-- -   __ScheduleLambdaFunctionFailed__: a ScheduleLambdaFunctionFailed
--     decision failed. This could happen if the AWS Lambda function
--     specified in the decision does not exist, or the AWS Lambda
--     service\'s limits are exceeded.
-- -   __RequestCancelActivityTaskFailed__: a RequestCancelActivityTask
--     decision failed. This could happen if there is no open activity task
--     with the specified activityId.
-- -   __StartTimerFailed__: a StartTimer decision failed. This could
--     happen if there is another open timer with the same timerId.
-- -   __CancelTimerFailed__: a CancelTimer decision failed. This could
--     happen if there is no open timer with the specified timerId.
-- -   __StartChildWorkflowExecutionFailed__: a StartChildWorkflowExecution
--     decision failed. This could happen if the workflow type specified is
--     not registered, is deprecated, or the decision is not properly
--     configured.
-- -   __SignalExternalWorkflowExecutionFailed__: a
--     SignalExternalWorkflowExecution decision failed. This could happen
--     if the 'workflowID' specified in the decision was incorrect.
-- -   __RequestCancelExternalWorkflowExecutionFailed__: a
--     RequestCancelExternalWorkflowExecution decision failed. This could
--     happen if the 'workflowID' specified in the decision was incorrect.
-- -   __CancelWorkflowExecutionFailed__: a CancelWorkflowExecution
--     decision failed. This could happen if there is an unhandled decision
--     task pending in the workflow execution.
-- -   __CompleteWorkflowExecutionFailed__: a CompleteWorkflowExecution
--     decision failed. This could happen if there is an unhandled decision
--     task pending in the workflow execution.
-- -   __ContinueAsNewWorkflowExecutionFailed__: a
--     ContinueAsNewWorkflowExecution decision failed. This could happen if
--     there is an unhandled decision task pending in the workflow
--     execution or the ContinueAsNewWorkflowExecution decision was not
--     configured correctly.
-- -   __FailWorkflowExecutionFailed__: a FailWorkflowExecution decision
--     failed. This could happen if there is an unhandled decision task
--     pending in the workflow execution.
--
-- The preceding error events might occur due to an error in the decider
-- logic, which might put the workflow execution in an unstable state The
-- cause field in the event structure for the error event indicates the
-- cause of the error.
--
-- A workflow execution may be closed by the decider by returning one of
-- the following decisions when completing a decision task:
-- 'CompleteWorkflowExecution', 'FailWorkflowExecution',
-- 'CancelWorkflowExecution' and 'ContinueAsNewWorkflowExecution'. An
-- UnhandledDecision fault will be returned if a workflow closing decision
-- is specified and a signal or activity event had been added to the
-- history while the decision task was being performed by the decider.
-- Unlike the above situations which are logic issues, this fault is always
-- possible because of race conditions in a distributed system. The right
-- action here is to call RespondDecisionTaskCompleted without any
-- decisions. This would result in another decision task with these new
-- events included in the history. The decider should handle the new events
-- and may decide to close the workflow execution.
--
-- __How to code a decision__
--
-- You code a decision by first setting the decision type field to one of
-- the above decision values, and then set the corresponding attributes
-- field shown below:
--
-- -   ScheduleActivityTaskDecisionAttributes
-- -   ScheduleLambdaFunctionDecisionAttributes
-- -   RequestCancelActivityTaskDecisionAttributes
-- -   CompleteWorkflowExecutionDecisionAttributes
-- -   FailWorkflowExecutionDecisionAttributes
-- -   CancelWorkflowExecutionDecisionAttributes
-- -   ContinueAsNewWorkflowExecutionDecisionAttributes
-- -   RecordMarkerDecisionAttributes
-- -   StartTimerDecisionAttributes
-- -   CancelTimerDecisionAttributes
-- -   SignalExternalWorkflowExecutionDecisionAttributes
-- -   RequestCancelExternalWorkflowExecutionDecisionAttributes
-- -   StartChildWorkflowExecutionDecisionAttributes
--
-- /See:/ 'decision' smart constructor.
data Decision = Decision'
    { _dRequestCancelExternalWorkflowExecutionDecisionAttributes :: !(Maybe RequestCancelExternalWorkflowExecutionDecisionAttributes)
    , _dScheduleActivityTaskDecisionAttributes                   :: !(Maybe ScheduleActivityTaskDecisionAttributes)
    , _dSignalExternalWorkflowExecutionDecisionAttributes        :: !(Maybe SignalExternalWorkflowExecutionDecisionAttributes)
    , _dStartTimerDecisionAttributes                             :: !(Maybe StartTimerDecisionAttributes)
    , _dRecordMarkerDecisionAttributes                           :: !(Maybe RecordMarkerDecisionAttributes)
    , _dFailWorkflowExecutionDecisionAttributes                  :: !(Maybe FailWorkflowExecutionDecisionAttributes)
    , _dStartChildWorkflowExecutionDecisionAttributes            :: !(Maybe StartChildWorkflowExecutionDecisionAttributes)
    , _dScheduleLambdaFunctionDecisionAttributes                 :: !(Maybe ScheduleLambdaFunctionDecisionAttributes)
    , _dCompleteWorkflowExecutionDecisionAttributes              :: !(Maybe CompleteWorkflowExecutionDecisionAttributes)
    , _dRequestCancelActivityTaskDecisionAttributes              :: !(Maybe RequestCancelActivityTaskDecisionAttributes)
    , _dCancelWorkflowExecutionDecisionAttributes                :: !(Maybe CancelWorkflowExecutionDecisionAttributes)
    , _dCancelTimerDecisionAttributes                            :: !(Maybe CancelTimerDecisionAttributes)
    , _dContinueAsNewWorkflowExecutionDecisionAttributes         :: !(Maybe ContinueAsNewWorkflowExecutionDecisionAttributes)
    , _dDecisionType                                             :: !DecisionType
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Decision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dRequestCancelExternalWorkflowExecutionDecisionAttributes'
--
-- * 'dScheduleActivityTaskDecisionAttributes'
--
-- * 'dSignalExternalWorkflowExecutionDecisionAttributes'
--
-- * 'dStartTimerDecisionAttributes'
--
-- * 'dRecordMarkerDecisionAttributes'
--
-- * 'dFailWorkflowExecutionDecisionAttributes'
--
-- * 'dStartChildWorkflowExecutionDecisionAttributes'
--
-- * 'dScheduleLambdaFunctionDecisionAttributes'
--
-- * 'dCompleteWorkflowExecutionDecisionAttributes'
--
-- * 'dRequestCancelActivityTaskDecisionAttributes'
--
-- * 'dCancelWorkflowExecutionDecisionAttributes'
--
-- * 'dCancelTimerDecisionAttributes'
--
-- * 'dContinueAsNewWorkflowExecutionDecisionAttributes'
--
-- * 'dDecisionType'
decision
    :: DecisionType -- ^ 'dDecisionType'
    -> Decision
decision pDecisionType_ =
    Decision'
    { _dRequestCancelExternalWorkflowExecutionDecisionAttributes = Nothing
    , _dScheduleActivityTaskDecisionAttributes = Nothing
    , _dSignalExternalWorkflowExecutionDecisionAttributes = Nothing
    , _dStartTimerDecisionAttributes = Nothing
    , _dRecordMarkerDecisionAttributes = Nothing
    , _dFailWorkflowExecutionDecisionAttributes = Nothing
    , _dStartChildWorkflowExecutionDecisionAttributes = Nothing
    , _dScheduleLambdaFunctionDecisionAttributes = Nothing
    , _dCompleteWorkflowExecutionDecisionAttributes = Nothing
    , _dRequestCancelActivityTaskDecisionAttributes = Nothing
    , _dCancelWorkflowExecutionDecisionAttributes = Nothing
    , _dCancelTimerDecisionAttributes = Nothing
    , _dContinueAsNewWorkflowExecutionDecisionAttributes = Nothing
    , _dDecisionType = pDecisionType_
    }

-- | Provides details of the 'RequestCancelExternalWorkflowExecution'
-- decision. It is not set for other decision types.
dRequestCancelExternalWorkflowExecutionDecisionAttributes :: Lens' Decision (Maybe RequestCancelExternalWorkflowExecutionDecisionAttributes)
dRequestCancelExternalWorkflowExecutionDecisionAttributes = lens _dRequestCancelExternalWorkflowExecutionDecisionAttributes (\ s a -> s{_dRequestCancelExternalWorkflowExecutionDecisionAttributes = a});

-- | Provides details of the 'ScheduleActivityTask' decision. It is not set
-- for other decision types.
dScheduleActivityTaskDecisionAttributes :: Lens' Decision (Maybe ScheduleActivityTaskDecisionAttributes)
dScheduleActivityTaskDecisionAttributes = lens _dScheduleActivityTaskDecisionAttributes (\ s a -> s{_dScheduleActivityTaskDecisionAttributes = a});

-- | Provides details of the 'SignalExternalWorkflowExecution' decision. It
-- is not set for other decision types.
dSignalExternalWorkflowExecutionDecisionAttributes :: Lens' Decision (Maybe SignalExternalWorkflowExecutionDecisionAttributes)
dSignalExternalWorkflowExecutionDecisionAttributes = lens _dSignalExternalWorkflowExecutionDecisionAttributes (\ s a -> s{_dSignalExternalWorkflowExecutionDecisionAttributes = a});

-- | Provides details of the 'StartTimer' decision. It is not set for other
-- decision types.
dStartTimerDecisionAttributes :: Lens' Decision (Maybe StartTimerDecisionAttributes)
dStartTimerDecisionAttributes = lens _dStartTimerDecisionAttributes (\ s a -> s{_dStartTimerDecisionAttributes = a});

-- | Provides details of the 'RecordMarker' decision. It is not set for other
-- decision types.
dRecordMarkerDecisionAttributes :: Lens' Decision (Maybe RecordMarkerDecisionAttributes)
dRecordMarkerDecisionAttributes = lens _dRecordMarkerDecisionAttributes (\ s a -> s{_dRecordMarkerDecisionAttributes = a});

-- | Provides details of the 'FailWorkflowExecution' decision. It is not set
-- for other decision types.
dFailWorkflowExecutionDecisionAttributes :: Lens' Decision (Maybe FailWorkflowExecutionDecisionAttributes)
dFailWorkflowExecutionDecisionAttributes = lens _dFailWorkflowExecutionDecisionAttributes (\ s a -> s{_dFailWorkflowExecutionDecisionAttributes = a});

-- | Provides details of the 'StartChildWorkflowExecution' decision. It is
-- not set for other decision types.
dStartChildWorkflowExecutionDecisionAttributes :: Lens' Decision (Maybe StartChildWorkflowExecutionDecisionAttributes)
dStartChildWorkflowExecutionDecisionAttributes = lens _dStartChildWorkflowExecutionDecisionAttributes (\ s a -> s{_dStartChildWorkflowExecutionDecisionAttributes = a});

-- | Undocumented member.
dScheduleLambdaFunctionDecisionAttributes :: Lens' Decision (Maybe ScheduleLambdaFunctionDecisionAttributes)
dScheduleLambdaFunctionDecisionAttributes = lens _dScheduleLambdaFunctionDecisionAttributes (\ s a -> s{_dScheduleLambdaFunctionDecisionAttributes = a});

-- | Provides details of the 'CompleteWorkflowExecution' decision. It is not
-- set for other decision types.
dCompleteWorkflowExecutionDecisionAttributes :: Lens' Decision (Maybe CompleteWorkflowExecutionDecisionAttributes)
dCompleteWorkflowExecutionDecisionAttributes = lens _dCompleteWorkflowExecutionDecisionAttributes (\ s a -> s{_dCompleteWorkflowExecutionDecisionAttributes = a});

-- | Provides details of the 'RequestCancelActivityTask' decision. It is not
-- set for other decision types.
dRequestCancelActivityTaskDecisionAttributes :: Lens' Decision (Maybe RequestCancelActivityTaskDecisionAttributes)
dRequestCancelActivityTaskDecisionAttributes = lens _dRequestCancelActivityTaskDecisionAttributes (\ s a -> s{_dRequestCancelActivityTaskDecisionAttributes = a});

-- | Provides details of the 'CancelWorkflowExecution' decision. It is not
-- set for other decision types.
dCancelWorkflowExecutionDecisionAttributes :: Lens' Decision (Maybe CancelWorkflowExecutionDecisionAttributes)
dCancelWorkflowExecutionDecisionAttributes = lens _dCancelWorkflowExecutionDecisionAttributes (\ s a -> s{_dCancelWorkflowExecutionDecisionAttributes = a});

-- | Provides details of the 'CancelTimer' decision. It is not set for other
-- decision types.
dCancelTimerDecisionAttributes :: Lens' Decision (Maybe CancelTimerDecisionAttributes)
dCancelTimerDecisionAttributes = lens _dCancelTimerDecisionAttributes (\ s a -> s{_dCancelTimerDecisionAttributes = a});

-- | Provides details of the 'ContinueAsNewWorkflowExecution' decision. It is
-- not set for other decision types.
dContinueAsNewWorkflowExecutionDecisionAttributes :: Lens' Decision (Maybe ContinueAsNewWorkflowExecutionDecisionAttributes)
dContinueAsNewWorkflowExecutionDecisionAttributes = lens _dContinueAsNewWorkflowExecutionDecisionAttributes (\ s a -> s{_dContinueAsNewWorkflowExecutionDecisionAttributes = a});

-- | Specifies the type of the decision.
dDecisionType :: Lens' Decision DecisionType
dDecisionType = lens _dDecisionType (\ s a -> s{_dDecisionType = a});

instance ToJSON Decision where
        toJSON Decision'{..}
          = object
              ["requestCancelExternalWorkflowExecutionDecisionAttributes"
                 .=
                 _dRequestCancelExternalWorkflowExecutionDecisionAttributes,
               "scheduleActivityTaskDecisionAttributes" .=
                 _dScheduleActivityTaskDecisionAttributes,
               "signalExternalWorkflowExecutionDecisionAttributes"
                 .=
                 _dSignalExternalWorkflowExecutionDecisionAttributes,
               "startTimerDecisionAttributes" .=
                 _dStartTimerDecisionAttributes,
               "recordMarkerDecisionAttributes" .=
                 _dRecordMarkerDecisionAttributes,
               "failWorkflowExecutionDecisionAttributes" .=
                 _dFailWorkflowExecutionDecisionAttributes,
               "startChildWorkflowExecutionDecisionAttributes" .=
                 _dStartChildWorkflowExecutionDecisionAttributes,
               "scheduleLambdaFunctionDecisionAttributes" .=
                 _dScheduleLambdaFunctionDecisionAttributes,
               "completeWorkflowExecutionDecisionAttributes" .=
                 _dCompleteWorkflowExecutionDecisionAttributes,
               "requestCancelActivityTaskDecisionAttributes" .=
                 _dRequestCancelActivityTaskDecisionAttributes,
               "cancelWorkflowExecutionDecisionAttributes" .=
                 _dCancelWorkflowExecutionDecisionAttributes,
               "cancelTimerDecisionAttributes" .=
                 _dCancelTimerDecisionAttributes,
               "continueAsNewWorkflowExecutionDecisionAttributes" .=
                 _dContinueAsNewWorkflowExecutionDecisionAttributes,
               "decisionType" .= _dDecisionType]

-- | Provides details of the 'DecisionTaskCompleted' event.
--
-- /See:/ 'decisionTaskCompletedEventAttributes' smart constructor.
data DecisionTaskCompletedEventAttributes = DecisionTaskCompletedEventAttributes'
    { _dtceaExecutionContext :: !(Maybe Text)
    , _dtceaScheduledEventId :: !Integer
    , _dtceaStartedEventId   :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DecisionTaskCompletedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtceaExecutionContext'
--
-- * 'dtceaScheduledEventId'
--
-- * 'dtceaStartedEventId'
decisionTaskCompletedEventAttributes
    :: Integer -- ^ 'dtceaScheduledEventId'
    -> Integer -- ^ 'dtceaStartedEventId'
    -> DecisionTaskCompletedEventAttributes
decisionTaskCompletedEventAttributes pScheduledEventId_ pStartedEventId_ =
    DecisionTaskCompletedEventAttributes'
    { _dtceaExecutionContext = Nothing
    , _dtceaScheduledEventId = pScheduledEventId_
    , _dtceaStartedEventId = pStartedEventId_
    }

-- | User defined context for the workflow execution.
dtceaExecutionContext :: Lens' DecisionTaskCompletedEventAttributes (Maybe Text)
dtceaExecutionContext = lens _dtceaExecutionContext (\ s a -> s{_dtceaExecutionContext = a});

-- | The ID of the 'DecisionTaskScheduled' event that was recorded when this
-- decision task was scheduled. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
dtceaScheduledEventId :: Lens' DecisionTaskCompletedEventAttributes Integer
dtceaScheduledEventId = lens _dtceaScheduledEventId (\ s a -> s{_dtceaScheduledEventId = a});

-- | The ID of the 'DecisionTaskStarted' event recorded when this decision
-- task was started. This information can be useful for diagnosing problems
-- by tracing back the chain of events leading up to this event.
dtceaStartedEventId :: Lens' DecisionTaskCompletedEventAttributes Integer
dtceaStartedEventId = lens _dtceaStartedEventId (\ s a -> s{_dtceaStartedEventId = a});

instance FromJSON
         DecisionTaskCompletedEventAttributes where
        parseJSON
          = withObject "DecisionTaskCompletedEventAttributes"
              (\ x ->
                 DecisionTaskCompletedEventAttributes' <$>
                   (x .:? "executionContext") <*>
                     (x .: "scheduledEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details about the 'DecisionTaskScheduled' event.
--
-- /See:/ 'decisionTaskScheduledEventAttributes' smart constructor.
data DecisionTaskScheduledEventAttributes = DecisionTaskScheduledEventAttributes'
    { _dtseaTaskPriority        :: !(Maybe Text)
    , _dtseaStartToCloseTimeout :: !(Maybe Text)
    , _dtseaTaskList            :: !TaskList
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DecisionTaskScheduledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtseaTaskPriority'
--
-- * 'dtseaStartToCloseTimeout'
--
-- * 'dtseaTaskList'
decisionTaskScheduledEventAttributes
    :: TaskList -- ^ 'dtseaTaskList'
    -> DecisionTaskScheduledEventAttributes
decisionTaskScheduledEventAttributes pTaskList_ =
    DecisionTaskScheduledEventAttributes'
    { _dtseaTaskPriority = Nothing
    , _dtseaStartToCloseTimeout = Nothing
    , _dtseaTaskList = pTaskList_
    }

-- | /Optional./ A task priority that, if set, specifies the priority for
-- this decision task. Valid values are integers that range from Java\'s
-- 'Integer.MIN_VALUE' (-2147483648) to 'Integer.MAX_VALUE' (2147483647).
-- Higher numbers indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
dtseaTaskPriority :: Lens' DecisionTaskScheduledEventAttributes (Maybe Text)
dtseaTaskPriority = lens _dtseaTaskPriority (\ s a -> s{_dtseaTaskPriority = a});

-- | The maximum duration for this decision task. The task is considered
-- timed out if it does not completed within this duration.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
dtseaStartToCloseTimeout :: Lens' DecisionTaskScheduledEventAttributes (Maybe Text)
dtseaStartToCloseTimeout = lens _dtseaStartToCloseTimeout (\ s a -> s{_dtseaStartToCloseTimeout = a});

-- | The name of the task list in which the decision task was scheduled.
dtseaTaskList :: Lens' DecisionTaskScheduledEventAttributes TaskList
dtseaTaskList = lens _dtseaTaskList (\ s a -> s{_dtseaTaskList = a});

instance FromJSON
         DecisionTaskScheduledEventAttributes where
        parseJSON
          = withObject "DecisionTaskScheduledEventAttributes"
              (\ x ->
                 DecisionTaskScheduledEventAttributes' <$>
                   (x .:? "taskPriority") <*>
                     (x .:? "startToCloseTimeout")
                     <*> (x .: "taskList"))

-- | Provides details of the 'DecisionTaskStarted' event.
--
-- /See:/ 'decisionTaskStartedEventAttributes' smart constructor.
data DecisionTaskStartedEventAttributes = DecisionTaskStartedEventAttributes'
    { _dtseaIdentity         :: !(Maybe Text)
    , _dtseaScheduledEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DecisionTaskStartedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtseaIdentity'
--
-- * 'dtseaScheduledEventId'
decisionTaskStartedEventAttributes
    :: Integer -- ^ 'dtseaScheduledEventId'
    -> DecisionTaskStartedEventAttributes
decisionTaskStartedEventAttributes pScheduledEventId_ =
    DecisionTaskStartedEventAttributes'
    { _dtseaIdentity = Nothing
    , _dtseaScheduledEventId = pScheduledEventId_
    }

-- | Identity of the decider making the request. This enables diagnostic
-- tracing when problems arise. The form of this identity is user defined.
dtseaIdentity :: Lens' DecisionTaskStartedEventAttributes (Maybe Text)
dtseaIdentity = lens _dtseaIdentity (\ s a -> s{_dtseaIdentity = a});

-- | The ID of the 'DecisionTaskScheduled' event that was recorded when this
-- decision task was scheduled. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
dtseaScheduledEventId :: Lens' DecisionTaskStartedEventAttributes Integer
dtseaScheduledEventId = lens _dtseaScheduledEventId (\ s a -> s{_dtseaScheduledEventId = a});

instance FromJSON DecisionTaskStartedEventAttributes
         where
        parseJSON
          = withObject "DecisionTaskStartedEventAttributes"
              (\ x ->
                 DecisionTaskStartedEventAttributes' <$>
                   (x .:? "identity") <*> (x .: "scheduledEventId"))

-- | Provides details of the 'DecisionTaskTimedOut' event.
--
-- /See:/ 'decisionTaskTimedOutEventAttributes' smart constructor.
data DecisionTaskTimedOutEventAttributes = DecisionTaskTimedOutEventAttributes'
    { _dttoeaTimeoutType      :: !DecisionTaskTimeoutType
    , _dttoeaScheduledEventId :: !Integer
    , _dttoeaStartedEventId   :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DecisionTaskTimedOutEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dttoeaTimeoutType'
--
-- * 'dttoeaScheduledEventId'
--
-- * 'dttoeaStartedEventId'
decisionTaskTimedOutEventAttributes
    :: DecisionTaskTimeoutType -- ^ 'dttoeaTimeoutType'
    -> Integer -- ^ 'dttoeaScheduledEventId'
    -> Integer -- ^ 'dttoeaStartedEventId'
    -> DecisionTaskTimedOutEventAttributes
decisionTaskTimedOutEventAttributes pTimeoutType_ pScheduledEventId_ pStartedEventId_ =
    DecisionTaskTimedOutEventAttributes'
    { _dttoeaTimeoutType = pTimeoutType_
    , _dttoeaScheduledEventId = pScheduledEventId_
    , _dttoeaStartedEventId = pStartedEventId_
    }

-- | The type of timeout that expired before the decision task could be
-- completed.
dttoeaTimeoutType :: Lens' DecisionTaskTimedOutEventAttributes DecisionTaskTimeoutType
dttoeaTimeoutType = lens _dttoeaTimeoutType (\ s a -> s{_dttoeaTimeoutType = a});

-- | The ID of the 'DecisionTaskScheduled' event that was recorded when this
-- decision task was scheduled. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
dttoeaScheduledEventId :: Lens' DecisionTaskTimedOutEventAttributes Integer
dttoeaScheduledEventId = lens _dttoeaScheduledEventId (\ s a -> s{_dttoeaScheduledEventId = a});

-- | The ID of the 'DecisionTaskStarted' event recorded when this decision
-- task was started. This information can be useful for diagnosing problems
-- by tracing back the chain of events leading up to this event.
dttoeaStartedEventId :: Lens' DecisionTaskTimedOutEventAttributes Integer
dttoeaStartedEventId = lens _dttoeaStartedEventId (\ s a -> s{_dttoeaStartedEventId = a});

instance FromJSON DecisionTaskTimedOutEventAttributes
         where
        parseJSON
          = withObject "DecisionTaskTimedOutEventAttributes"
              (\ x ->
                 DecisionTaskTimedOutEventAttributes' <$>
                   (x .: "timeoutType") <*> (x .: "scheduledEventId")
                     <*> (x .: "startedEventId"))

-- | Contains the configuration settings of a domain.
--
-- /See:/ 'domainConfiguration' smart constructor.
newtype DomainConfiguration = DomainConfiguration'
    { _dcWorkflowExecutionRetentionPeriodInDays :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DomainConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcWorkflowExecutionRetentionPeriodInDays'
domainConfiguration
    :: Text -- ^ 'dcWorkflowExecutionRetentionPeriodInDays'
    -> DomainConfiguration
domainConfiguration pWorkflowExecutionRetentionPeriodInDays_ =
    DomainConfiguration'
    { _dcWorkflowExecutionRetentionPeriodInDays = pWorkflowExecutionRetentionPeriodInDays_
    }

-- | The retention period for workflow executions in this domain.
dcWorkflowExecutionRetentionPeriodInDays :: Lens' DomainConfiguration Text
dcWorkflowExecutionRetentionPeriodInDays = lens _dcWorkflowExecutionRetentionPeriodInDays (\ s a -> s{_dcWorkflowExecutionRetentionPeriodInDays = a});

instance FromJSON DomainConfiguration where
        parseJSON
          = withObject "DomainConfiguration"
              (\ x ->
                 DomainConfiguration' <$>
                   (x .: "workflowExecutionRetentionPeriodInDays"))

-- | Contains general information about a domain.
--
-- /See:/ 'domainInfo' smart constructor.
data DomainInfo = DomainInfo'
    { _diDescription :: !(Maybe Text)
    , _diName        :: !Text
    , _diStatus      :: !RegistrationStatus
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DomainInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diDescription'
--
-- * 'diName'
--
-- * 'diStatus'
domainInfo
    :: Text -- ^ 'diName'
    -> RegistrationStatus -- ^ 'diStatus'
    -> DomainInfo
domainInfo pName_ pStatus_ =
    DomainInfo'
    { _diDescription = Nothing
    , _diName = pName_
    , _diStatus = pStatus_
    }

-- | The description of the domain provided through RegisterDomain.
diDescription :: Lens' DomainInfo (Maybe Text)
diDescription = lens _diDescription (\ s a -> s{_diDescription = a});

-- | The name of the domain. This name is unique within the account.
diName :: Lens' DomainInfo Text
diName = lens _diName (\ s a -> s{_diName = a});

-- | The status of the domain:
--
-- -   __REGISTERED__: The domain is properly registered and available. You
--     can use this domain for registering types and creating new workflow
--     executions.
-- -   __DEPRECATED__: The domain was deprecated using DeprecateDomain, but
--     is still in use. You should not create new workflow executions in
--     this domain.
diStatus :: Lens' DomainInfo RegistrationStatus
diStatus = lens _diStatus (\ s a -> s{_diStatus = a});

instance FromJSON DomainInfo where
        parseJSON
          = withObject "DomainInfo"
              (\ x ->
                 DomainInfo' <$>
                   (x .:? "description") <*> (x .: "name") <*>
                     (x .: "status"))

-- | Used to filter the workflow executions in visibility APIs by various
-- time-based rules. Each parameter, if specified, defines a rule that must
-- be satisfied by each returned query result. The parameter values are in
-- the <https://en.wikipedia.org/wiki/Unix_time Unix Time format>. For
-- example: '\"oldestDate\": 1325376070.'
--
-- /See:/ 'executionTimeFilter' smart constructor.
data ExecutionTimeFilter = ExecutionTimeFilter'
    { _etfLatestDate :: !(Maybe POSIX)
    , _etfOldestDate :: !POSIX
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExecutionTimeFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etfLatestDate'
--
-- * 'etfOldestDate'
executionTimeFilter
    :: UTCTime -- ^ 'etfOldestDate'
    -> ExecutionTimeFilter
executionTimeFilter pOldestDate_ =
    ExecutionTimeFilter'
    { _etfLatestDate = Nothing
    , _etfOldestDate = _Time # pOldestDate_
    }

-- | Specifies the latest start or close date and time to return.
etfLatestDate :: Lens' ExecutionTimeFilter (Maybe UTCTime)
etfLatestDate = lens _etfLatestDate (\ s a -> s{_etfLatestDate = a}) . mapping _Time;

-- | Specifies the oldest start or close date and time to return.
etfOldestDate :: Lens' ExecutionTimeFilter UTCTime
etfOldestDate = lens _etfOldestDate (\ s a -> s{_etfOldestDate = a}) . _Time;

instance ToJSON ExecutionTimeFilter where
        toJSON ExecutionTimeFilter'{..}
          = object
              ["latestDate" .= _etfLatestDate,
               "oldestDate" .= _etfOldestDate]

-- | Provides details of the 'ExternalWorkflowExecutionCancelRequested'
-- event.
--
-- /See:/ 'externalWorkflowExecutionCancelRequestedEventAttributes' smart constructor.
data ExternalWorkflowExecutionCancelRequestedEventAttributes = ExternalWorkflowExecutionCancelRequestedEventAttributes'
    { _ewecreaWorkflowExecution :: !WorkflowExecution
    , _ewecreaInitiatedEventId  :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExternalWorkflowExecutionCancelRequestedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewecreaWorkflowExecution'
--
-- * 'ewecreaInitiatedEventId'
externalWorkflowExecutionCancelRequestedEventAttributes
    :: WorkflowExecution -- ^ 'ewecreaWorkflowExecution'
    -> Integer -- ^ 'ewecreaInitiatedEventId'
    -> ExternalWorkflowExecutionCancelRequestedEventAttributes
externalWorkflowExecutionCancelRequestedEventAttributes pWorkflowExecution_ pInitiatedEventId_ =
    ExternalWorkflowExecutionCancelRequestedEventAttributes'
    { _ewecreaWorkflowExecution = pWorkflowExecution_
    , _ewecreaInitiatedEventId = pInitiatedEventId_
    }

-- | The external workflow execution to which the cancellation request was
-- delivered.
ewecreaWorkflowExecution :: Lens' ExternalWorkflowExecutionCancelRequestedEventAttributes WorkflowExecution
ewecreaWorkflowExecution = lens _ewecreaWorkflowExecution (\ s a -> s{_ewecreaWorkflowExecution = a});

-- | The ID of the 'RequestCancelExternalWorkflowExecutionInitiated' event
-- corresponding to the 'RequestCancelExternalWorkflowExecution' decision
-- to cancel this external workflow execution. This information can be
-- useful for diagnosing problems by tracing back the chain of events
-- leading up to this event.
ewecreaInitiatedEventId :: Lens' ExternalWorkflowExecutionCancelRequestedEventAttributes Integer
ewecreaInitiatedEventId = lens _ewecreaInitiatedEventId (\ s a -> s{_ewecreaInitiatedEventId = a});

instance FromJSON
         ExternalWorkflowExecutionCancelRequestedEventAttributes
         where
        parseJSON
          = withObject
              "ExternalWorkflowExecutionCancelRequestedEventAttributes"
              (\ x ->
                 ExternalWorkflowExecutionCancelRequestedEventAttributes'
                   <$>
                   (x .: "workflowExecution") <*>
                     (x .: "initiatedEventId"))

-- | Provides details of the 'ExternalWorkflowExecutionSignaled' event.
--
-- /See:/ 'externalWorkflowExecutionSignaledEventAttributes' smart constructor.
data ExternalWorkflowExecutionSignaledEventAttributes = ExternalWorkflowExecutionSignaledEventAttributes'
    { _eweseaWorkflowExecution :: !WorkflowExecution
    , _eweseaInitiatedEventId  :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExternalWorkflowExecutionSignaledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eweseaWorkflowExecution'
--
-- * 'eweseaInitiatedEventId'
externalWorkflowExecutionSignaledEventAttributes
    :: WorkflowExecution -- ^ 'eweseaWorkflowExecution'
    -> Integer -- ^ 'eweseaInitiatedEventId'
    -> ExternalWorkflowExecutionSignaledEventAttributes
externalWorkflowExecutionSignaledEventAttributes pWorkflowExecution_ pInitiatedEventId_ =
    ExternalWorkflowExecutionSignaledEventAttributes'
    { _eweseaWorkflowExecution = pWorkflowExecution_
    , _eweseaInitiatedEventId = pInitiatedEventId_
    }

-- | The external workflow execution that the signal was delivered to.
eweseaWorkflowExecution :: Lens' ExternalWorkflowExecutionSignaledEventAttributes WorkflowExecution
eweseaWorkflowExecution = lens _eweseaWorkflowExecution (\ s a -> s{_eweseaWorkflowExecution = a});

-- | The ID of the 'SignalExternalWorkflowExecutionInitiated' event
-- corresponding to the 'SignalExternalWorkflowExecution' decision to
-- request this signal. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
eweseaInitiatedEventId :: Lens' ExternalWorkflowExecutionSignaledEventAttributes Integer
eweseaInitiatedEventId = lens _eweseaInitiatedEventId (\ s a -> s{_eweseaInitiatedEventId = a});

instance FromJSON
         ExternalWorkflowExecutionSignaledEventAttributes
         where
        parseJSON
          = withObject
              "ExternalWorkflowExecutionSignaledEventAttributes"
              (\ x ->
                 ExternalWorkflowExecutionSignaledEventAttributes' <$>
                   (x .: "workflowExecution") <*>
                     (x .: "initiatedEventId"))

-- | Provides details of the 'FailWorkflowExecution' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'failWorkflowExecutionDecisionAttributes' smart constructor.
data FailWorkflowExecutionDecisionAttributes = FailWorkflowExecutionDecisionAttributes'
    { _fwedaReason  :: !(Maybe Text)
    , _fwedaDetails :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FailWorkflowExecutionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fwedaReason'
--
-- * 'fwedaDetails'
failWorkflowExecutionDecisionAttributes
    :: FailWorkflowExecutionDecisionAttributes
failWorkflowExecutionDecisionAttributes =
    FailWorkflowExecutionDecisionAttributes'
    { _fwedaReason = Nothing
    , _fwedaDetails = Nothing
    }

-- | A descriptive reason for the failure that may help in diagnostics.
fwedaReason :: Lens' FailWorkflowExecutionDecisionAttributes (Maybe Text)
fwedaReason = lens _fwedaReason (\ s a -> s{_fwedaReason = a});

-- | /Optional./ Details of the failure.
fwedaDetails :: Lens' FailWorkflowExecutionDecisionAttributes (Maybe Text)
fwedaDetails = lens _fwedaDetails (\ s a -> s{_fwedaDetails = a});

instance ToJSON
         FailWorkflowExecutionDecisionAttributes where
        toJSON FailWorkflowExecutionDecisionAttributes'{..}
          = object
              ["reason" .= _fwedaReason,
               "details" .= _fwedaDetails]

-- | Provides details of the 'FailWorkflowExecutionFailed' event.
--
-- /See:/ 'failWorkflowExecutionFailedEventAttributes' smart constructor.
data FailWorkflowExecutionFailedEventAttributes = FailWorkflowExecutionFailedEventAttributes'
    { _fwefeaCause                        :: !FailWorkflowExecutionFailedCause
    , _fwefeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FailWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fwefeaCause'
--
-- * 'fwefeaDecisionTaskCompletedEventId'
failWorkflowExecutionFailedEventAttributes
    :: FailWorkflowExecutionFailedCause -- ^ 'fwefeaCause'
    -> Integer -- ^ 'fwefeaDecisionTaskCompletedEventId'
    -> FailWorkflowExecutionFailedEventAttributes
failWorkflowExecutionFailedEventAttributes pCause_ pDecisionTaskCompletedEventId_ =
    FailWorkflowExecutionFailedEventAttributes'
    { _fwefeaCause = pCause_
    , _fwefeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
fwefeaCause :: Lens' FailWorkflowExecutionFailedEventAttributes FailWorkflowExecutionFailedCause
fwefeaCause = lens _fwefeaCause (\ s a -> s{_fwefeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'FailWorkflowExecution' decision to
-- fail this execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
fwefeaDecisionTaskCompletedEventId :: Lens' FailWorkflowExecutionFailedEventAttributes Integer
fwefeaDecisionTaskCompletedEventId = lens _fwefeaDecisionTaskCompletedEventId (\ s a -> s{_fwefeaDecisionTaskCompletedEventId = a});

instance FromJSON
         FailWorkflowExecutionFailedEventAttributes where
        parseJSON
          = withObject
              "FailWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 FailWorkflowExecutionFailedEventAttributes' <$>
                   (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Event within a workflow execution. A history event can be one of these
-- types:
--
-- -   __WorkflowExecutionStarted__: The workflow execution was started.
-- -   __WorkflowExecutionCompleted__: The workflow execution was closed
--     due to successful completion.
-- -   __WorkflowExecutionFailed__: The workflow execution closed due to a
--     failure.
-- -   __WorkflowExecutionTimedOut__: The workflow execution was closed
--     because a time out was exceeded.
-- -   __WorkflowExecutionCanceled__: The workflow execution was
--     successfully canceled and closed.
-- -   __WorkflowExecutionTerminated__: The workflow execution was
--     terminated.
-- -   __WorkflowExecutionContinuedAsNew__: The workflow execution was
--     closed and a new execution of the same type was created with the
--     same workflowId.
-- -   __WorkflowExecutionCancelRequested__: A request to cancel this
--     workflow execution was made.
-- -   __DecisionTaskScheduled__: A decision task was scheduled for the
--     workflow execution.
-- -   __DecisionTaskStarted__: The decision task was dispatched to a
--     decider.
-- -   __DecisionTaskCompleted__: The decider successfully completed a
--     decision task by calling RespondDecisionTaskCompleted.
-- -   __DecisionTaskTimedOut__: The decision task timed out.
-- -   __ActivityTaskScheduled__: An activity task was scheduled for
--     execution.
-- -   __ScheduleActivityTaskFailed__: Failed to process
--     ScheduleActivityTask decision. This happens when the decision is not
--     configured properly, for example the activity type specified is not
--     registered.
-- -   __ActivityTaskStarted__: The scheduled activity task was dispatched
--     to a worker.
-- -   __ActivityTaskCompleted__: An activity worker successfully completed
--     an activity task by calling RespondActivityTaskCompleted.
-- -   __ActivityTaskFailed__: An activity worker failed an activity task
--     by calling RespondActivityTaskFailed.
-- -   __ActivityTaskTimedOut__: The activity task timed out.
-- -   __ActivityTaskCanceled__: The activity task was successfully
--     canceled.
-- -   __ActivityTaskCancelRequested__: A 'RequestCancelActivityTask'
--     decision was received by the system.
-- -   __RequestCancelActivityTaskFailed__: Failed to process
--     RequestCancelActivityTask decision. This happens when the decision
--     is not configured properly.
-- -   __WorkflowExecutionSignaled__: An external signal was received for
--     the workflow execution.
-- -   __MarkerRecorded__: A marker was recorded in the workflow history as
--     the result of a 'RecordMarker' decision.
-- -   __TimerStarted__: A timer was started for the workflow execution due
--     to a 'StartTimer' decision.
-- -   __StartTimerFailed__: Failed to process StartTimer decision. This
--     happens when the decision is not configured properly, for example a
--     timer already exists with the specified timer ID.
-- -   __TimerFired__: A timer, previously started for this workflow
--     execution, fired.
-- -   __TimerCanceled__: A timer, previously started for this workflow
--     execution, was successfully canceled.
-- -   __CancelTimerFailed__: Failed to process CancelTimer decision. This
--     happens when the decision is not configured properly, for example no
--     timer exists with the specified timer ID.
-- -   __StartChildWorkflowExecutionInitiated__: A request was made to
--     start a child workflow execution.
-- -   __StartChildWorkflowExecutionFailed__: Failed to process
--     StartChildWorkflowExecution decision. This happens when the decision
--     is not configured properly, for example the workflow type specified
--     is not registered.
-- -   __ChildWorkflowExecutionStarted__: A child workflow execution was
--     successfully started.
-- -   __ChildWorkflowExecutionCompleted__: A child workflow execution,
--     started by this workflow execution, completed successfully and was
--     closed.
-- -   __ChildWorkflowExecutionFailed__: A child workflow execution,
--     started by this workflow execution, failed to complete successfully
--     and was closed.
-- -   __ChildWorkflowExecutionTimedOut__: A child workflow execution,
--     started by this workflow execution, timed out and was closed.
-- -   __ChildWorkflowExecutionCanceled__: A child workflow execution,
--     started by this workflow execution, was canceled and closed.
-- -   __ChildWorkflowExecutionTerminated__: A child workflow execution,
--     started by this workflow execution, was terminated.
-- -   __SignalExternalWorkflowExecutionInitiated__: A request to signal an
--     external workflow was made.
-- -   __ExternalWorkflowExecutionSignaled__: A signal, requested by this
--     workflow execution, was successfully delivered to the target
--     external workflow execution.
-- -   __SignalExternalWorkflowExecutionFailed__: The request to signal an
--     external workflow execution failed.
-- -   __RequestCancelExternalWorkflowExecutionInitiated__: A request was
--     made to request the cancellation of an external workflow execution.
-- -   __ExternalWorkflowExecutionCancelRequested__: Request to cancel an
--     external workflow execution was successfully delivered to the target
--     execution.
-- -   __RequestCancelExternalWorkflowExecutionFailed__: Request to cancel
--     an external workflow execution failed.
-- -   __LambdaFunctionScheduled__: An AWS Lambda function was scheduled
--     for execution.
-- -   __LambdaFunctionStarted__: The scheduled function was invoked in the
--     AWS Lambda service.
-- -   __LambdaFunctionCompleted__: The AWS Lambda function successfully
--     completed.
-- -   __LambdaFunctionFailed__: The AWS Lambda function execution failed.
-- -   __LambdaFunctionTimedOut__: The AWS Lambda function execution timed
--     out.
-- -   __ScheduleLambdaFunctionFailed__: Failed to process
--     ScheduleLambdaFunction decision. This happens when the workflow
--     execution does not have the proper IAM role attached to invoke AWS
--     Lambda functions.
-- -   __StartLambdaFunctionFailed__: Failed to invoke the scheduled
--     function in the AWS Lambda service. This happens when the AWS Lambda
--     service is not available in the current region, or received too many
--     requests.
--
-- /See:/ 'historyEvent' smart constructor.
data HistoryEvent = HistoryEvent'
    { _heWorkflowExecutionCancelRequestedEventAttributes                :: !(Maybe WorkflowExecutionCancelRequestedEventAttributes)
    , _heDecisionTaskScheduledEventAttributes                           :: !(Maybe DecisionTaskScheduledEventAttributes)
    , _heStartTimerFailedEventAttributes                                :: !(Maybe StartTimerFailedEventAttributes)
    , _heLambdaFunctionStartedEventAttributes                           :: !(Maybe LambdaFunctionStartedEventAttributes)
    , _heRecordMarkerFailedEventAttributes                              :: !(Maybe RecordMarkerFailedEventAttributes)
    , _heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: !(Maybe RequestCancelExternalWorkflowExecutionInitiatedEventAttributes)
    , _heWorkflowExecutionCompletedEventAttributes                      :: !(Maybe WorkflowExecutionCompletedEventAttributes)
    , _heActivityTaskScheduledEventAttributes                           :: !(Maybe ActivityTaskScheduledEventAttributes)
    , _heChildWorkflowExecutionCompletedEventAttributes                 :: !(Maybe ChildWorkflowExecutionCompletedEventAttributes)
    , _heScheduleActivityTaskFailedEventAttributes                      :: !(Maybe ScheduleActivityTaskFailedEventAttributes)
    , _heMarkerRecordedEventAttributes                                  :: !(Maybe MarkerRecordedEventAttributes)
    , _heScheduleLambdaFunctionFailedEventAttributes                    :: !(Maybe ScheduleLambdaFunctionFailedEventAttributes)
    , _heCompleteWorkflowExecutionFailedEventAttributes                 :: !(Maybe CompleteWorkflowExecutionFailedEventAttributes)
    , _heRequestCancelExternalWorkflowExecutionFailedEventAttributes    :: !(Maybe RequestCancelExternalWorkflowExecutionFailedEventAttributes)
    , _heLambdaFunctionCompletedEventAttributes                         :: !(Maybe LambdaFunctionCompletedEventAttributes)
    , _heTimerCanceledEventAttributes                                   :: !(Maybe TimerCanceledEventAttributes)
    , _heWorkflowExecutionStartedEventAttributes                        :: !(Maybe WorkflowExecutionStartedEventAttributes)
    , _heActivityTaskCompletedEventAttributes                           :: !(Maybe ActivityTaskCompletedEventAttributes)
    , _heChildWorkflowExecutionStartedEventAttributes                   :: !(Maybe ChildWorkflowExecutionStartedEventAttributes)
    , _heDecisionTaskTimedOutEventAttributes                            :: !(Maybe DecisionTaskTimedOutEventAttributes)
    , _heCancelTimerFailedEventAttributes                               :: !(Maybe CancelTimerFailedEventAttributes)
    , _heActivityTaskTimedOutEventAttributes                            :: !(Maybe ActivityTaskTimedOutEventAttributes)
    , _heActivityTaskCanceledEventAttributes                            :: !(Maybe ActivityTaskCanceledEventAttributes)
    , _heChildWorkflowExecutionCanceledEventAttributes                  :: !(Maybe ChildWorkflowExecutionCanceledEventAttributes)
    , _heDecisionTaskStartedEventAttributes                             :: !(Maybe DecisionTaskStartedEventAttributes)
    , _heCancelWorkflowExecutionFailedEventAttributes                   :: !(Maybe CancelWorkflowExecutionFailedEventAttributes)
    , _heLambdaFunctionScheduledEventAttributes                         :: !(Maybe LambdaFunctionScheduledEventAttributes)
    , _heChildWorkflowExecutionTimedOutEventAttributes                  :: !(Maybe ChildWorkflowExecutionTimedOutEventAttributes)
    , _heRequestCancelActivityTaskFailedEventAttributes                 :: !(Maybe RequestCancelActivityTaskFailedEventAttributes)
    , _heWorkflowExecutionTerminatedEventAttributes                     :: !(Maybe WorkflowExecutionTerminatedEventAttributes)
    , _heStartChildWorkflowExecutionInitiatedEventAttributes            :: !(Maybe StartChildWorkflowExecutionInitiatedEventAttributes)
    , _heActivityTaskStartedEventAttributes                             :: !(Maybe ActivityTaskStartedEventAttributes)
    , _heSignalExternalWorkflowExecutionFailedEventAttributes           :: !(Maybe SignalExternalWorkflowExecutionFailedEventAttributes)
    , _heTimerStartedEventAttributes                                    :: !(Maybe TimerStartedEventAttributes)
    , _heWorkflowExecutionTimedOutEventAttributes                       :: !(Maybe WorkflowExecutionTimedOutEventAttributes)
    , _heActivityTaskCancelRequestedEventAttributes                     :: !(Maybe ActivityTaskCancelRequestedEventAttributes)
    , _heStartLambdaFunctionFailedEventAttributes                       :: !(Maybe StartLambdaFunctionFailedEventAttributes)
    , _heChildWorkflowExecutionTerminatedEventAttributes                :: !(Maybe ChildWorkflowExecutionTerminatedEventAttributes)
    , _heLambdaFunctionFailedEventAttributes                            :: !(Maybe LambdaFunctionFailedEventAttributes)
    , _heWorkflowExecutionCanceledEventAttributes                       :: !(Maybe WorkflowExecutionCanceledEventAttributes)
    , _heWorkflowExecutionSignaledEventAttributes                       :: !(Maybe WorkflowExecutionSignaledEventAttributes)
    , _heActivityTaskFailedEventAttributes                              :: !(Maybe ActivityTaskFailedEventAttributes)
    , _heExternalWorkflowExecutionSignaledEventAttributes               :: !(Maybe ExternalWorkflowExecutionSignaledEventAttributes)
    , _heTimerFiredEventAttributes                                      :: !(Maybe TimerFiredEventAttributes)
    , _heFailWorkflowExecutionFailedEventAttributes                     :: !(Maybe FailWorkflowExecutionFailedEventAttributes)
    , _heChildWorkflowExecutionFailedEventAttributes                    :: !(Maybe ChildWorkflowExecutionFailedEventAttributes)
    , _heDecisionTaskCompletedEventAttributes                           :: !(Maybe DecisionTaskCompletedEventAttributes)
    , _heStartChildWorkflowExecutionFailedEventAttributes               :: !(Maybe StartChildWorkflowExecutionFailedEventAttributes)
    , _heSignalExternalWorkflowExecutionInitiatedEventAttributes        :: !(Maybe SignalExternalWorkflowExecutionInitiatedEventAttributes)
    , _heContinueAsNewWorkflowExecutionFailedEventAttributes            :: !(Maybe ContinueAsNewWorkflowExecutionFailedEventAttributes)
    , _heWorkflowExecutionFailedEventAttributes                         :: !(Maybe WorkflowExecutionFailedEventAttributes)
    , _heWorkflowExecutionContinuedAsNewEventAttributes                 :: !(Maybe WorkflowExecutionContinuedAsNewEventAttributes)
    , _heExternalWorkflowExecutionCancelRequestedEventAttributes        :: !(Maybe ExternalWorkflowExecutionCancelRequestedEventAttributes)
    , _heLambdaFunctionTimedOutEventAttributes                          :: !(Maybe LambdaFunctionTimedOutEventAttributes)
    , _heEventTimestamp                                                 :: !POSIX
    , _heEventType                                                      :: !EventType
    , _heEventId                                                        :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HistoryEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'heWorkflowExecutionCancelRequestedEventAttributes'
--
-- * 'heDecisionTaskScheduledEventAttributes'
--
-- * 'heStartTimerFailedEventAttributes'
--
-- * 'heLambdaFunctionStartedEventAttributes'
--
-- * 'heRecordMarkerFailedEventAttributes'
--
-- * 'heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes'
--
-- * 'heWorkflowExecutionCompletedEventAttributes'
--
-- * 'heActivityTaskScheduledEventAttributes'
--
-- * 'heChildWorkflowExecutionCompletedEventAttributes'
--
-- * 'heScheduleActivityTaskFailedEventAttributes'
--
-- * 'heMarkerRecordedEventAttributes'
--
-- * 'heScheduleLambdaFunctionFailedEventAttributes'
--
-- * 'heCompleteWorkflowExecutionFailedEventAttributes'
--
-- * 'heRequestCancelExternalWorkflowExecutionFailedEventAttributes'
--
-- * 'heLambdaFunctionCompletedEventAttributes'
--
-- * 'heTimerCanceledEventAttributes'
--
-- * 'heWorkflowExecutionStartedEventAttributes'
--
-- * 'heActivityTaskCompletedEventAttributes'
--
-- * 'heChildWorkflowExecutionStartedEventAttributes'
--
-- * 'heDecisionTaskTimedOutEventAttributes'
--
-- * 'heCancelTimerFailedEventAttributes'
--
-- * 'heActivityTaskTimedOutEventAttributes'
--
-- * 'heActivityTaskCanceledEventAttributes'
--
-- * 'heChildWorkflowExecutionCanceledEventAttributes'
--
-- * 'heDecisionTaskStartedEventAttributes'
--
-- * 'heCancelWorkflowExecutionFailedEventAttributes'
--
-- * 'heLambdaFunctionScheduledEventAttributes'
--
-- * 'heChildWorkflowExecutionTimedOutEventAttributes'
--
-- * 'heRequestCancelActivityTaskFailedEventAttributes'
--
-- * 'heWorkflowExecutionTerminatedEventAttributes'
--
-- * 'heStartChildWorkflowExecutionInitiatedEventAttributes'
--
-- * 'heActivityTaskStartedEventAttributes'
--
-- * 'heSignalExternalWorkflowExecutionFailedEventAttributes'
--
-- * 'heTimerStartedEventAttributes'
--
-- * 'heWorkflowExecutionTimedOutEventAttributes'
--
-- * 'heActivityTaskCancelRequestedEventAttributes'
--
-- * 'heStartLambdaFunctionFailedEventAttributes'
--
-- * 'heChildWorkflowExecutionTerminatedEventAttributes'
--
-- * 'heLambdaFunctionFailedEventAttributes'
--
-- * 'heWorkflowExecutionCanceledEventAttributes'
--
-- * 'heWorkflowExecutionSignaledEventAttributes'
--
-- * 'heActivityTaskFailedEventAttributes'
--
-- * 'heExternalWorkflowExecutionSignaledEventAttributes'
--
-- * 'heTimerFiredEventAttributes'
--
-- * 'heFailWorkflowExecutionFailedEventAttributes'
--
-- * 'heChildWorkflowExecutionFailedEventAttributes'
--
-- * 'heDecisionTaskCompletedEventAttributes'
--
-- * 'heStartChildWorkflowExecutionFailedEventAttributes'
--
-- * 'heSignalExternalWorkflowExecutionInitiatedEventAttributes'
--
-- * 'heContinueAsNewWorkflowExecutionFailedEventAttributes'
--
-- * 'heWorkflowExecutionFailedEventAttributes'
--
-- * 'heWorkflowExecutionContinuedAsNewEventAttributes'
--
-- * 'heExternalWorkflowExecutionCancelRequestedEventAttributes'
--
-- * 'heLambdaFunctionTimedOutEventAttributes'
--
-- * 'heEventTimestamp'
--
-- * 'heEventType'
--
-- * 'heEventId'
historyEvent
    :: UTCTime -- ^ 'heEventTimestamp'
    -> EventType -- ^ 'heEventType'
    -> Integer -- ^ 'heEventId'
    -> HistoryEvent
historyEvent pEventTimestamp_ pEventType_ pEventId_ =
    HistoryEvent'
    { _heWorkflowExecutionCancelRequestedEventAttributes = Nothing
    , _heDecisionTaskScheduledEventAttributes = Nothing
    , _heStartTimerFailedEventAttributes = Nothing
    , _heLambdaFunctionStartedEventAttributes = Nothing
    , _heRecordMarkerFailedEventAttributes = Nothing
    , _heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes = Nothing
    , _heWorkflowExecutionCompletedEventAttributes = Nothing
    , _heActivityTaskScheduledEventAttributes = Nothing
    , _heChildWorkflowExecutionCompletedEventAttributes = Nothing
    , _heScheduleActivityTaskFailedEventAttributes = Nothing
    , _heMarkerRecordedEventAttributes = Nothing
    , _heScheduleLambdaFunctionFailedEventAttributes = Nothing
    , _heCompleteWorkflowExecutionFailedEventAttributes = Nothing
    , _heRequestCancelExternalWorkflowExecutionFailedEventAttributes = Nothing
    , _heLambdaFunctionCompletedEventAttributes = Nothing
    , _heTimerCanceledEventAttributes = Nothing
    , _heWorkflowExecutionStartedEventAttributes = Nothing
    , _heActivityTaskCompletedEventAttributes = Nothing
    , _heChildWorkflowExecutionStartedEventAttributes = Nothing
    , _heDecisionTaskTimedOutEventAttributes = Nothing
    , _heCancelTimerFailedEventAttributes = Nothing
    , _heActivityTaskTimedOutEventAttributes = Nothing
    , _heActivityTaskCanceledEventAttributes = Nothing
    , _heChildWorkflowExecutionCanceledEventAttributes = Nothing
    , _heDecisionTaskStartedEventAttributes = Nothing
    , _heCancelWorkflowExecutionFailedEventAttributes = Nothing
    , _heLambdaFunctionScheduledEventAttributes = Nothing
    , _heChildWorkflowExecutionTimedOutEventAttributes = Nothing
    , _heRequestCancelActivityTaskFailedEventAttributes = Nothing
    , _heWorkflowExecutionTerminatedEventAttributes = Nothing
    , _heStartChildWorkflowExecutionInitiatedEventAttributes = Nothing
    , _heActivityTaskStartedEventAttributes = Nothing
    , _heSignalExternalWorkflowExecutionFailedEventAttributes = Nothing
    , _heTimerStartedEventAttributes = Nothing
    , _heWorkflowExecutionTimedOutEventAttributes = Nothing
    , _heActivityTaskCancelRequestedEventAttributes = Nothing
    , _heStartLambdaFunctionFailedEventAttributes = Nothing
    , _heChildWorkflowExecutionTerminatedEventAttributes = Nothing
    , _heLambdaFunctionFailedEventAttributes = Nothing
    , _heWorkflowExecutionCanceledEventAttributes = Nothing
    , _heWorkflowExecutionSignaledEventAttributes = Nothing
    , _heActivityTaskFailedEventAttributes = Nothing
    , _heExternalWorkflowExecutionSignaledEventAttributes = Nothing
    , _heTimerFiredEventAttributes = Nothing
    , _heFailWorkflowExecutionFailedEventAttributes = Nothing
    , _heChildWorkflowExecutionFailedEventAttributes = Nothing
    , _heDecisionTaskCompletedEventAttributes = Nothing
    , _heStartChildWorkflowExecutionFailedEventAttributes = Nothing
    , _heSignalExternalWorkflowExecutionInitiatedEventAttributes = Nothing
    , _heContinueAsNewWorkflowExecutionFailedEventAttributes = Nothing
    , _heWorkflowExecutionFailedEventAttributes = Nothing
    , _heWorkflowExecutionContinuedAsNewEventAttributes = Nothing
    , _heExternalWorkflowExecutionCancelRequestedEventAttributes = Nothing
    , _heLambdaFunctionTimedOutEventAttributes = Nothing
    , _heEventTimestamp = _Time # pEventTimestamp_
    , _heEventType = pEventType_
    , _heEventId = pEventId_
    }

-- | If the event is of type 'WorkflowExecutionCancelRequested' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heWorkflowExecutionCancelRequestedEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionCancelRequestedEventAttributes)
heWorkflowExecutionCancelRequestedEventAttributes = lens _heWorkflowExecutionCancelRequestedEventAttributes (\ s a -> s{_heWorkflowExecutionCancelRequestedEventAttributes = a});

-- | If the event is of type 'DecisionTaskScheduled' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heDecisionTaskScheduledEventAttributes :: Lens' HistoryEvent (Maybe DecisionTaskScheduledEventAttributes)
heDecisionTaskScheduledEventAttributes = lens _heDecisionTaskScheduledEventAttributes (\ s a -> s{_heDecisionTaskScheduledEventAttributes = a});

-- | If the event is of type 'StartTimerFailed' then this member is set and
-- provides detailed information about the event. It is not set for other
-- event types.
heStartTimerFailedEventAttributes :: Lens' HistoryEvent (Maybe StartTimerFailedEventAttributes)
heStartTimerFailedEventAttributes = lens _heStartTimerFailedEventAttributes (\ s a -> s{_heStartTimerFailedEventAttributes = a});

-- | Undocumented member.
heLambdaFunctionStartedEventAttributes :: Lens' HistoryEvent (Maybe LambdaFunctionStartedEventAttributes)
heLambdaFunctionStartedEventAttributes = lens _heLambdaFunctionStartedEventAttributes (\ s a -> s{_heLambdaFunctionStartedEventAttributes = a});

-- | If the event is of type 'DecisionTaskFailed' then this member is set and
-- provides detailed information about the event. It is not set for other
-- event types.
heRecordMarkerFailedEventAttributes :: Lens' HistoryEvent (Maybe RecordMarkerFailedEventAttributes)
heRecordMarkerFailedEventAttributes = lens _heRecordMarkerFailedEventAttributes (\ s a -> s{_heRecordMarkerFailedEventAttributes = a});

-- | If the event is of type
-- 'RequestCancelExternalWorkflowExecutionInitiated' then this member is
-- set and provides detailed information about the event. It is not set for
-- other event types.
heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Lens' HistoryEvent (Maybe RequestCancelExternalWorkflowExecutionInitiatedEventAttributes)
heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes = lens _heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes (\ s a -> s{_heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes = a});

-- | If the event is of type 'WorkflowExecutionCompleted' then this member is
-- set and provides detailed information about the event. It is not set for
-- other event types.
heWorkflowExecutionCompletedEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionCompletedEventAttributes)
heWorkflowExecutionCompletedEventAttributes = lens _heWorkflowExecutionCompletedEventAttributes (\ s a -> s{_heWorkflowExecutionCompletedEventAttributes = a});

-- | If the event is of type 'ActivityTaskScheduled' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heActivityTaskScheduledEventAttributes :: Lens' HistoryEvent (Maybe ActivityTaskScheduledEventAttributes)
heActivityTaskScheduledEventAttributes = lens _heActivityTaskScheduledEventAttributes (\ s a -> s{_heActivityTaskScheduledEventAttributes = a});

-- | If the event is of type 'ChildWorkflowExecutionCompleted' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heChildWorkflowExecutionCompletedEventAttributes :: Lens' HistoryEvent (Maybe ChildWorkflowExecutionCompletedEventAttributes)
heChildWorkflowExecutionCompletedEventAttributes = lens _heChildWorkflowExecutionCompletedEventAttributes (\ s a -> s{_heChildWorkflowExecutionCompletedEventAttributes = a});

-- | If the event is of type 'ScheduleActivityTaskFailed' then this member is
-- set and provides detailed information about the event. It is not set for
-- other event types.
heScheduleActivityTaskFailedEventAttributes :: Lens' HistoryEvent (Maybe ScheduleActivityTaskFailedEventAttributes)
heScheduleActivityTaskFailedEventAttributes = lens _heScheduleActivityTaskFailedEventAttributes (\ s a -> s{_heScheduleActivityTaskFailedEventAttributes = a});

-- | If the event is of type 'MarkerRecorded' then this member is set and
-- provides detailed information about the event. It is not set for other
-- event types.
heMarkerRecordedEventAttributes :: Lens' HistoryEvent (Maybe MarkerRecordedEventAttributes)
heMarkerRecordedEventAttributes = lens _heMarkerRecordedEventAttributes (\ s a -> s{_heMarkerRecordedEventAttributes = a});

-- | Undocumented member.
heScheduleLambdaFunctionFailedEventAttributes :: Lens' HistoryEvent (Maybe ScheduleLambdaFunctionFailedEventAttributes)
heScheduleLambdaFunctionFailedEventAttributes = lens _heScheduleLambdaFunctionFailedEventAttributes (\ s a -> s{_heScheduleLambdaFunctionFailedEventAttributes = a});

-- | If the event is of type 'CompleteWorkflowExecutionFailed' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heCompleteWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe CompleteWorkflowExecutionFailedEventAttributes)
heCompleteWorkflowExecutionFailedEventAttributes = lens _heCompleteWorkflowExecutionFailedEventAttributes (\ s a -> s{_heCompleteWorkflowExecutionFailedEventAttributes = a});

-- | If the event is of type 'RequestCancelExternalWorkflowExecutionFailed'
-- then this member is set and provides detailed information about the
-- event. It is not set for other event types.
heRequestCancelExternalWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe RequestCancelExternalWorkflowExecutionFailedEventAttributes)
heRequestCancelExternalWorkflowExecutionFailedEventAttributes = lens _heRequestCancelExternalWorkflowExecutionFailedEventAttributes (\ s a -> s{_heRequestCancelExternalWorkflowExecutionFailedEventAttributes = a});

-- | Undocumented member.
heLambdaFunctionCompletedEventAttributes :: Lens' HistoryEvent (Maybe LambdaFunctionCompletedEventAttributes)
heLambdaFunctionCompletedEventAttributes = lens _heLambdaFunctionCompletedEventAttributes (\ s a -> s{_heLambdaFunctionCompletedEventAttributes = a});

-- | If the event is of type 'TimerCanceled' then this member is set and
-- provides detailed information about the event. It is not set for other
-- event types.
heTimerCanceledEventAttributes :: Lens' HistoryEvent (Maybe TimerCanceledEventAttributes)
heTimerCanceledEventAttributes = lens _heTimerCanceledEventAttributes (\ s a -> s{_heTimerCanceledEventAttributes = a});

-- | If the event is of type 'WorkflowExecutionStarted' then this member is
-- set and provides detailed information about the event. It is not set for
-- other event types.
heWorkflowExecutionStartedEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionStartedEventAttributes)
heWorkflowExecutionStartedEventAttributes = lens _heWorkflowExecutionStartedEventAttributes (\ s a -> s{_heWorkflowExecutionStartedEventAttributes = a});

-- | If the event is of type 'ActivityTaskCompleted' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heActivityTaskCompletedEventAttributes :: Lens' HistoryEvent (Maybe ActivityTaskCompletedEventAttributes)
heActivityTaskCompletedEventAttributes = lens _heActivityTaskCompletedEventAttributes (\ s a -> s{_heActivityTaskCompletedEventAttributes = a});

-- | If the event is of type 'ChildWorkflowExecutionStarted' then this member
-- is set and provides detailed information about the event. It is not set
-- for other event types.
heChildWorkflowExecutionStartedEventAttributes :: Lens' HistoryEvent (Maybe ChildWorkflowExecutionStartedEventAttributes)
heChildWorkflowExecutionStartedEventAttributes = lens _heChildWorkflowExecutionStartedEventAttributes (\ s a -> s{_heChildWorkflowExecutionStartedEventAttributes = a});

-- | If the event is of type 'DecisionTaskTimedOut' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heDecisionTaskTimedOutEventAttributes :: Lens' HistoryEvent (Maybe DecisionTaskTimedOutEventAttributes)
heDecisionTaskTimedOutEventAttributes = lens _heDecisionTaskTimedOutEventAttributes (\ s a -> s{_heDecisionTaskTimedOutEventAttributes = a});

-- | If the event is of type 'CancelTimerFailed' then this member is set and
-- provides detailed information about the event. It is not set for other
-- event types.
heCancelTimerFailedEventAttributes :: Lens' HistoryEvent (Maybe CancelTimerFailedEventAttributes)
heCancelTimerFailedEventAttributes = lens _heCancelTimerFailedEventAttributes (\ s a -> s{_heCancelTimerFailedEventAttributes = a});

-- | If the event is of type 'ActivityTaskTimedOut' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heActivityTaskTimedOutEventAttributes :: Lens' HistoryEvent (Maybe ActivityTaskTimedOutEventAttributes)
heActivityTaskTimedOutEventAttributes = lens _heActivityTaskTimedOutEventAttributes (\ s a -> s{_heActivityTaskTimedOutEventAttributes = a});

-- | If the event is of type 'ActivityTaskCanceled' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heActivityTaskCanceledEventAttributes :: Lens' HistoryEvent (Maybe ActivityTaskCanceledEventAttributes)
heActivityTaskCanceledEventAttributes = lens _heActivityTaskCanceledEventAttributes (\ s a -> s{_heActivityTaskCanceledEventAttributes = a});

-- | If the event is of type 'ChildWorkflowExecutionCanceled' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heChildWorkflowExecutionCanceledEventAttributes :: Lens' HistoryEvent (Maybe ChildWorkflowExecutionCanceledEventAttributes)
heChildWorkflowExecutionCanceledEventAttributes = lens _heChildWorkflowExecutionCanceledEventAttributes (\ s a -> s{_heChildWorkflowExecutionCanceledEventAttributes = a});

-- | If the event is of type 'DecisionTaskStarted' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heDecisionTaskStartedEventAttributes :: Lens' HistoryEvent (Maybe DecisionTaskStartedEventAttributes)
heDecisionTaskStartedEventAttributes = lens _heDecisionTaskStartedEventAttributes (\ s a -> s{_heDecisionTaskStartedEventAttributes = a});

-- | If the event is of type 'CancelWorkflowExecutionFailed' then this member
-- is set and provides detailed information about the event. It is not set
-- for other event types.
heCancelWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe CancelWorkflowExecutionFailedEventAttributes)
heCancelWorkflowExecutionFailedEventAttributes = lens _heCancelWorkflowExecutionFailedEventAttributes (\ s a -> s{_heCancelWorkflowExecutionFailedEventAttributes = a});

-- | Undocumented member.
heLambdaFunctionScheduledEventAttributes :: Lens' HistoryEvent (Maybe LambdaFunctionScheduledEventAttributes)
heLambdaFunctionScheduledEventAttributes = lens _heLambdaFunctionScheduledEventAttributes (\ s a -> s{_heLambdaFunctionScheduledEventAttributes = a});

-- | If the event is of type 'ChildWorkflowExecutionTimedOut' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heChildWorkflowExecutionTimedOutEventAttributes :: Lens' HistoryEvent (Maybe ChildWorkflowExecutionTimedOutEventAttributes)
heChildWorkflowExecutionTimedOutEventAttributes = lens _heChildWorkflowExecutionTimedOutEventAttributes (\ s a -> s{_heChildWorkflowExecutionTimedOutEventAttributes = a});

-- | If the event is of type 'RequestCancelActivityTaskFailed' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heRequestCancelActivityTaskFailedEventAttributes :: Lens' HistoryEvent (Maybe RequestCancelActivityTaskFailedEventAttributes)
heRequestCancelActivityTaskFailedEventAttributes = lens _heRequestCancelActivityTaskFailedEventAttributes (\ s a -> s{_heRequestCancelActivityTaskFailedEventAttributes = a});

-- | If the event is of type 'WorkflowExecutionTerminated' then this member
-- is set and provides detailed information about the event. It is not set
-- for other event types.
heWorkflowExecutionTerminatedEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionTerminatedEventAttributes)
heWorkflowExecutionTerminatedEventAttributes = lens _heWorkflowExecutionTerminatedEventAttributes (\ s a -> s{_heWorkflowExecutionTerminatedEventAttributes = a});

-- | If the event is of type 'StartChildWorkflowExecutionInitiated' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heStartChildWorkflowExecutionInitiatedEventAttributes :: Lens' HistoryEvent (Maybe StartChildWorkflowExecutionInitiatedEventAttributes)
heStartChildWorkflowExecutionInitiatedEventAttributes = lens _heStartChildWorkflowExecutionInitiatedEventAttributes (\ s a -> s{_heStartChildWorkflowExecutionInitiatedEventAttributes = a});

-- | If the event is of type 'ActivityTaskStarted' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heActivityTaskStartedEventAttributes :: Lens' HistoryEvent (Maybe ActivityTaskStartedEventAttributes)
heActivityTaskStartedEventAttributes = lens _heActivityTaskStartedEventAttributes (\ s a -> s{_heActivityTaskStartedEventAttributes = a});

-- | If the event is of type 'SignalExternalWorkflowExecutionFailed' then
-- this member is set and provides detailed information about the event. It
-- is not set for other event types.
heSignalExternalWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe SignalExternalWorkflowExecutionFailedEventAttributes)
heSignalExternalWorkflowExecutionFailedEventAttributes = lens _heSignalExternalWorkflowExecutionFailedEventAttributes (\ s a -> s{_heSignalExternalWorkflowExecutionFailedEventAttributes = a});

-- | If the event is of type 'TimerStarted' then this member is set and
-- provides detailed information about the event. It is not set for other
-- event types.
heTimerStartedEventAttributes :: Lens' HistoryEvent (Maybe TimerStartedEventAttributes)
heTimerStartedEventAttributes = lens _heTimerStartedEventAttributes (\ s a -> s{_heTimerStartedEventAttributes = a});

-- | If the event is of type 'WorkflowExecutionTimedOut' then this member is
-- set and provides detailed information about the event. It is not set for
-- other event types.
heWorkflowExecutionTimedOutEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionTimedOutEventAttributes)
heWorkflowExecutionTimedOutEventAttributes = lens _heWorkflowExecutionTimedOutEventAttributes (\ s a -> s{_heWorkflowExecutionTimedOutEventAttributes = a});

-- | If the event is of type 'ActivityTaskcancelRequested' then this member
-- is set and provides detailed information about the event. It is not set
-- for other event types.
heActivityTaskCancelRequestedEventAttributes :: Lens' HistoryEvent (Maybe ActivityTaskCancelRequestedEventAttributes)
heActivityTaskCancelRequestedEventAttributes = lens _heActivityTaskCancelRequestedEventAttributes (\ s a -> s{_heActivityTaskCancelRequestedEventAttributes = a});

-- | Undocumented member.
heStartLambdaFunctionFailedEventAttributes :: Lens' HistoryEvent (Maybe StartLambdaFunctionFailedEventAttributes)
heStartLambdaFunctionFailedEventAttributes = lens _heStartLambdaFunctionFailedEventAttributes (\ s a -> s{_heStartLambdaFunctionFailedEventAttributes = a});

-- | If the event is of type 'ChildWorkflowExecutionTerminated' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heChildWorkflowExecutionTerminatedEventAttributes :: Lens' HistoryEvent (Maybe ChildWorkflowExecutionTerminatedEventAttributes)
heChildWorkflowExecutionTerminatedEventAttributes = lens _heChildWorkflowExecutionTerminatedEventAttributes (\ s a -> s{_heChildWorkflowExecutionTerminatedEventAttributes = a});

-- | Undocumented member.
heLambdaFunctionFailedEventAttributes :: Lens' HistoryEvent (Maybe LambdaFunctionFailedEventAttributes)
heLambdaFunctionFailedEventAttributes = lens _heLambdaFunctionFailedEventAttributes (\ s a -> s{_heLambdaFunctionFailedEventAttributes = a});

-- | If the event is of type 'WorkflowExecutionCanceled' then this member is
-- set and provides detailed information about the event. It is not set for
-- other event types.
heWorkflowExecutionCanceledEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionCanceledEventAttributes)
heWorkflowExecutionCanceledEventAttributes = lens _heWorkflowExecutionCanceledEventAttributes (\ s a -> s{_heWorkflowExecutionCanceledEventAttributes = a});

-- | If the event is of type 'WorkflowExecutionSignaled' then this member is
-- set and provides detailed information about the event. It is not set for
-- other event types.
heWorkflowExecutionSignaledEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionSignaledEventAttributes)
heWorkflowExecutionSignaledEventAttributes = lens _heWorkflowExecutionSignaledEventAttributes (\ s a -> s{_heWorkflowExecutionSignaledEventAttributes = a});

-- | If the event is of type 'ActivityTaskFailed' then this member is set and
-- provides detailed information about the event. It is not set for other
-- event types.
heActivityTaskFailedEventAttributes :: Lens' HistoryEvent (Maybe ActivityTaskFailedEventAttributes)
heActivityTaskFailedEventAttributes = lens _heActivityTaskFailedEventAttributes (\ s a -> s{_heActivityTaskFailedEventAttributes = a});

-- | If the event is of type 'ExternalWorkflowExecutionSignaled' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heExternalWorkflowExecutionSignaledEventAttributes :: Lens' HistoryEvent (Maybe ExternalWorkflowExecutionSignaledEventAttributes)
heExternalWorkflowExecutionSignaledEventAttributes = lens _heExternalWorkflowExecutionSignaledEventAttributes (\ s a -> s{_heExternalWorkflowExecutionSignaledEventAttributes = a});

-- | If the event is of type 'TimerFired' then this member is set and
-- provides detailed information about the event. It is not set for other
-- event types.
heTimerFiredEventAttributes :: Lens' HistoryEvent (Maybe TimerFiredEventAttributes)
heTimerFiredEventAttributes = lens _heTimerFiredEventAttributes (\ s a -> s{_heTimerFiredEventAttributes = a});

-- | If the event is of type 'FailWorkflowExecutionFailed' then this member
-- is set and provides detailed information about the event. It is not set
-- for other event types.
heFailWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe FailWorkflowExecutionFailedEventAttributes)
heFailWorkflowExecutionFailedEventAttributes = lens _heFailWorkflowExecutionFailedEventAttributes (\ s a -> s{_heFailWorkflowExecutionFailedEventAttributes = a});

-- | If the event is of type 'ChildWorkflowExecutionFailed' then this member
-- is set and provides detailed information about the event. It is not set
-- for other event types.
heChildWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe ChildWorkflowExecutionFailedEventAttributes)
heChildWorkflowExecutionFailedEventAttributes = lens _heChildWorkflowExecutionFailedEventAttributes (\ s a -> s{_heChildWorkflowExecutionFailedEventAttributes = a});

-- | If the event is of type 'DecisionTaskCompleted' then this member is set
-- and provides detailed information about the event. It is not set for
-- other event types.
heDecisionTaskCompletedEventAttributes :: Lens' HistoryEvent (Maybe DecisionTaskCompletedEventAttributes)
heDecisionTaskCompletedEventAttributes = lens _heDecisionTaskCompletedEventAttributes (\ s a -> s{_heDecisionTaskCompletedEventAttributes = a});

-- | If the event is of type 'StartChildWorkflowExecutionFailed' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heStartChildWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe StartChildWorkflowExecutionFailedEventAttributes)
heStartChildWorkflowExecutionFailedEventAttributes = lens _heStartChildWorkflowExecutionFailedEventAttributes (\ s a -> s{_heStartChildWorkflowExecutionFailedEventAttributes = a});

-- | If the event is of type 'SignalExternalWorkflowExecutionInitiated' then
-- this member is set and provides detailed information about the event. It
-- is not set for other event types.
heSignalExternalWorkflowExecutionInitiatedEventAttributes :: Lens' HistoryEvent (Maybe SignalExternalWorkflowExecutionInitiatedEventAttributes)
heSignalExternalWorkflowExecutionInitiatedEventAttributes = lens _heSignalExternalWorkflowExecutionInitiatedEventAttributes (\ s a -> s{_heSignalExternalWorkflowExecutionInitiatedEventAttributes = a});

-- | If the event is of type 'ContinueAsNewWorkflowExecutionFailed' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heContinueAsNewWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe ContinueAsNewWorkflowExecutionFailedEventAttributes)
heContinueAsNewWorkflowExecutionFailedEventAttributes = lens _heContinueAsNewWorkflowExecutionFailedEventAttributes (\ s a -> s{_heContinueAsNewWorkflowExecutionFailedEventAttributes = a});

-- | If the event is of type 'WorkflowExecutionFailed' then this member is
-- set and provides detailed information about the event. It is not set for
-- other event types.
heWorkflowExecutionFailedEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionFailedEventAttributes)
heWorkflowExecutionFailedEventAttributes = lens _heWorkflowExecutionFailedEventAttributes (\ s a -> s{_heWorkflowExecutionFailedEventAttributes = a});

-- | If the event is of type 'WorkflowExecutionContinuedAsNew' then this
-- member is set and provides detailed information about the event. It is
-- not set for other event types.
heWorkflowExecutionContinuedAsNewEventAttributes :: Lens' HistoryEvent (Maybe WorkflowExecutionContinuedAsNewEventAttributes)
heWorkflowExecutionContinuedAsNewEventAttributes = lens _heWorkflowExecutionContinuedAsNewEventAttributes (\ s a -> s{_heWorkflowExecutionContinuedAsNewEventAttributes = a});

-- | If the event is of type 'ExternalWorkflowExecutionCancelRequested' then
-- this member is set and provides detailed information about the event. It
-- is not set for other event types.
heExternalWorkflowExecutionCancelRequestedEventAttributes :: Lens' HistoryEvent (Maybe ExternalWorkflowExecutionCancelRequestedEventAttributes)
heExternalWorkflowExecutionCancelRequestedEventAttributes = lens _heExternalWorkflowExecutionCancelRequestedEventAttributes (\ s a -> s{_heExternalWorkflowExecutionCancelRequestedEventAttributes = a});

-- | Undocumented member.
heLambdaFunctionTimedOutEventAttributes :: Lens' HistoryEvent (Maybe LambdaFunctionTimedOutEventAttributes)
heLambdaFunctionTimedOutEventAttributes = lens _heLambdaFunctionTimedOutEventAttributes (\ s a -> s{_heLambdaFunctionTimedOutEventAttributes = a});

-- | The date and time when the event occurred.
heEventTimestamp :: Lens' HistoryEvent UTCTime
heEventTimestamp = lens _heEventTimestamp (\ s a -> s{_heEventTimestamp = a}) . _Time;

-- | The type of the history event.
heEventType :: Lens' HistoryEvent EventType
heEventType = lens _heEventType (\ s a -> s{_heEventType = a});

-- | The system generated ID of the event. This ID uniquely identifies the
-- event with in the workflow execution history.
heEventId :: Lens' HistoryEvent Integer
heEventId = lens _heEventId (\ s a -> s{_heEventId = a});

instance FromJSON HistoryEvent where
        parseJSON
          = withObject "HistoryEvent"
              (\ x ->
                 HistoryEvent' <$>
                   (x .:?
                      "workflowExecutionCancelRequestedEventAttributes")
                     <*> (x .:? "decisionTaskScheduledEventAttributes")
                     <*> (x .:? "startTimerFailedEventAttributes")
                     <*> (x .:? "lambdaFunctionStartedEventAttributes")
                     <*> (x .:? "recordMarkerFailedEventAttributes")
                     <*>
                     (x .:?
                        "requestCancelExternalWorkflowExecutionInitiatedEventAttributes")
                     <*>
                     (x .:? "workflowExecutionCompletedEventAttributes")
                     <*> (x .:? "activityTaskScheduledEventAttributes")
                     <*>
                     (x .:?
                        "childWorkflowExecutionCompletedEventAttributes")
                     <*>
                     (x .:? "scheduleActivityTaskFailedEventAttributes")
                     <*> (x .:? "markerRecordedEventAttributes")
                     <*>
                     (x .:? "scheduleLambdaFunctionFailedEventAttributes")
                     <*>
                     (x .:?
                        "completeWorkflowExecutionFailedEventAttributes")
                     <*>
                     (x .:?
                        "requestCancelExternalWorkflowExecutionFailedEventAttributes")
                     <*> (x .:? "lambdaFunctionCompletedEventAttributes")
                     <*> (x .:? "timerCanceledEventAttributes")
                     <*> (x .:? "workflowExecutionStartedEventAttributes")
                     <*> (x .:? "activityTaskCompletedEventAttributes")
                     <*>
                     (x .:?
                        "childWorkflowExecutionStartedEventAttributes")
                     <*> (x .:? "decisionTaskTimedOutEventAttributes")
                     <*> (x .:? "cancelTimerFailedEventAttributes")
                     <*> (x .:? "activityTaskTimedOutEventAttributes")
                     <*> (x .:? "activityTaskCanceledEventAttributes")
                     <*>
                     (x .:?
                        "childWorkflowExecutionCanceledEventAttributes")
                     <*> (x .:? "decisionTaskStartedEventAttributes")
                     <*>
                     (x .:?
                        "cancelWorkflowExecutionFailedEventAttributes")
                     <*> (x .:? "lambdaFunctionScheduledEventAttributes")
                     <*>
                     (x .:?
                        "childWorkflowExecutionTimedOutEventAttributes")
                     <*>
                     (x .:?
                        "requestCancelActivityTaskFailedEventAttributes")
                     <*>
                     (x .:? "workflowExecutionTerminatedEventAttributes")
                     <*>
                     (x .:?
                        "startChildWorkflowExecutionInitiatedEventAttributes")
                     <*> (x .:? "activityTaskStartedEventAttributes")
                     <*>
                     (x .:?
                        "signalExternalWorkflowExecutionFailedEventAttributes")
                     <*> (x .:? "timerStartedEventAttributes")
                     <*>
                     (x .:? "workflowExecutionTimedOutEventAttributes")
                     <*>
                     (x .:? "activityTaskCancelRequestedEventAttributes")
                     <*>
                     (x .:? "startLambdaFunctionFailedEventAttributes")
                     <*>
                     (x .:?
                        "childWorkflowExecutionTerminatedEventAttributes")
                     <*> (x .:? "lambdaFunctionFailedEventAttributes")
                     <*>
                     (x .:? "workflowExecutionCanceledEventAttributes")
                     <*>
                     (x .:? "workflowExecutionSignaledEventAttributes")
                     <*> (x .:? "activityTaskFailedEventAttributes")
                     <*>
                     (x .:?
                        "externalWorkflowExecutionSignaledEventAttributes")
                     <*> (x .:? "timerFiredEventAttributes")
                     <*>
                     (x .:? "failWorkflowExecutionFailedEventAttributes")
                     <*>
                     (x .:? "childWorkflowExecutionFailedEventAttributes")
                     <*> (x .:? "decisionTaskCompletedEventAttributes")
                     <*>
                     (x .:?
                        "startChildWorkflowExecutionFailedEventAttributes")
                     <*>
                     (x .:?
                        "signalExternalWorkflowExecutionInitiatedEventAttributes")
                     <*>
                     (x .:?
                        "continueAsNewWorkflowExecutionFailedEventAttributes")
                     <*> (x .:? "workflowExecutionFailedEventAttributes")
                     <*>
                     (x .:?
                        "workflowExecutionContinuedAsNewEventAttributes")
                     <*>
                     (x .:?
                        "externalWorkflowExecutionCancelRequestedEventAttributes")
                     <*> (x .:? "lambdaFunctionTimedOutEventAttributes")
                     <*> (x .: "eventTimestamp")
                     <*> (x .: "eventType")
                     <*> (x .: "eventId"))

-- | Provides details for the 'LambdaFunctionCompleted' event.
--
-- /See:/ 'lambdaFunctionCompletedEventAttributes' smart constructor.
data LambdaFunctionCompletedEventAttributes = LambdaFunctionCompletedEventAttributes'
    { _lfceaResult           :: !(Maybe Text)
    , _lfceaScheduledEventId :: !Integer
    , _lfceaStartedEventId   :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LambdaFunctionCompletedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfceaResult'
--
-- * 'lfceaScheduledEventId'
--
-- * 'lfceaStartedEventId'
lambdaFunctionCompletedEventAttributes
    :: Integer -- ^ 'lfceaScheduledEventId'
    -> Integer -- ^ 'lfceaStartedEventId'
    -> LambdaFunctionCompletedEventAttributes
lambdaFunctionCompletedEventAttributes pScheduledEventId_ pStartedEventId_ =
    LambdaFunctionCompletedEventAttributes'
    { _lfceaResult = Nothing
    , _lfceaScheduledEventId = pScheduledEventId_
    , _lfceaStartedEventId = pStartedEventId_
    }

-- | The result of the function execution (if any).
lfceaResult :: Lens' LambdaFunctionCompletedEventAttributes (Maybe Text)
lfceaResult = lens _lfceaResult (\ s a -> s{_lfceaResult = a});

-- | The ID of the 'LambdaFunctionScheduled' event that was recorded when
-- this AWS Lambda function was scheduled. This information can be useful
-- for diagnosing problems by tracing back the chain of events leading up
-- to this event.
lfceaScheduledEventId :: Lens' LambdaFunctionCompletedEventAttributes Integer
lfceaScheduledEventId = lens _lfceaScheduledEventId (\ s a -> s{_lfceaScheduledEventId = a});

-- | The ID of the 'LambdaFunctionStarted' event recorded in the history.
lfceaStartedEventId :: Lens' LambdaFunctionCompletedEventAttributes Integer
lfceaStartedEventId = lens _lfceaStartedEventId (\ s a -> s{_lfceaStartedEventId = a});

instance FromJSON
         LambdaFunctionCompletedEventAttributes where
        parseJSON
          = withObject "LambdaFunctionCompletedEventAttributes"
              (\ x ->
                 LambdaFunctionCompletedEventAttributes' <$>
                   (x .:? "result") <*> (x .: "scheduledEventId") <*>
                     (x .: "startedEventId"))

-- | Provides details for the 'LambdaFunctionFailed' event.
--
-- /See:/ 'lambdaFunctionFailedEventAttributes' smart constructor.
data LambdaFunctionFailedEventAttributes = LambdaFunctionFailedEventAttributes'
    { _lffeaReason           :: !(Maybe Text)
    , _lffeaDetails          :: !(Maybe Text)
    , _lffeaScheduledEventId :: !Integer
    , _lffeaStartedEventId   :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LambdaFunctionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lffeaReason'
--
-- * 'lffeaDetails'
--
-- * 'lffeaScheduledEventId'
--
-- * 'lffeaStartedEventId'
lambdaFunctionFailedEventAttributes
    :: Integer -- ^ 'lffeaScheduledEventId'
    -> Integer -- ^ 'lffeaStartedEventId'
    -> LambdaFunctionFailedEventAttributes
lambdaFunctionFailedEventAttributes pScheduledEventId_ pStartedEventId_ =
    LambdaFunctionFailedEventAttributes'
    { _lffeaReason = Nothing
    , _lffeaDetails = Nothing
    , _lffeaScheduledEventId = pScheduledEventId_
    , _lffeaStartedEventId = pStartedEventId_
    }

-- | The reason provided for the failure (if any).
lffeaReason :: Lens' LambdaFunctionFailedEventAttributes (Maybe Text)
lffeaReason = lens _lffeaReason (\ s a -> s{_lffeaReason = a});

-- | The details of the failure (if any).
lffeaDetails :: Lens' LambdaFunctionFailedEventAttributes (Maybe Text)
lffeaDetails = lens _lffeaDetails (\ s a -> s{_lffeaDetails = a});

-- | The ID of the 'LambdaFunctionScheduled' event that was recorded when
-- this AWS Lambda function was scheduled. This information can be useful
-- for diagnosing problems by tracing back the chain of events leading up
-- to this event.
lffeaScheduledEventId :: Lens' LambdaFunctionFailedEventAttributes Integer
lffeaScheduledEventId = lens _lffeaScheduledEventId (\ s a -> s{_lffeaScheduledEventId = a});

-- | The ID of the 'LambdaFunctionStarted' event recorded in the history.
lffeaStartedEventId :: Lens' LambdaFunctionFailedEventAttributes Integer
lffeaStartedEventId = lens _lffeaStartedEventId (\ s a -> s{_lffeaStartedEventId = a});

instance FromJSON LambdaFunctionFailedEventAttributes
         where
        parseJSON
          = withObject "LambdaFunctionFailedEventAttributes"
              (\ x ->
                 LambdaFunctionFailedEventAttributes' <$>
                   (x .:? "reason") <*> (x .:? "details") <*>
                     (x .: "scheduledEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details for the 'LambdaFunctionScheduled' event.
--
-- /See:/ 'lambdaFunctionScheduledEventAttributes' smart constructor.
data LambdaFunctionScheduledEventAttributes = LambdaFunctionScheduledEventAttributes'
    { _lfseaInput                        :: !(Maybe Text)
    , _lfseaStartToCloseTimeout          :: !(Maybe Text)
    , _lfseaId                           :: !Text
    , _lfseaName                         :: !Text
    , _lfseaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LambdaFunctionScheduledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfseaInput'
--
-- * 'lfseaStartToCloseTimeout'
--
-- * 'lfseaId'
--
-- * 'lfseaName'
--
-- * 'lfseaDecisionTaskCompletedEventId'
lambdaFunctionScheduledEventAttributes
    :: Text -- ^ 'lfseaId'
    -> Text -- ^ 'lfseaName'
    -> Integer -- ^ 'lfseaDecisionTaskCompletedEventId'
    -> LambdaFunctionScheduledEventAttributes
lambdaFunctionScheduledEventAttributes pId_ pName_ pDecisionTaskCompletedEventId_ =
    LambdaFunctionScheduledEventAttributes'
    { _lfseaInput = Nothing
    , _lfseaStartToCloseTimeout = Nothing
    , _lfseaId = pId_
    , _lfseaName = pName_
    , _lfseaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | Input provided to the AWS Lambda function.
lfseaInput :: Lens' LambdaFunctionScheduledEventAttributes (Maybe Text)
lfseaInput = lens _lfseaInput (\ s a -> s{_lfseaInput = a});

-- | The maximum time, in seconds, that the AWS Lambda function can take to
-- execute from start to close before it is marked as failed.
lfseaStartToCloseTimeout :: Lens' LambdaFunctionScheduledEventAttributes (Maybe Text)
lfseaStartToCloseTimeout = lens _lfseaStartToCloseTimeout (\ s a -> s{_lfseaStartToCloseTimeout = a});

-- | The unique Amazon SWF ID for the AWS Lambda task.
lfseaId :: Lens' LambdaFunctionScheduledEventAttributes Text
lfseaId = lens _lfseaId (\ s a -> s{_lfseaId = a});

-- | The name of the scheduled AWS Lambda function.
lfseaName :: Lens' LambdaFunctionScheduledEventAttributes Text
lfseaName = lens _lfseaName (\ s a -> s{_lfseaName = a});

-- | The ID of the 'DecisionTaskCompleted' event for the decision that
-- resulted in the scheduling of this AWS Lambda function. This information
-- can be useful for diagnosing problems by tracing back the chain of
-- events leading up to this event.
lfseaDecisionTaskCompletedEventId :: Lens' LambdaFunctionScheduledEventAttributes Integer
lfseaDecisionTaskCompletedEventId = lens _lfseaDecisionTaskCompletedEventId (\ s a -> s{_lfseaDecisionTaskCompletedEventId = a});

instance FromJSON
         LambdaFunctionScheduledEventAttributes where
        parseJSON
          = withObject "LambdaFunctionScheduledEventAttributes"
              (\ x ->
                 LambdaFunctionScheduledEventAttributes' <$>
                   (x .:? "input") <*> (x .:? "startToCloseTimeout") <*>
                     (x .: "id")
                     <*> (x .: "name")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Provides details for the 'LambdaFunctionStarted' event.
--
-- /See:/ 'lambdaFunctionStartedEventAttributes' smart constructor.
newtype LambdaFunctionStartedEventAttributes = LambdaFunctionStartedEventAttributes'
    { _lfseaScheduledEventId :: Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LambdaFunctionStartedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfseaScheduledEventId'
lambdaFunctionStartedEventAttributes
    :: Integer -- ^ 'lfseaScheduledEventId'
    -> LambdaFunctionStartedEventAttributes
lambdaFunctionStartedEventAttributes pScheduledEventId_ =
    LambdaFunctionStartedEventAttributes'
    { _lfseaScheduledEventId = pScheduledEventId_
    }

-- | The ID of the 'LambdaFunctionScheduled' event that was recorded when
-- this AWS Lambda function was scheduled. This information can be useful
-- for diagnosing problems by tracing back the chain of events leading up
-- to this event.
lfseaScheduledEventId :: Lens' LambdaFunctionStartedEventAttributes Integer
lfseaScheduledEventId = lens _lfseaScheduledEventId (\ s a -> s{_lfseaScheduledEventId = a});

instance FromJSON
         LambdaFunctionStartedEventAttributes where
        parseJSON
          = withObject "LambdaFunctionStartedEventAttributes"
              (\ x ->
                 LambdaFunctionStartedEventAttributes' <$>
                   (x .: "scheduledEventId"))

-- | Provides details for the 'LambdaFunctionTimedOut' event.
--
-- /See:/ 'lambdaFunctionTimedOutEventAttributes' smart constructor.
data LambdaFunctionTimedOutEventAttributes = LambdaFunctionTimedOutEventAttributes'
    { _lftoeaTimeoutType      :: !(Maybe LambdaFunctionTimeoutType)
    , _lftoeaScheduledEventId :: !Integer
    , _lftoeaStartedEventId   :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LambdaFunctionTimedOutEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lftoeaTimeoutType'
--
-- * 'lftoeaScheduledEventId'
--
-- * 'lftoeaStartedEventId'
lambdaFunctionTimedOutEventAttributes
    :: Integer -- ^ 'lftoeaScheduledEventId'
    -> Integer -- ^ 'lftoeaStartedEventId'
    -> LambdaFunctionTimedOutEventAttributes
lambdaFunctionTimedOutEventAttributes pScheduledEventId_ pStartedEventId_ =
    LambdaFunctionTimedOutEventAttributes'
    { _lftoeaTimeoutType = Nothing
    , _lftoeaScheduledEventId = pScheduledEventId_
    , _lftoeaStartedEventId = pStartedEventId_
    }

-- | The type of the timeout that caused this event.
lftoeaTimeoutType :: Lens' LambdaFunctionTimedOutEventAttributes (Maybe LambdaFunctionTimeoutType)
lftoeaTimeoutType = lens _lftoeaTimeoutType (\ s a -> s{_lftoeaTimeoutType = a});

-- | The ID of the 'LambdaFunctionScheduled' event that was recorded when
-- this AWS Lambda function was scheduled. This information can be useful
-- for diagnosing problems by tracing back the chain of events leading up
-- to this event.
lftoeaScheduledEventId :: Lens' LambdaFunctionTimedOutEventAttributes Integer
lftoeaScheduledEventId = lens _lftoeaScheduledEventId (\ s a -> s{_lftoeaScheduledEventId = a});

-- | The ID of the 'LambdaFunctionStarted' event recorded in the history.
lftoeaStartedEventId :: Lens' LambdaFunctionTimedOutEventAttributes Integer
lftoeaStartedEventId = lens _lftoeaStartedEventId (\ s a -> s{_lftoeaStartedEventId = a});

instance FromJSON
         LambdaFunctionTimedOutEventAttributes where
        parseJSON
          = withObject "LambdaFunctionTimedOutEventAttributes"
              (\ x ->
                 LambdaFunctionTimedOutEventAttributes' <$>
                   (x .:? "timeoutType") <*> (x .: "scheduledEventId")
                     <*> (x .: "startedEventId"))

-- | Provides details of the 'MarkerRecorded' event.
--
-- /See:/ 'markerRecordedEventAttributes' smart constructor.
data MarkerRecordedEventAttributes = MarkerRecordedEventAttributes'
    { _mreaDetails                      :: !(Maybe Text)
    , _mreaMarkerName                   :: !Text
    , _mreaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarkerRecordedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mreaDetails'
--
-- * 'mreaMarkerName'
--
-- * 'mreaDecisionTaskCompletedEventId'
markerRecordedEventAttributes
    :: Text -- ^ 'mreaMarkerName'
    -> Integer -- ^ 'mreaDecisionTaskCompletedEventId'
    -> MarkerRecordedEventAttributes
markerRecordedEventAttributes pMarkerName_ pDecisionTaskCompletedEventId_ =
    MarkerRecordedEventAttributes'
    { _mreaDetails = Nothing
    , _mreaMarkerName = pMarkerName_
    , _mreaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | Details of the marker (if any).
mreaDetails :: Lens' MarkerRecordedEventAttributes (Maybe Text)
mreaDetails = lens _mreaDetails (\ s a -> s{_mreaDetails = a});

-- | The name of the marker.
mreaMarkerName :: Lens' MarkerRecordedEventAttributes Text
mreaMarkerName = lens _mreaMarkerName (\ s a -> s{_mreaMarkerName = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'RecordMarker' decision that
-- requested this marker. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
mreaDecisionTaskCompletedEventId :: Lens' MarkerRecordedEventAttributes Integer
mreaDecisionTaskCompletedEventId = lens _mreaDecisionTaskCompletedEventId (\ s a -> s{_mreaDecisionTaskCompletedEventId = a});

instance FromJSON MarkerRecordedEventAttributes where
        parseJSON
          = withObject "MarkerRecordedEventAttributes"
              (\ x ->
                 MarkerRecordedEventAttributes' <$>
                   (x .:? "details") <*> (x .: "markerName") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Contains the count of tasks in a task list.
--
-- /See:/ 'pendingTaskCount' smart constructor.
data PendingTaskCount = PendingTaskCount'
    { _ptcTruncated :: !(Maybe Bool)
    , _ptcCount     :: !Nat
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PendingTaskCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcTruncated'
--
-- * 'ptcCount'
pendingTaskCount
    :: Natural -- ^ 'ptcCount'
    -> PendingTaskCount
pendingTaskCount pCount_ =
    PendingTaskCount'
    { _ptcTruncated = Nothing
    , _ptcCount = _Nat # pCount_
    }

-- | If set to true, indicates that the actual count was more than the
-- maximum supported by this API and the count returned is the truncated
-- value.
ptcTruncated :: Lens' PendingTaskCount (Maybe Bool)
ptcTruncated = lens _ptcTruncated (\ s a -> s{_ptcTruncated = a});

-- | The number of tasks in the task list.
ptcCount :: Lens' PendingTaskCount Natural
ptcCount = lens _ptcCount (\ s a -> s{_ptcCount = a}) . _Nat;

instance FromJSON PendingTaskCount where
        parseJSON
          = withObject "PendingTaskCount"
              (\ x ->
                 PendingTaskCount' <$>
                   (x .:? "truncated") <*> (x .: "count"))

-- | Provides details of the 'RecordMarker' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'recordMarkerDecisionAttributes' smart constructor.
data RecordMarkerDecisionAttributes = RecordMarkerDecisionAttributes'
    { _rmdaDetails    :: !(Maybe Text)
    , _rmdaMarkerName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RecordMarkerDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmdaDetails'
--
-- * 'rmdaMarkerName'
recordMarkerDecisionAttributes
    :: Text -- ^ 'rmdaMarkerName'
    -> RecordMarkerDecisionAttributes
recordMarkerDecisionAttributes pMarkerName_ =
    RecordMarkerDecisionAttributes'
    { _rmdaDetails = Nothing
    , _rmdaMarkerName = pMarkerName_
    }

-- | /Optional./ details of the marker.
rmdaDetails :: Lens' RecordMarkerDecisionAttributes (Maybe Text)
rmdaDetails = lens _rmdaDetails (\ s a -> s{_rmdaDetails = a});

-- | __Required.__ The name of the marker.
rmdaMarkerName :: Lens' RecordMarkerDecisionAttributes Text
rmdaMarkerName = lens _rmdaMarkerName (\ s a -> s{_rmdaMarkerName = a});

instance ToJSON RecordMarkerDecisionAttributes where
        toJSON RecordMarkerDecisionAttributes'{..}
          = object
              ["details" .= _rmdaDetails,
               "markerName" .= _rmdaMarkerName]

-- | Provides details of the 'RecordMarkerFailed' event.
--
-- /See:/ 'recordMarkerFailedEventAttributes' smart constructor.
data RecordMarkerFailedEventAttributes = RecordMarkerFailedEventAttributes'
    { _rmfeaMarkerName                   :: !Text
    , _rmfeaCause                        :: !RecordMarkerFailedCause
    , _rmfeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RecordMarkerFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmfeaMarkerName'
--
-- * 'rmfeaCause'
--
-- * 'rmfeaDecisionTaskCompletedEventId'
recordMarkerFailedEventAttributes
    :: Text -- ^ 'rmfeaMarkerName'
    -> RecordMarkerFailedCause -- ^ 'rmfeaCause'
    -> Integer -- ^ 'rmfeaDecisionTaskCompletedEventId'
    -> RecordMarkerFailedEventAttributes
recordMarkerFailedEventAttributes pMarkerName_ pCause_ pDecisionTaskCompletedEventId_ =
    RecordMarkerFailedEventAttributes'
    { _rmfeaMarkerName = pMarkerName_
    , _rmfeaCause = pCause_
    , _rmfeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The marker\'s name.
rmfeaMarkerName :: Lens' RecordMarkerFailedEventAttributes Text
rmfeaMarkerName = lens _rmfeaMarkerName (\ s a -> s{_rmfeaMarkerName = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
rmfeaCause :: Lens' RecordMarkerFailedEventAttributes RecordMarkerFailedCause
rmfeaCause = lens _rmfeaCause (\ s a -> s{_rmfeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'RecordMarkerFailed' decision for
-- this cancellation request. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
rmfeaDecisionTaskCompletedEventId :: Lens' RecordMarkerFailedEventAttributes Integer
rmfeaDecisionTaskCompletedEventId = lens _rmfeaDecisionTaskCompletedEventId (\ s a -> s{_rmfeaDecisionTaskCompletedEventId = a});

instance FromJSON RecordMarkerFailedEventAttributes
         where
        parseJSON
          = withObject "RecordMarkerFailedEventAttributes"
              (\ x ->
                 RecordMarkerFailedEventAttributes' <$>
                   (x .: "markerName") <*> (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'RequestCancelActivityTask' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'requestCancelActivityTaskDecisionAttributes' smart constructor.
newtype RequestCancelActivityTaskDecisionAttributes = RequestCancelActivityTaskDecisionAttributes'
    { _rcatdaActivityId :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestCancelActivityTaskDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcatdaActivityId'
requestCancelActivityTaskDecisionAttributes
    :: Text -- ^ 'rcatdaActivityId'
    -> RequestCancelActivityTaskDecisionAttributes
requestCancelActivityTaskDecisionAttributes pActivityId_ =
    RequestCancelActivityTaskDecisionAttributes'
    { _rcatdaActivityId = pActivityId_
    }

-- | The 'activityId' of the activity task to be canceled.
rcatdaActivityId :: Lens' RequestCancelActivityTaskDecisionAttributes Text
rcatdaActivityId = lens _rcatdaActivityId (\ s a -> s{_rcatdaActivityId = a});

instance ToJSON
         RequestCancelActivityTaskDecisionAttributes where
        toJSON
          RequestCancelActivityTaskDecisionAttributes'{..}
          = object ["activityId" .= _rcatdaActivityId]

-- | Provides details of the 'RequestCancelActivityTaskFailed' event.
--
-- /See:/ 'requestCancelActivityTaskFailedEventAttributes' smart constructor.
data RequestCancelActivityTaskFailedEventAttributes = RequestCancelActivityTaskFailedEventAttributes'
    { _rcatfeaActivityId                   :: !Text
    , _rcatfeaCause                        :: !RequestCancelActivityTaskFailedCause
    , _rcatfeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestCancelActivityTaskFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcatfeaActivityId'
--
-- * 'rcatfeaCause'
--
-- * 'rcatfeaDecisionTaskCompletedEventId'
requestCancelActivityTaskFailedEventAttributes
    :: Text -- ^ 'rcatfeaActivityId'
    -> RequestCancelActivityTaskFailedCause -- ^ 'rcatfeaCause'
    -> Integer -- ^ 'rcatfeaDecisionTaskCompletedEventId'
    -> RequestCancelActivityTaskFailedEventAttributes
requestCancelActivityTaskFailedEventAttributes pActivityId_ pCause_ pDecisionTaskCompletedEventId_ =
    RequestCancelActivityTaskFailedEventAttributes'
    { _rcatfeaActivityId = pActivityId_
    , _rcatfeaCause = pCause_
    , _rcatfeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The activityId provided in the 'RequestCancelActivityTask' decision that
-- failed.
rcatfeaActivityId :: Lens' RequestCancelActivityTaskFailedEventAttributes Text
rcatfeaActivityId = lens _rcatfeaActivityId (\ s a -> s{_rcatfeaActivityId = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
rcatfeaCause :: Lens' RequestCancelActivityTaskFailedEventAttributes RequestCancelActivityTaskFailedCause
rcatfeaCause = lens _rcatfeaCause (\ s a -> s{_rcatfeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'RequestCancelActivityTask' decision
-- for this cancellation request. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
rcatfeaDecisionTaskCompletedEventId :: Lens' RequestCancelActivityTaskFailedEventAttributes Integer
rcatfeaDecisionTaskCompletedEventId = lens _rcatfeaDecisionTaskCompletedEventId (\ s a -> s{_rcatfeaDecisionTaskCompletedEventId = a});

instance FromJSON
         RequestCancelActivityTaskFailedEventAttributes where
        parseJSON
          = withObject
              "RequestCancelActivityTaskFailedEventAttributes"
              (\ x ->
                 RequestCancelActivityTaskFailedEventAttributes' <$>
                   (x .: "activityId") <*> (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'RequestCancelExternalWorkflowExecution'
-- decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'requestCancelExternalWorkflowExecutionDecisionAttributes' smart constructor.
data RequestCancelExternalWorkflowExecutionDecisionAttributes = RequestCancelExternalWorkflowExecutionDecisionAttributes'
    { _rcewedaControl    :: !(Maybe Text)
    , _rcewedaRunId      :: !(Maybe Text)
    , _rcewedaWorkflowId :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestCancelExternalWorkflowExecutionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcewedaControl'
--
-- * 'rcewedaRunId'
--
-- * 'rcewedaWorkflowId'
requestCancelExternalWorkflowExecutionDecisionAttributes
    :: Text -- ^ 'rcewedaWorkflowId'
    -> RequestCancelExternalWorkflowExecutionDecisionAttributes
requestCancelExternalWorkflowExecutionDecisionAttributes pWorkflowId_ =
    RequestCancelExternalWorkflowExecutionDecisionAttributes'
    { _rcewedaControl = Nothing
    , _rcewedaRunId = Nothing
    , _rcewedaWorkflowId = pWorkflowId_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent workflow tasks.
rcewedaControl :: Lens' RequestCancelExternalWorkflowExecutionDecisionAttributes (Maybe Text)
rcewedaControl = lens _rcewedaControl (\ s a -> s{_rcewedaControl = a});

-- | The 'runId' of the external workflow execution to cancel.
rcewedaRunId :: Lens' RequestCancelExternalWorkflowExecutionDecisionAttributes (Maybe Text)
rcewedaRunId = lens _rcewedaRunId (\ s a -> s{_rcewedaRunId = a});

-- | __Required.__ The 'workflowId' of the external workflow execution to
-- cancel.
rcewedaWorkflowId :: Lens' RequestCancelExternalWorkflowExecutionDecisionAttributes Text
rcewedaWorkflowId = lens _rcewedaWorkflowId (\ s a -> s{_rcewedaWorkflowId = a});

instance ToJSON
         RequestCancelExternalWorkflowExecutionDecisionAttributes
         where
        toJSON
          RequestCancelExternalWorkflowExecutionDecisionAttributes'{..}
          = object
              ["control" .= _rcewedaControl,
               "runId" .= _rcewedaRunId,
               "workflowId" .= _rcewedaWorkflowId]

-- | Provides details of the 'RequestCancelExternalWorkflowExecutionFailed'
-- event.
--
-- /See:/ 'requestCancelExternalWorkflowExecutionFailedEventAttributes' smart constructor.
data RequestCancelExternalWorkflowExecutionFailedEventAttributes = RequestCancelExternalWorkflowExecutionFailedEventAttributes'
    { _rcewefeaControl                      :: !(Maybe Text)
    , _rcewefeaRunId                        :: !(Maybe Text)
    , _rcewefeaWorkflowId                   :: !Text
    , _rcewefeaCause                        :: !RequestCancelExternalWorkflowExecutionFailedCause
    , _rcewefeaInitiatedEventId             :: !Integer
    , _rcewefeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestCancelExternalWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcewefeaControl'
--
-- * 'rcewefeaRunId'
--
-- * 'rcewefeaWorkflowId'
--
-- * 'rcewefeaCause'
--
-- * 'rcewefeaInitiatedEventId'
--
-- * 'rcewefeaDecisionTaskCompletedEventId'
requestCancelExternalWorkflowExecutionFailedEventAttributes
    :: Text -- ^ 'rcewefeaWorkflowId'
    -> RequestCancelExternalWorkflowExecutionFailedCause -- ^ 'rcewefeaCause'
    -> Integer -- ^ 'rcewefeaInitiatedEventId'
    -> Integer -- ^ 'rcewefeaDecisionTaskCompletedEventId'
    -> RequestCancelExternalWorkflowExecutionFailedEventAttributes
requestCancelExternalWorkflowExecutionFailedEventAttributes pWorkflowId_ pCause_ pInitiatedEventId_ pDecisionTaskCompletedEventId_ =
    RequestCancelExternalWorkflowExecutionFailedEventAttributes'
    { _rcewefeaControl = Nothing
    , _rcewefeaRunId = Nothing
    , _rcewefeaWorkflowId = pWorkflowId_
    , _rcewefeaCause = pCause_
    , _rcewefeaInitiatedEventId = pInitiatedEventId_
    , _rcewefeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | Undocumented member.
rcewefeaControl :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes (Maybe Text)
rcewefeaControl = lens _rcewefeaControl (\ s a -> s{_rcewefeaControl = a});

-- | The 'runId' of the external workflow execution.
rcewefeaRunId :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes (Maybe Text)
rcewefeaRunId = lens _rcewefeaRunId (\ s a -> s{_rcewefeaRunId = a});

-- | The 'workflowId' of the external workflow to which the cancel request
-- was to be delivered.
rcewefeaWorkflowId :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Text
rcewefeaWorkflowId = lens _rcewefeaWorkflowId (\ s a -> s{_rcewefeaWorkflowId = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
rcewefeaCause :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes RequestCancelExternalWorkflowExecutionFailedCause
rcewefeaCause = lens _rcewefeaCause (\ s a -> s{_rcewefeaCause = a});

-- | The ID of the 'RequestCancelExternalWorkflowExecutionInitiated' event
-- corresponding to the 'RequestCancelExternalWorkflowExecution' decision
-- to cancel this external workflow execution. This information can be
-- useful for diagnosing problems by tracing back the chain of events
-- leading up to this event.
rcewefeaInitiatedEventId :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Integer
rcewefeaInitiatedEventId = lens _rcewefeaInitiatedEventId (\ s a -> s{_rcewefeaInitiatedEventId = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the
-- 'RequestCancelExternalWorkflowExecution' decision for this cancellation
-- request. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
rcewefeaDecisionTaskCompletedEventId :: Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Integer
rcewefeaDecisionTaskCompletedEventId = lens _rcewefeaDecisionTaskCompletedEventId (\ s a -> s{_rcewefeaDecisionTaskCompletedEventId = a});

instance FromJSON
         RequestCancelExternalWorkflowExecutionFailedEventAttributes
         where
        parseJSON
          = withObject
              "RequestCancelExternalWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 RequestCancelExternalWorkflowExecutionFailedEventAttributes'
                   <$>
                   (x .:? "control") <*> (x .:? "runId") <*>
                     (x .: "workflowId")
                     <*> (x .: "cause")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the
-- 'RequestCancelExternalWorkflowExecutionInitiated' event.
--
-- /See:/ 'requestCancelExternalWorkflowExecutionInitiatedEventAttributes' smart constructor.
data RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = RequestCancelExternalWorkflowExecutionInitiatedEventAttributes'
    { _rceweieaControl                      :: !(Maybe Text)
    , _rceweieaRunId                        :: !(Maybe Text)
    , _rceweieaWorkflowId                   :: !Text
    , _rceweieaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestCancelExternalWorkflowExecutionInitiatedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rceweieaControl'
--
-- * 'rceweieaRunId'
--
-- * 'rceweieaWorkflowId'
--
-- * 'rceweieaDecisionTaskCompletedEventId'
requestCancelExternalWorkflowExecutionInitiatedEventAttributes
    :: Text -- ^ 'rceweieaWorkflowId'
    -> Integer -- ^ 'rceweieaDecisionTaskCompletedEventId'
    -> RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
requestCancelExternalWorkflowExecutionInitiatedEventAttributes pWorkflowId_ pDecisionTaskCompletedEventId_ =
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes'
    { _rceweieaControl = Nothing
    , _rceweieaRunId = Nothing
    , _rceweieaWorkflowId = pWorkflowId_
    , _rceweieaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent workflow tasks.
rceweieaControl :: Lens' RequestCancelExternalWorkflowExecutionInitiatedEventAttributes (Maybe Text)
rceweieaControl = lens _rceweieaControl (\ s a -> s{_rceweieaControl = a});

-- | The 'runId' of the external workflow execution to be canceled.
rceweieaRunId :: Lens' RequestCancelExternalWorkflowExecutionInitiatedEventAttributes (Maybe Text)
rceweieaRunId = lens _rceweieaRunId (\ s a -> s{_rceweieaRunId = a});

-- | The 'workflowId' of the external workflow execution to be canceled.
rceweieaWorkflowId :: Lens' RequestCancelExternalWorkflowExecutionInitiatedEventAttributes Text
rceweieaWorkflowId = lens _rceweieaWorkflowId (\ s a -> s{_rceweieaWorkflowId = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the
-- 'RequestCancelExternalWorkflowExecution' decision for this cancellation
-- request. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
rceweieaDecisionTaskCompletedEventId :: Lens' RequestCancelExternalWorkflowExecutionInitiatedEventAttributes Integer
rceweieaDecisionTaskCompletedEventId = lens _rceweieaDecisionTaskCompletedEventId (\ s a -> s{_rceweieaDecisionTaskCompletedEventId = a});

instance FromJSON
         RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
         where
        parseJSON
          = withObject
              "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes"
              (\ x ->
                 RequestCancelExternalWorkflowExecutionInitiatedEventAttributes'
                   <$>
                   (x .:? "control") <*> (x .:? "runId") <*>
                     (x .: "workflowId")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'ScheduleActivityTask' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   Constrain the following parameters by using a 'Condition' element
--     with the appropriate keys.
--     -   'activityType.name': String constraint. The key is
--         'swf:activityType.name'.
--     -   'activityType.version': String constraint. The key is
--         'swf:activityType.version'.
--     -   'taskList': String constraint. The key is 'swf:taskList.name'.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'scheduleActivityTaskDecisionAttributes' smart constructor.
data ScheduleActivityTaskDecisionAttributes = ScheduleActivityTaskDecisionAttributes'
    { _satdaControl                :: !(Maybe Text)
    , _satdaScheduleToCloseTimeout :: !(Maybe Text)
    , _satdaHeartbeatTimeout       :: !(Maybe Text)
    , _satdaInput                  :: !(Maybe Text)
    , _satdaTaskList               :: !(Maybe TaskList)
    , _satdaTaskPriority           :: !(Maybe Text)
    , _satdaScheduleToStartTimeout :: !(Maybe Text)
    , _satdaStartToCloseTimeout    :: !(Maybe Text)
    , _satdaActivityType           :: !ActivityType
    , _satdaActivityId             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleActivityTaskDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'satdaControl'
--
-- * 'satdaScheduleToCloseTimeout'
--
-- * 'satdaHeartbeatTimeout'
--
-- * 'satdaInput'
--
-- * 'satdaTaskList'
--
-- * 'satdaTaskPriority'
--
-- * 'satdaScheduleToStartTimeout'
--
-- * 'satdaStartToCloseTimeout'
--
-- * 'satdaActivityType'
--
-- * 'satdaActivityId'
scheduleActivityTaskDecisionAttributes
    :: ActivityType -- ^ 'satdaActivityType'
    -> Text -- ^ 'satdaActivityId'
    -> ScheduleActivityTaskDecisionAttributes
scheduleActivityTaskDecisionAttributes pActivityType_ pActivityId_ =
    ScheduleActivityTaskDecisionAttributes'
    { _satdaControl = Nothing
    , _satdaScheduleToCloseTimeout = Nothing
    , _satdaHeartbeatTimeout = Nothing
    , _satdaInput = Nothing
    , _satdaTaskList = Nothing
    , _satdaTaskPriority = Nothing
    , _satdaScheduleToStartTimeout = Nothing
    , _satdaStartToCloseTimeout = Nothing
    , _satdaActivityType = pActivityType_
    , _satdaActivityId = pActivityId_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent workflow tasks. This data is not sent to the activity.
satdaControl :: Lens' ScheduleActivityTaskDecisionAttributes (Maybe Text)
satdaControl = lens _satdaControl (\ s a -> s{_satdaControl = a});

-- | The maximum duration for this activity task.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
--
-- A schedule-to-close timeout for this activity task must be specified
-- either as a default for the activity type or through this field. If
-- neither this field is set nor a default schedule-to-close timeout was
-- specified at registration time then a fault will be returned.
satdaScheduleToCloseTimeout :: Lens' ScheduleActivityTaskDecisionAttributes (Maybe Text)
satdaScheduleToCloseTimeout = lens _satdaScheduleToCloseTimeout (\ s a -> s{_satdaScheduleToCloseTimeout = a});

-- | If set, specifies the maximum time before which a worker processing a
-- task of this type must report progress by calling
-- RecordActivityTaskHeartbeat. If the timeout is exceeded, the activity
-- task is automatically timed out. If the worker subsequently attempts to
-- record a heartbeat or returns a result, it will be ignored. This
-- overrides the default heartbeat timeout specified when registering the
-- activity type using RegisterActivityType.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
satdaHeartbeatTimeout :: Lens' ScheduleActivityTaskDecisionAttributes (Maybe Text)
satdaHeartbeatTimeout = lens _satdaHeartbeatTimeout (\ s a -> s{_satdaHeartbeatTimeout = a});

-- | The input provided to the activity task.
satdaInput :: Lens' ScheduleActivityTaskDecisionAttributes (Maybe Text)
satdaInput = lens _satdaInput (\ s a -> s{_satdaInput = a});

-- | If set, specifies the name of the task list in which to schedule the
-- activity task. If not specified, the 'defaultTaskList' registered with
-- the activity type will be used.
--
-- A task list for this activity task must be specified either as a default
-- for the activity type or through this field. If neither this field is
-- set nor a default task list was specified at registration time then a
-- fault will be returned.
--
-- The specified string must not start or end with whitespace. It must not
-- contain a ':' (colon), '\/' (slash), '|' (vertical bar), or any control
-- characters (\\u0000-\\u001f | \\u007f - \\u009f). Also, it must not
-- contain the literal string quotarnquot.
satdaTaskList :: Lens' ScheduleActivityTaskDecisionAttributes (Maybe TaskList)
satdaTaskList = lens _satdaTaskList (\ s a -> s{_satdaTaskList = a});

-- | /Optional./ If set, specifies the priority with which the activity task
-- is to be assigned to a worker. This overrides the defaultTaskPriority
-- specified when registering the activity type using RegisterActivityType.
-- Valid values are integers that range from Java\'s 'Integer.MIN_VALUE'
-- (-2147483648) to 'Integer.MAX_VALUE' (2147483647). Higher numbers
-- indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
satdaTaskPriority :: Lens' ScheduleActivityTaskDecisionAttributes (Maybe Text)
satdaTaskPriority = lens _satdaTaskPriority (\ s a -> s{_satdaTaskPriority = a});

-- | /Optional./ If set, specifies the maximum duration the activity task can
-- wait to be assigned to a worker. This overrides the default
-- schedule-to-start timeout specified when registering the activity type
-- using RegisterActivityType.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
--
-- A schedule-to-start timeout for this activity task must be specified
-- either as a default for the activity type or through this field. If
-- neither this field is set nor a default schedule-to-start timeout was
-- specified at registration time then a fault will be returned.
satdaScheduleToStartTimeout :: Lens' ScheduleActivityTaskDecisionAttributes (Maybe Text)
satdaScheduleToStartTimeout = lens _satdaScheduleToStartTimeout (\ s a -> s{_satdaScheduleToStartTimeout = a});

-- | If set, specifies the maximum duration a worker may take to process this
-- activity task. This overrides the default start-to-close timeout
-- specified when registering the activity type using RegisterActivityType.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
--
-- A start-to-close timeout for this activity task must be specified either
-- as a default for the activity type or through this field. If neither
-- this field is set nor a default start-to-close timeout was specified at
-- registration time then a fault will be returned.
satdaStartToCloseTimeout :: Lens' ScheduleActivityTaskDecisionAttributes (Maybe Text)
satdaStartToCloseTimeout = lens _satdaStartToCloseTimeout (\ s a -> s{_satdaStartToCloseTimeout = a});

-- | __Required.__ The type of the activity task to schedule.
satdaActivityType :: Lens' ScheduleActivityTaskDecisionAttributes ActivityType
satdaActivityType = lens _satdaActivityType (\ s a -> s{_satdaActivityType = a});

-- | __Required.__ The 'activityId' of the activity task.
--
-- The specified string must not start or end with whitespace. It must not
-- contain a ':' (colon), '\/' (slash), '|' (vertical bar), or any control
-- characters (\\u0000-\\u001f | \\u007f - \\u009f). Also, it must not
-- contain the literal string quotarnquot.
satdaActivityId :: Lens' ScheduleActivityTaskDecisionAttributes Text
satdaActivityId = lens _satdaActivityId (\ s a -> s{_satdaActivityId = a});

instance ToJSON
         ScheduleActivityTaskDecisionAttributes where
        toJSON ScheduleActivityTaskDecisionAttributes'{..}
          = object
              ["control" .= _satdaControl,
               "scheduleToCloseTimeout" .=
                 _satdaScheduleToCloseTimeout,
               "heartbeatTimeout" .= _satdaHeartbeatTimeout,
               "input" .= _satdaInput, "taskList" .= _satdaTaskList,
               "taskPriority" .= _satdaTaskPriority,
               "scheduleToStartTimeout" .=
                 _satdaScheduleToStartTimeout,
               "startToCloseTimeout" .= _satdaStartToCloseTimeout,
               "activityType" .= _satdaActivityType,
               "activityId" .= _satdaActivityId]

-- | Provides details of the 'ScheduleActivityTaskFailed' event.
--
-- /See:/ 'scheduleActivityTaskFailedEventAttributes' smart constructor.
data ScheduleActivityTaskFailedEventAttributes = ScheduleActivityTaskFailedEventAttributes'
    { _satfeaActivityType                 :: !ActivityType
    , _satfeaActivityId                   :: !Text
    , _satfeaCause                        :: !ScheduleActivityTaskFailedCause
    , _satfeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleActivityTaskFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'satfeaActivityType'
--
-- * 'satfeaActivityId'
--
-- * 'satfeaCause'
--
-- * 'satfeaDecisionTaskCompletedEventId'
scheduleActivityTaskFailedEventAttributes
    :: ActivityType -- ^ 'satfeaActivityType'
    -> Text -- ^ 'satfeaActivityId'
    -> ScheduleActivityTaskFailedCause -- ^ 'satfeaCause'
    -> Integer -- ^ 'satfeaDecisionTaskCompletedEventId'
    -> ScheduleActivityTaskFailedEventAttributes
scheduleActivityTaskFailedEventAttributes pActivityType_ pActivityId_ pCause_ pDecisionTaskCompletedEventId_ =
    ScheduleActivityTaskFailedEventAttributes'
    { _satfeaActivityType = pActivityType_
    , _satfeaActivityId = pActivityId_
    , _satfeaCause = pCause_
    , _satfeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The activity type provided in the 'ScheduleActivityTask' decision that
-- failed.
satfeaActivityType :: Lens' ScheduleActivityTaskFailedEventAttributes ActivityType
satfeaActivityType = lens _satfeaActivityType (\ s a -> s{_satfeaActivityType = a});

-- | The activityId provided in the 'ScheduleActivityTask' decision that
-- failed.
satfeaActivityId :: Lens' ScheduleActivityTaskFailedEventAttributes Text
satfeaActivityId = lens _satfeaActivityId (\ s a -> s{_satfeaActivityId = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
satfeaCause :: Lens' ScheduleActivityTaskFailedEventAttributes ScheduleActivityTaskFailedCause
satfeaCause = lens _satfeaCause (\ s a -> s{_satfeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision that resulted in the scheduling of this activity task. This
-- information can be useful for diagnosing problems by tracing back the
-- chain of events leading up to this event.
satfeaDecisionTaskCompletedEventId :: Lens' ScheduleActivityTaskFailedEventAttributes Integer
satfeaDecisionTaskCompletedEventId = lens _satfeaDecisionTaskCompletedEventId (\ s a -> s{_satfeaDecisionTaskCompletedEventId = a});

instance FromJSON
         ScheduleActivityTaskFailedEventAttributes where
        parseJSON
          = withObject
              "ScheduleActivityTaskFailedEventAttributes"
              (\ x ->
                 ScheduleActivityTaskFailedEventAttributes' <$>
                   (x .: "activityType") <*> (x .: "activityId") <*>
                     (x .: "cause")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'ScheduleLambdaFunction' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   Constrain the following parameters by using a 'Condition' element
--     with the appropriate keys.
--     -   'activityType.name': String constraint. The key is
--         'swf:activityType.name'.
--     -   'activityType.version': String constraint. The key is
--         'swf:activityType.version'.
--     -   'taskList': String constraint. The key is 'swf:taskList.name'.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'scheduleLambdaFunctionDecisionAttributes' smart constructor.
data ScheduleLambdaFunctionDecisionAttributes = ScheduleLambdaFunctionDecisionAttributes'
    { _slfdaInput               :: !(Maybe Text)
    , _slfdaStartToCloseTimeout :: !(Maybe Text)
    , _slfdaId                  :: !Text
    , _slfdaName                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleLambdaFunctionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slfdaInput'
--
-- * 'slfdaStartToCloseTimeout'
--
-- * 'slfdaId'
--
-- * 'slfdaName'
scheduleLambdaFunctionDecisionAttributes
    :: Text -- ^ 'slfdaId'
    -> Text -- ^ 'slfdaName'
    -> ScheduleLambdaFunctionDecisionAttributes
scheduleLambdaFunctionDecisionAttributes pId_ pName_ =
    ScheduleLambdaFunctionDecisionAttributes'
    { _slfdaInput = Nothing
    , _slfdaStartToCloseTimeout = Nothing
    , _slfdaId = pId_
    , _slfdaName = pName_
    }

-- | The input provided to the AWS Lambda function.
slfdaInput :: Lens' ScheduleLambdaFunctionDecisionAttributes (Maybe Text)
slfdaInput = lens _slfdaInput (\ s a -> s{_slfdaInput = a});

-- | If set, specifies the maximum duration the function may take to execute.
slfdaStartToCloseTimeout :: Lens' ScheduleLambdaFunctionDecisionAttributes (Maybe Text)
slfdaStartToCloseTimeout = lens _slfdaStartToCloseTimeout (\ s a -> s{_slfdaStartToCloseTimeout = a});

-- | __Required.__ The SWF 'id' of the AWS Lambda task.
--
-- The specified string must not start or end with whitespace. It must not
-- contain a ':' (colon), '\/' (slash), '|' (vertical bar), or any control
-- characters (\\u0000-\\u001f | \\u007f - \\u009f). Also, it must not
-- contain the literal string quotarnquot.
slfdaId :: Lens' ScheduleLambdaFunctionDecisionAttributes Text
slfdaId = lens _slfdaId (\ s a -> s{_slfdaId = a});

-- | __Required.__ The name of the AWS Lambda function to invoke.
slfdaName :: Lens' ScheduleLambdaFunctionDecisionAttributes Text
slfdaName = lens _slfdaName (\ s a -> s{_slfdaName = a});

instance ToJSON
         ScheduleLambdaFunctionDecisionAttributes where
        toJSON ScheduleLambdaFunctionDecisionAttributes'{..}
          = object
              ["input" .= _slfdaInput,
               "startToCloseTimeout" .= _slfdaStartToCloseTimeout,
               "id" .= _slfdaId, "name" .= _slfdaName]

-- | Provides details for the 'ScheduleLambdaFunctionFailed' event.
--
-- /See:/ 'scheduleLambdaFunctionFailedEventAttributes' smart constructor.
data ScheduleLambdaFunctionFailedEventAttributes = ScheduleLambdaFunctionFailedEventAttributes'
    { _slffeaId                           :: !Text
    , _slffeaName                         :: !Text
    , _slffeaCause                        :: !ScheduleLambdaFunctionFailedCause
    , _slffeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleLambdaFunctionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slffeaId'
--
-- * 'slffeaName'
--
-- * 'slffeaCause'
--
-- * 'slffeaDecisionTaskCompletedEventId'
scheduleLambdaFunctionFailedEventAttributes
    :: Text -- ^ 'slffeaId'
    -> Text -- ^ 'slffeaName'
    -> ScheduleLambdaFunctionFailedCause -- ^ 'slffeaCause'
    -> Integer -- ^ 'slffeaDecisionTaskCompletedEventId'
    -> ScheduleLambdaFunctionFailedEventAttributes
scheduleLambdaFunctionFailedEventAttributes pId_ pName_ pCause_ pDecisionTaskCompletedEventId_ =
    ScheduleLambdaFunctionFailedEventAttributes'
    { _slffeaId = pId_
    , _slffeaName = pName_
    , _slffeaCause = pCause_
    , _slffeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The unique Amazon SWF ID of the AWS Lambda task.
slffeaId :: Lens' ScheduleLambdaFunctionFailedEventAttributes Text
slffeaId = lens _slffeaId (\ s a -> s{_slffeaId = a});

-- | The name of the scheduled AWS Lambda function.
slffeaName :: Lens' ScheduleLambdaFunctionFailedEventAttributes Text
slffeaName = lens _slffeaName (\ s a -> s{_slffeaName = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
slffeaCause :: Lens' ScheduleLambdaFunctionFailedEventAttributes ScheduleLambdaFunctionFailedCause
slffeaCause = lens _slffeaCause (\ s a -> s{_slffeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision that resulted in the scheduling of this AWS Lambda function.
-- This information can be useful for diagnosing problems by tracing back
-- the chain of events leading up to this event.
slffeaDecisionTaskCompletedEventId :: Lens' ScheduleLambdaFunctionFailedEventAttributes Integer
slffeaDecisionTaskCompletedEventId = lens _slffeaDecisionTaskCompletedEventId (\ s a -> s{_slffeaDecisionTaskCompletedEventId = a});

instance FromJSON
         ScheduleLambdaFunctionFailedEventAttributes where
        parseJSON
          = withObject
              "ScheduleLambdaFunctionFailedEventAttributes"
              (\ x ->
                 ScheduleLambdaFunctionFailedEventAttributes' <$>
                   (x .: "id") <*> (x .: "name") <*> (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'SignalExternalWorkflowExecution' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'signalExternalWorkflowExecutionDecisionAttributes' smart constructor.
data SignalExternalWorkflowExecutionDecisionAttributes = SignalExternalWorkflowExecutionDecisionAttributes'
    { _sewedaControl    :: !(Maybe Text)
    , _sewedaInput      :: !(Maybe Text)
    , _sewedaRunId      :: !(Maybe Text)
    , _sewedaWorkflowId :: !Text
    , _sewedaSignalName :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SignalExternalWorkflowExecutionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sewedaControl'
--
-- * 'sewedaInput'
--
-- * 'sewedaRunId'
--
-- * 'sewedaWorkflowId'
--
-- * 'sewedaSignalName'
signalExternalWorkflowExecutionDecisionAttributes
    :: Text -- ^ 'sewedaWorkflowId'
    -> Text -- ^ 'sewedaSignalName'
    -> SignalExternalWorkflowExecutionDecisionAttributes
signalExternalWorkflowExecutionDecisionAttributes pWorkflowId_ pSignalName_ =
    SignalExternalWorkflowExecutionDecisionAttributes'
    { _sewedaControl = Nothing
    , _sewedaInput = Nothing
    , _sewedaRunId = Nothing
    , _sewedaWorkflowId = pWorkflowId_
    , _sewedaSignalName = pSignalName_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent decision tasks.
sewedaControl :: Lens' SignalExternalWorkflowExecutionDecisionAttributes (Maybe Text)
sewedaControl = lens _sewedaControl (\ s a -> s{_sewedaControl = a});

-- | /Optional./ Input data to be provided with the signal. The target
-- workflow execution will use the signal name and input data to process
-- the signal.
sewedaInput :: Lens' SignalExternalWorkflowExecutionDecisionAttributes (Maybe Text)
sewedaInput = lens _sewedaInput (\ s a -> s{_sewedaInput = a});

-- | The 'runId' of the workflow execution to be signaled.
sewedaRunId :: Lens' SignalExternalWorkflowExecutionDecisionAttributes (Maybe Text)
sewedaRunId = lens _sewedaRunId (\ s a -> s{_sewedaRunId = a});

-- | __Required.__ The 'workflowId' of the workflow execution to be signaled.
sewedaWorkflowId :: Lens' SignalExternalWorkflowExecutionDecisionAttributes Text
sewedaWorkflowId = lens _sewedaWorkflowId (\ s a -> s{_sewedaWorkflowId = a});

-- | __Required.__ The name of the signal.The target workflow execution will
-- use the signal name and input to process the signal.
sewedaSignalName :: Lens' SignalExternalWorkflowExecutionDecisionAttributes Text
sewedaSignalName = lens _sewedaSignalName (\ s a -> s{_sewedaSignalName = a});

instance ToJSON
         SignalExternalWorkflowExecutionDecisionAttributes
         where
        toJSON
          SignalExternalWorkflowExecutionDecisionAttributes'{..}
          = object
              ["control" .= _sewedaControl,
               "input" .= _sewedaInput, "runId" .= _sewedaRunId,
               "workflowId" .= _sewedaWorkflowId,
               "signalName" .= _sewedaSignalName]

-- | Provides details of the 'SignalExternalWorkflowExecutionFailed' event.
--
-- /See:/ 'signalExternalWorkflowExecutionFailedEventAttributes' smart constructor.
data SignalExternalWorkflowExecutionFailedEventAttributes = SignalExternalWorkflowExecutionFailedEventAttributes'
    { _sewefeaControl                      :: !(Maybe Text)
    , _sewefeaRunId                        :: !(Maybe Text)
    , _sewefeaWorkflowId                   :: !Text
    , _sewefeaCause                        :: !SignalExternalWorkflowExecutionFailedCause
    , _sewefeaInitiatedEventId             :: !Integer
    , _sewefeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SignalExternalWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sewefeaControl'
--
-- * 'sewefeaRunId'
--
-- * 'sewefeaWorkflowId'
--
-- * 'sewefeaCause'
--
-- * 'sewefeaInitiatedEventId'
--
-- * 'sewefeaDecisionTaskCompletedEventId'
signalExternalWorkflowExecutionFailedEventAttributes
    :: Text -- ^ 'sewefeaWorkflowId'
    -> SignalExternalWorkflowExecutionFailedCause -- ^ 'sewefeaCause'
    -> Integer -- ^ 'sewefeaInitiatedEventId'
    -> Integer -- ^ 'sewefeaDecisionTaskCompletedEventId'
    -> SignalExternalWorkflowExecutionFailedEventAttributes
signalExternalWorkflowExecutionFailedEventAttributes pWorkflowId_ pCause_ pInitiatedEventId_ pDecisionTaskCompletedEventId_ =
    SignalExternalWorkflowExecutionFailedEventAttributes'
    { _sewefeaControl = Nothing
    , _sewefeaRunId = Nothing
    , _sewefeaWorkflowId = pWorkflowId_
    , _sewefeaCause = pCause_
    , _sewefeaInitiatedEventId = pInitiatedEventId_
    , _sewefeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | Undocumented member.
sewefeaControl :: Lens' SignalExternalWorkflowExecutionFailedEventAttributes (Maybe Text)
sewefeaControl = lens _sewefeaControl (\ s a -> s{_sewefeaControl = a});

-- | The 'runId' of the external workflow execution that the signal was being
-- delivered to.
sewefeaRunId :: Lens' SignalExternalWorkflowExecutionFailedEventAttributes (Maybe Text)
sewefeaRunId = lens _sewefeaRunId (\ s a -> s{_sewefeaRunId = a});

-- | The 'workflowId' of the external workflow execution that the signal was
-- being delivered to.
sewefeaWorkflowId :: Lens' SignalExternalWorkflowExecutionFailedEventAttributes Text
sewefeaWorkflowId = lens _sewefeaWorkflowId (\ s a -> s{_sewefeaWorkflowId = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
sewefeaCause :: Lens' SignalExternalWorkflowExecutionFailedEventAttributes SignalExternalWorkflowExecutionFailedCause
sewefeaCause = lens _sewefeaCause (\ s a -> s{_sewefeaCause = a});

-- | The ID of the 'SignalExternalWorkflowExecutionInitiated' event
-- corresponding to the 'SignalExternalWorkflowExecution' decision to
-- request this signal. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
sewefeaInitiatedEventId :: Lens' SignalExternalWorkflowExecutionFailedEventAttributes Integer
sewefeaInitiatedEventId = lens _sewefeaInitiatedEventId (\ s a -> s{_sewefeaInitiatedEventId = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'SignalExternalWorkflowExecution'
-- decision for this signal. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
sewefeaDecisionTaskCompletedEventId :: Lens' SignalExternalWorkflowExecutionFailedEventAttributes Integer
sewefeaDecisionTaskCompletedEventId = lens _sewefeaDecisionTaskCompletedEventId (\ s a -> s{_sewefeaDecisionTaskCompletedEventId = a});

instance FromJSON
         SignalExternalWorkflowExecutionFailedEventAttributes
         where
        parseJSON
          = withObject
              "SignalExternalWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 SignalExternalWorkflowExecutionFailedEventAttributes'
                   <$>
                   (x .:? "control") <*> (x .:? "runId") <*>
                     (x .: "workflowId")
                     <*> (x .: "cause")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'SignalExternalWorkflowExecutionInitiated'
-- event.
--
-- /See:/ 'signalExternalWorkflowExecutionInitiatedEventAttributes' smart constructor.
data SignalExternalWorkflowExecutionInitiatedEventAttributes = SignalExternalWorkflowExecutionInitiatedEventAttributes'
    { _seweieaControl                      :: !(Maybe Text)
    , _seweieaInput                        :: !(Maybe Text)
    , _seweieaRunId                        :: !(Maybe Text)
    , _seweieaWorkflowId                   :: !Text
    , _seweieaSignalName                   :: !Text
    , _seweieaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SignalExternalWorkflowExecutionInitiatedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seweieaControl'
--
-- * 'seweieaInput'
--
-- * 'seweieaRunId'
--
-- * 'seweieaWorkflowId'
--
-- * 'seweieaSignalName'
--
-- * 'seweieaDecisionTaskCompletedEventId'
signalExternalWorkflowExecutionInitiatedEventAttributes
    :: Text -- ^ 'seweieaWorkflowId'
    -> Text -- ^ 'seweieaSignalName'
    -> Integer -- ^ 'seweieaDecisionTaskCompletedEventId'
    -> SignalExternalWorkflowExecutionInitiatedEventAttributes
signalExternalWorkflowExecutionInitiatedEventAttributes pWorkflowId_ pSignalName_ pDecisionTaskCompletedEventId_ =
    SignalExternalWorkflowExecutionInitiatedEventAttributes'
    { _seweieaControl = Nothing
    , _seweieaInput = Nothing
    , _seweieaRunId = Nothing
    , _seweieaWorkflowId = pWorkflowId_
    , _seweieaSignalName = pSignalName_
    , _seweieaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | /Optional./ data attached to the event that can be used by the decider
-- in subsequent decision tasks.
seweieaControl :: Lens' SignalExternalWorkflowExecutionInitiatedEventAttributes (Maybe Text)
seweieaControl = lens _seweieaControl (\ s a -> s{_seweieaControl = a});

-- | Input provided to the signal (if any).
seweieaInput :: Lens' SignalExternalWorkflowExecutionInitiatedEventAttributes (Maybe Text)
seweieaInput = lens _seweieaInput (\ s a -> s{_seweieaInput = a});

-- | The 'runId' of the external workflow execution to send the signal to.
seweieaRunId :: Lens' SignalExternalWorkflowExecutionInitiatedEventAttributes (Maybe Text)
seweieaRunId = lens _seweieaRunId (\ s a -> s{_seweieaRunId = a});

-- | The 'workflowId' of the external workflow execution.
seweieaWorkflowId :: Lens' SignalExternalWorkflowExecutionInitiatedEventAttributes Text
seweieaWorkflowId = lens _seweieaWorkflowId (\ s a -> s{_seweieaWorkflowId = a});

-- | The name of the signal.
seweieaSignalName :: Lens' SignalExternalWorkflowExecutionInitiatedEventAttributes Text
seweieaSignalName = lens _seweieaSignalName (\ s a -> s{_seweieaSignalName = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'SignalExternalWorkflowExecution'
-- decision for this signal. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
seweieaDecisionTaskCompletedEventId :: Lens' SignalExternalWorkflowExecutionInitiatedEventAttributes Integer
seweieaDecisionTaskCompletedEventId = lens _seweieaDecisionTaskCompletedEventId (\ s a -> s{_seweieaDecisionTaskCompletedEventId = a});

instance FromJSON
         SignalExternalWorkflowExecutionInitiatedEventAttributes
         where
        parseJSON
          = withObject
              "SignalExternalWorkflowExecutionInitiatedEventAttributes"
              (\ x ->
                 SignalExternalWorkflowExecutionInitiatedEventAttributes'
                   <$>
                   (x .:? "control") <*> (x .:? "input") <*>
                     (x .:? "runId")
                     <*> (x .: "workflowId")
                     <*> (x .: "signalName")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'StartChildWorkflowExecution' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   Constrain the following parameters by using a 'Condition' element
--     with the appropriate keys.
--     -   'tagList.member.N': The key is \"swf:tagList.N\" where N is the
--         tag number from 0 to 4, inclusive.
--     -   'taskList': String constraint. The key is 'swf:taskList.name'.
--     -   'workflowType.name': String constraint. The key is
--         'swf:workflowType.name'.
--     -   'workflowType.version': String constraint. The key is
--         'swf:workflowType.version'.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'startChildWorkflowExecutionDecisionAttributes' smart constructor.
data StartChildWorkflowExecutionDecisionAttributes = StartChildWorkflowExecutionDecisionAttributes'
    { _scwedaControl                      :: !(Maybe Text)
    , _scwedaTagList                      :: !(Maybe [Text])
    , _scwedaTaskStartToCloseTimeout      :: !(Maybe Text)
    , _scwedaLambdaRole                   :: !(Maybe Text)
    , _scwedaInput                        :: !(Maybe Text)
    , _scwedaExecutionStartToCloseTimeout :: !(Maybe Text)
    , _scwedaTaskList                     :: !(Maybe TaskList)
    , _scwedaTaskPriority                 :: !(Maybe Text)
    , _scwedaChildPolicy                  :: !(Maybe ChildPolicy)
    , _scwedaWorkflowType                 :: !WorkflowType
    , _scwedaWorkflowId                   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartChildWorkflowExecutionDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scwedaControl'
--
-- * 'scwedaTagList'
--
-- * 'scwedaTaskStartToCloseTimeout'
--
-- * 'scwedaLambdaRole'
--
-- * 'scwedaInput'
--
-- * 'scwedaExecutionStartToCloseTimeout'
--
-- * 'scwedaTaskList'
--
-- * 'scwedaTaskPriority'
--
-- * 'scwedaChildPolicy'
--
-- * 'scwedaWorkflowType'
--
-- * 'scwedaWorkflowId'
startChildWorkflowExecutionDecisionAttributes
    :: WorkflowType -- ^ 'scwedaWorkflowType'
    -> Text -- ^ 'scwedaWorkflowId'
    -> StartChildWorkflowExecutionDecisionAttributes
startChildWorkflowExecutionDecisionAttributes pWorkflowType_ pWorkflowId_ =
    StartChildWorkflowExecutionDecisionAttributes'
    { _scwedaControl = Nothing
    , _scwedaTagList = Nothing
    , _scwedaTaskStartToCloseTimeout = Nothing
    , _scwedaLambdaRole = Nothing
    , _scwedaInput = Nothing
    , _scwedaExecutionStartToCloseTimeout = Nothing
    , _scwedaTaskList = Nothing
    , _scwedaTaskPriority = Nothing
    , _scwedaChildPolicy = Nothing
    , _scwedaWorkflowType = pWorkflowType_
    , _scwedaWorkflowId = pWorkflowId_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent workflow tasks. This data is not sent to the child
-- workflow execution.
scwedaControl :: Lens' StartChildWorkflowExecutionDecisionAttributes (Maybe Text)
scwedaControl = lens _scwedaControl (\ s a -> s{_scwedaControl = a});

-- | The list of tags to associate with the child workflow execution. A
-- maximum of 5 tags can be specified. You can list workflow executions
-- with a specific tag by calling ListOpenWorkflowExecutions or
-- ListClosedWorkflowExecutions and specifying a TagFilter.
scwedaTagList :: Lens' StartChildWorkflowExecutionDecisionAttributes [Text]
scwedaTagList = lens _scwedaTagList (\ s a -> s{_scwedaTagList = a}) . _Default . _Coerce;

-- | Specifies the maximum duration of decision tasks for this workflow
-- execution. This parameter overrides the 'defaultTaskStartToCloseTimout'
-- specified when registering the workflow type using RegisterWorkflowType.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
--
-- A task start-to-close timeout for this workflow execution must be
-- specified either as a default for the workflow type or through this
-- parameter. If neither this parameter is set nor a default task
-- start-to-close timeout was specified at registration time then a fault
-- will be returned.
scwedaTaskStartToCloseTimeout :: Lens' StartChildWorkflowExecutionDecisionAttributes (Maybe Text)
scwedaTaskStartToCloseTimeout = lens _scwedaTaskStartToCloseTimeout (\ s a -> s{_scwedaTaskStartToCloseTimeout = a});

-- | The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda
-- functions.
--
-- In order for this workflow execution to invoke AWS Lambda functions, an
-- appropriate IAM role must be specified either as a default for the
-- workflow type or through this field.
scwedaLambdaRole :: Lens' StartChildWorkflowExecutionDecisionAttributes (Maybe Text)
scwedaLambdaRole = lens _scwedaLambdaRole (\ s a -> s{_scwedaLambdaRole = a});

-- | The input to be provided to the workflow execution.
scwedaInput :: Lens' StartChildWorkflowExecutionDecisionAttributes (Maybe Text)
scwedaInput = lens _scwedaInput (\ s a -> s{_scwedaInput = a});

-- | The total duration for this workflow execution. This overrides the
-- defaultExecutionStartToCloseTimeout specified when registering the
-- workflow type.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
--
-- An execution start-to-close timeout for this workflow execution must be
-- specified either as a default for the workflow type or through this
-- parameter. If neither this parameter is set nor a default execution
-- start-to-close timeout was specified at registration time then a fault
-- will be returned.
scwedaExecutionStartToCloseTimeout :: Lens' StartChildWorkflowExecutionDecisionAttributes (Maybe Text)
scwedaExecutionStartToCloseTimeout = lens _scwedaExecutionStartToCloseTimeout (\ s a -> s{_scwedaExecutionStartToCloseTimeout = a});

-- | The name of the task list to be used for decision tasks of the child
-- workflow execution.
--
-- A task list for this workflow execution must be specified either as a
-- default for the workflow type or through this parameter. If neither this
-- parameter is set nor a default task list was specified at registration
-- time then a fault will be returned.
--
-- The specified string must not start or end with whitespace. It must not
-- contain a ':' (colon), '\/' (slash), '|' (vertical bar), or any control
-- characters (\\u0000-\\u001f | \\u007f - \\u009f). Also, it must not
-- contain the literal string quotarnquot.
scwedaTaskList :: Lens' StartChildWorkflowExecutionDecisionAttributes (Maybe TaskList)
scwedaTaskList = lens _scwedaTaskList (\ s a -> s{_scwedaTaskList = a});

-- | /Optional./ A task priority that, if set, specifies the priority for a
-- decision task of this workflow execution. This overrides the
-- defaultTaskPriority specified when registering the workflow type. Valid
-- values are integers that range from Java\'s 'Integer.MIN_VALUE'
-- (-2147483648) to 'Integer.MAX_VALUE' (2147483647). Higher numbers
-- indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
scwedaTaskPriority :: Lens' StartChildWorkflowExecutionDecisionAttributes (Maybe Text)
scwedaTaskPriority = lens _scwedaTaskPriority (\ s a -> s{_scwedaTaskPriority = a});

-- | /Optional./ If set, specifies the policy to use for the child workflow
-- executions if the workflow execution being started is terminated by
-- calling the TerminateWorkflowExecution action explicitly or due to an
-- expired timeout. This policy overrides the default child policy
-- specified when registering the workflow type using RegisterWorkflowType.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
--
-- A child policy for this workflow execution must be specified either as a
-- default for the workflow type or through this parameter. If neither this
-- parameter is set nor a default child policy was specified at
-- registration time then a fault will be returned.
scwedaChildPolicy :: Lens' StartChildWorkflowExecutionDecisionAttributes (Maybe ChildPolicy)
scwedaChildPolicy = lens _scwedaChildPolicy (\ s a -> s{_scwedaChildPolicy = a});

-- | __Required.__ The type of the workflow execution to be started.
scwedaWorkflowType :: Lens' StartChildWorkflowExecutionDecisionAttributes WorkflowType
scwedaWorkflowType = lens _scwedaWorkflowType (\ s a -> s{_scwedaWorkflowType = a});

-- | __Required.__ The 'workflowId' of the workflow execution.
--
-- The specified string must not start or end with whitespace. It must not
-- contain a ':' (colon), '\/' (slash), '|' (vertical bar), or any control
-- characters (\\u0000-\\u001f | \\u007f - \\u009f). Also, it must not
-- contain the literal string quotarnquot.
scwedaWorkflowId :: Lens' StartChildWorkflowExecutionDecisionAttributes Text
scwedaWorkflowId = lens _scwedaWorkflowId (\ s a -> s{_scwedaWorkflowId = a});

instance ToJSON
         StartChildWorkflowExecutionDecisionAttributes where
        toJSON
          StartChildWorkflowExecutionDecisionAttributes'{..}
          = object
              ["control" .= _scwedaControl,
               "tagList" .= _scwedaTagList,
               "taskStartToCloseTimeout" .=
                 _scwedaTaskStartToCloseTimeout,
               "lambdaRole" .= _scwedaLambdaRole,
               "input" .= _scwedaInput,
               "executionStartToCloseTimeout" .=
                 _scwedaExecutionStartToCloseTimeout,
               "taskList" .= _scwedaTaskList,
               "taskPriority" .= _scwedaTaskPriority,
               "childPolicy" .= _scwedaChildPolicy,
               "workflowType" .= _scwedaWorkflowType,
               "workflowId" .= _scwedaWorkflowId]

-- | Provides details of the 'StartChildWorkflowExecutionFailed' event.
--
-- /See:/ 'startChildWorkflowExecutionFailedEventAttributes' smart constructor.
data StartChildWorkflowExecutionFailedEventAttributes = StartChildWorkflowExecutionFailedEventAttributes'
    { _scwefeaControl                      :: !(Maybe Text)
    , _scwefeaWorkflowType                 :: !WorkflowType
    , _scwefeaCause                        :: !StartChildWorkflowExecutionFailedCause
    , _scwefeaWorkflowId                   :: !Text
    , _scwefeaInitiatedEventId             :: !Integer
    , _scwefeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartChildWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scwefeaControl'
--
-- * 'scwefeaWorkflowType'
--
-- * 'scwefeaCause'
--
-- * 'scwefeaWorkflowId'
--
-- * 'scwefeaInitiatedEventId'
--
-- * 'scwefeaDecisionTaskCompletedEventId'
startChildWorkflowExecutionFailedEventAttributes
    :: WorkflowType -- ^ 'scwefeaWorkflowType'
    -> StartChildWorkflowExecutionFailedCause -- ^ 'scwefeaCause'
    -> Text -- ^ 'scwefeaWorkflowId'
    -> Integer -- ^ 'scwefeaInitiatedEventId'
    -> Integer -- ^ 'scwefeaDecisionTaskCompletedEventId'
    -> StartChildWorkflowExecutionFailedEventAttributes
startChildWorkflowExecutionFailedEventAttributes pWorkflowType_ pCause_ pWorkflowId_ pInitiatedEventId_ pDecisionTaskCompletedEventId_ =
    StartChildWorkflowExecutionFailedEventAttributes'
    { _scwefeaControl = Nothing
    , _scwefeaWorkflowType = pWorkflowType_
    , _scwefeaCause = pCause_
    , _scwefeaWorkflowId = pWorkflowId_
    , _scwefeaInitiatedEventId = pInitiatedEventId_
    , _scwefeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | Undocumented member.
scwefeaControl :: Lens' StartChildWorkflowExecutionFailedEventAttributes (Maybe Text)
scwefeaControl = lens _scwefeaControl (\ s a -> s{_scwefeaControl = a});

-- | The workflow type provided in the 'StartChildWorkflowExecution' decision
-- that failed.
scwefeaWorkflowType :: Lens' StartChildWorkflowExecutionFailedEventAttributes WorkflowType
scwefeaWorkflowType = lens _scwefeaWorkflowType (\ s a -> s{_scwefeaWorkflowType = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
scwefeaCause :: Lens' StartChildWorkflowExecutionFailedEventAttributes StartChildWorkflowExecutionFailedCause
scwefeaCause = lens _scwefeaCause (\ s a -> s{_scwefeaCause = a});

-- | The 'workflowId' of the child workflow execution.
scwefeaWorkflowId :: Lens' StartChildWorkflowExecutionFailedEventAttributes Text
scwefeaWorkflowId = lens _scwefeaWorkflowId (\ s a -> s{_scwefeaWorkflowId = a});

-- | The ID of the 'StartChildWorkflowExecutionInitiated' event corresponding
-- to the 'StartChildWorkflowExecution' decision to start this child
-- workflow execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
scwefeaInitiatedEventId :: Lens' StartChildWorkflowExecutionFailedEventAttributes Integer
scwefeaInitiatedEventId = lens _scwefeaInitiatedEventId (\ s a -> s{_scwefeaInitiatedEventId = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'StartChildWorkflowExecution'
-- decision to request this child workflow execution. This information can
-- be useful for diagnosing problems by tracing back the cause of events.
scwefeaDecisionTaskCompletedEventId :: Lens' StartChildWorkflowExecutionFailedEventAttributes Integer
scwefeaDecisionTaskCompletedEventId = lens _scwefeaDecisionTaskCompletedEventId (\ s a -> s{_scwefeaDecisionTaskCompletedEventId = a});

instance FromJSON
         StartChildWorkflowExecutionFailedEventAttributes
         where
        parseJSON
          = withObject
              "StartChildWorkflowExecutionFailedEventAttributes"
              (\ x ->
                 StartChildWorkflowExecutionFailedEventAttributes' <$>
                   (x .:? "control") <*> (x .: "workflowType") <*>
                     (x .: "cause")
                     <*> (x .: "workflowId")
                     <*> (x .: "initiatedEventId")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'StartChildWorkflowExecutionInitiated' event.
--
-- /See:/ 'startChildWorkflowExecutionInitiatedEventAttributes' smart constructor.
data StartChildWorkflowExecutionInitiatedEventAttributes = StartChildWorkflowExecutionInitiatedEventAttributes'
    { _scweieaControl                      :: !(Maybe Text)
    , _scweieaTagList                      :: !(Maybe [Text])
    , _scweieaTaskStartToCloseTimeout      :: !(Maybe Text)
    , _scweieaLambdaRole                   :: !(Maybe Text)
    , _scweieaInput                        :: !(Maybe Text)
    , _scweieaExecutionStartToCloseTimeout :: !(Maybe Text)
    , _scweieaTaskPriority                 :: !(Maybe Text)
    , _scweieaWorkflowId                   :: !Text
    , _scweieaWorkflowType                 :: !WorkflowType
    , _scweieaTaskList                     :: !TaskList
    , _scweieaDecisionTaskCompletedEventId :: !Integer
    , _scweieaChildPolicy                  :: !ChildPolicy
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartChildWorkflowExecutionInitiatedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scweieaControl'
--
-- * 'scweieaTagList'
--
-- * 'scweieaTaskStartToCloseTimeout'
--
-- * 'scweieaLambdaRole'
--
-- * 'scweieaInput'
--
-- * 'scweieaExecutionStartToCloseTimeout'
--
-- * 'scweieaTaskPriority'
--
-- * 'scweieaWorkflowId'
--
-- * 'scweieaWorkflowType'
--
-- * 'scweieaTaskList'
--
-- * 'scweieaDecisionTaskCompletedEventId'
--
-- * 'scweieaChildPolicy'
startChildWorkflowExecutionInitiatedEventAttributes
    :: Text -- ^ 'scweieaWorkflowId'
    -> WorkflowType -- ^ 'scweieaWorkflowType'
    -> TaskList -- ^ 'scweieaTaskList'
    -> Integer -- ^ 'scweieaDecisionTaskCompletedEventId'
    -> ChildPolicy -- ^ 'scweieaChildPolicy'
    -> StartChildWorkflowExecutionInitiatedEventAttributes
startChildWorkflowExecutionInitiatedEventAttributes pWorkflowId_ pWorkflowType_ pTaskList_ pDecisionTaskCompletedEventId_ pChildPolicy_ =
    StartChildWorkflowExecutionInitiatedEventAttributes'
    { _scweieaControl = Nothing
    , _scweieaTagList = Nothing
    , _scweieaTaskStartToCloseTimeout = Nothing
    , _scweieaLambdaRole = Nothing
    , _scweieaInput = Nothing
    , _scweieaExecutionStartToCloseTimeout = Nothing
    , _scweieaTaskPriority = Nothing
    , _scweieaWorkflowId = pWorkflowId_
    , _scweieaWorkflowType = pWorkflowType_
    , _scweieaTaskList = pTaskList_
    , _scweieaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    , _scweieaChildPolicy = pChildPolicy_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent decision tasks. This data is not sent to the activity.
scweieaControl :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes (Maybe Text)
scweieaControl = lens _scweieaControl (\ s a -> s{_scweieaControl = a});

-- | The list of tags to associated with the child workflow execution.
scweieaTagList :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes [Text]
scweieaTagList = lens _scweieaTagList (\ s a -> s{_scweieaTagList = a}) . _Default . _Coerce;

-- | The maximum duration allowed for the decision tasks for this workflow
-- execution.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
scweieaTaskStartToCloseTimeout :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes (Maybe Text)
scweieaTaskStartToCloseTimeout = lens _scweieaTaskStartToCloseTimeout (\ s a -> s{_scweieaTaskStartToCloseTimeout = a});

-- | The IAM role attached to this workflow execution to use when invoking
-- AWS Lambda functions.
scweieaLambdaRole :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes (Maybe Text)
scweieaLambdaRole = lens _scweieaLambdaRole (\ s a -> s{_scweieaLambdaRole = a});

-- | The inputs provided to the child workflow execution (if any).
scweieaInput :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes (Maybe Text)
scweieaInput = lens _scweieaInput (\ s a -> s{_scweieaInput = a});

-- | The maximum duration for the child workflow execution. If the workflow
-- execution is not closed within this duration, it will be timed out and
-- force terminated.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
scweieaExecutionStartToCloseTimeout :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes (Maybe Text)
scweieaExecutionStartToCloseTimeout = lens _scweieaExecutionStartToCloseTimeout (\ s a -> s{_scweieaExecutionStartToCloseTimeout = a});

-- | /Optional./ The priority assigned for the decision tasks for this
-- workflow execution. Valid values are integers that range from Java\'s
-- 'Integer.MIN_VALUE' (-2147483648) to 'Integer.MAX_VALUE' (2147483647).
-- Higher numbers indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
scweieaTaskPriority :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes (Maybe Text)
scweieaTaskPriority = lens _scweieaTaskPriority (\ s a -> s{_scweieaTaskPriority = a});

-- | The 'workflowId' of the child workflow execution.
scweieaWorkflowId :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes Text
scweieaWorkflowId = lens _scweieaWorkflowId (\ s a -> s{_scweieaWorkflowId = a});

-- | The type of the child workflow execution.
scweieaWorkflowType :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes WorkflowType
scweieaWorkflowType = lens _scweieaWorkflowType (\ s a -> s{_scweieaWorkflowType = a});

-- | The name of the task list used for the decision tasks of the child
-- workflow execution.
scweieaTaskList :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes TaskList
scweieaTaskList = lens _scweieaTaskList (\ s a -> s{_scweieaTaskList = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'StartChildWorkflowExecution'
-- decision to request this child workflow execution. This information can
-- be useful for diagnosing problems by tracing back the cause of events.
scweieaDecisionTaskCompletedEventId :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes Integer
scweieaDecisionTaskCompletedEventId = lens _scweieaDecisionTaskCompletedEventId (\ s a -> s{_scweieaDecisionTaskCompletedEventId = a});

-- | The policy to use for the child workflow executions if this execution
-- gets terminated by explicitly calling the TerminateWorkflowExecution
-- action or due to an expired timeout.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
scweieaChildPolicy :: Lens' StartChildWorkflowExecutionInitiatedEventAttributes ChildPolicy
scweieaChildPolicy = lens _scweieaChildPolicy (\ s a -> s{_scweieaChildPolicy = a});

instance FromJSON
         StartChildWorkflowExecutionInitiatedEventAttributes
         where
        parseJSON
          = withObject
              "StartChildWorkflowExecutionInitiatedEventAttributes"
              (\ x ->
                 StartChildWorkflowExecutionInitiatedEventAttributes'
                   <$>
                   (x .:? "control") <*> (x .:? "tagList" .!= mempty)
                     <*> (x .:? "taskStartToCloseTimeout")
                     <*> (x .:? "lambdaRole")
                     <*> (x .:? "input")
                     <*> (x .:? "executionStartToCloseTimeout")
                     <*> (x .:? "taskPriority")
                     <*> (x .: "workflowId")
                     <*> (x .: "workflowType")
                     <*> (x .: "taskList")
                     <*> (x .: "decisionTaskCompletedEventId")
                     <*> (x .: "childPolicy"))

-- | Provides details for the 'StartLambdaFunctionFailed' event.
--
-- /See:/ 'startLambdaFunctionFailedEventAttributes' smart constructor.
data StartLambdaFunctionFailedEventAttributes = StartLambdaFunctionFailedEventAttributes'
    { _sScheduledEventId :: !(Maybe Integer)
    , _sCause            :: !(Maybe StartLambdaFunctionFailedCause)
    , _sMessage          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartLambdaFunctionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sScheduledEventId'
--
-- * 'sCause'
--
-- * 'sMessage'
startLambdaFunctionFailedEventAttributes
    :: StartLambdaFunctionFailedEventAttributes
startLambdaFunctionFailedEventAttributes =
    StartLambdaFunctionFailedEventAttributes'
    { _sScheduledEventId = Nothing
    , _sCause = Nothing
    , _sMessage = Nothing
    }

-- | The ID of the 'LambdaFunctionScheduled' event that was recorded when
-- this AWS Lambda function was scheduled. This information can be useful
-- for diagnosing problems by tracing back the chain of events leading up
-- to this event.
sScheduledEventId :: Lens' StartLambdaFunctionFailedEventAttributes (Maybe Integer)
sScheduledEventId = lens _sScheduledEventId (\ s a -> s{_sScheduledEventId = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
sCause :: Lens' StartLambdaFunctionFailedEventAttributes (Maybe StartLambdaFunctionFailedCause)
sCause = lens _sCause (\ s a -> s{_sCause = a});

-- | The error message (if any).
sMessage :: Lens' StartLambdaFunctionFailedEventAttributes (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a});

instance FromJSON
         StartLambdaFunctionFailedEventAttributes where
        parseJSON
          = withObject
              "StartLambdaFunctionFailedEventAttributes"
              (\ x ->
                 StartLambdaFunctionFailedEventAttributes' <$>
                   (x .:? "scheduledEventId") <*> (x .:? "cause") <*>
                     (x .:? "message"))

-- | Provides details of the 'StartTimer' decision.
--
-- __Access Control__
--
-- You can use IAM policies to control this decision\'s access to Amazon
-- SWF resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ 'startTimerDecisionAttributes' smart constructor.
data StartTimerDecisionAttributes = StartTimerDecisionAttributes'
    { _stdaControl            :: !(Maybe Text)
    , _stdaTimerId            :: !Text
    , _stdaStartToFireTimeout :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartTimerDecisionAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stdaControl'
--
-- * 'stdaTimerId'
--
-- * 'stdaStartToFireTimeout'
startTimerDecisionAttributes
    :: Text -- ^ 'stdaTimerId'
    -> Text -- ^ 'stdaStartToFireTimeout'
    -> StartTimerDecisionAttributes
startTimerDecisionAttributes pTimerId_ pStartToFireTimeout_ =
    StartTimerDecisionAttributes'
    { _stdaControl = Nothing
    , _stdaTimerId = pTimerId_
    , _stdaStartToFireTimeout = pStartToFireTimeout_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent workflow tasks.
stdaControl :: Lens' StartTimerDecisionAttributes (Maybe Text)
stdaControl = lens _stdaControl (\ s a -> s{_stdaControl = a});

-- | __Required.__ The unique ID of the timer.
--
-- The specified string must not start or end with whitespace. It must not
-- contain a ':' (colon), '\/' (slash), '|' (vertical bar), or any control
-- characters (\\u0000-\\u001f | \\u007f - \\u009f). Also, it must not
-- contain the literal string quotarnquot.
stdaTimerId :: Lens' StartTimerDecisionAttributes Text
stdaTimerId = lens _stdaTimerId (\ s a -> s{_stdaTimerId = a});

-- | __Required.__ The duration to wait before firing the timer.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0.
stdaStartToFireTimeout :: Lens' StartTimerDecisionAttributes Text
stdaStartToFireTimeout = lens _stdaStartToFireTimeout (\ s a -> s{_stdaStartToFireTimeout = a});

instance ToJSON StartTimerDecisionAttributes where
        toJSON StartTimerDecisionAttributes'{..}
          = object
              ["control" .= _stdaControl,
               "timerId" .= _stdaTimerId,
               "startToFireTimeout" .= _stdaStartToFireTimeout]

-- | Provides details of the 'StartTimerFailed' event.
--
-- /See:/ 'startTimerFailedEventAttributes' smart constructor.
data StartTimerFailedEventAttributes = StartTimerFailedEventAttributes'
    { _stfeaTimerId                      :: !Text
    , _stfeaCause                        :: !StartTimerFailedCause
    , _stfeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StartTimerFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stfeaTimerId'
--
-- * 'stfeaCause'
--
-- * 'stfeaDecisionTaskCompletedEventId'
startTimerFailedEventAttributes
    :: Text -- ^ 'stfeaTimerId'
    -> StartTimerFailedCause -- ^ 'stfeaCause'
    -> Integer -- ^ 'stfeaDecisionTaskCompletedEventId'
    -> StartTimerFailedEventAttributes
startTimerFailedEventAttributes pTimerId_ pCause_ pDecisionTaskCompletedEventId_ =
    StartTimerFailedEventAttributes'
    { _stfeaTimerId = pTimerId_
    , _stfeaCause = pCause_
    , _stfeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The timerId provided in the 'StartTimer' decision that failed.
stfeaTimerId :: Lens' StartTimerFailedEventAttributes Text
stfeaTimerId = lens _stfeaTimerId (\ s a -> s{_stfeaTimerId = a});

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If __cause__ is set to OPERATION_NOT_PERMITTED, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
stfeaCause :: Lens' StartTimerFailedEventAttributes StartTimerFailedCause
stfeaCause = lens _stfeaCause (\ s a -> s{_stfeaCause = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'StartTimer' decision for this
-- activity task. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
stfeaDecisionTaskCompletedEventId :: Lens' StartTimerFailedEventAttributes Integer
stfeaDecisionTaskCompletedEventId = lens _stfeaDecisionTaskCompletedEventId (\ s a -> s{_stfeaDecisionTaskCompletedEventId = a});

instance FromJSON StartTimerFailedEventAttributes
         where
        parseJSON
          = withObject "StartTimerFailedEventAttributes"
              (\ x ->
                 StartTimerFailedEventAttributes' <$>
                   (x .: "timerId") <*> (x .: "cause") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Used to filter the workflow executions in visibility APIs based on a
-- tag.
--
-- /See:/ 'tagFilter' smart constructor.
newtype TagFilter = TagFilter'
    { _tfTag :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TagFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfTag'
tagFilter
    :: Text -- ^ 'tfTag'
    -> TagFilter
tagFilter pTag_ =
    TagFilter'
    { _tfTag = pTag_
    }

-- | __Required.__ Specifies the tag that must be associated with the
-- execution for it to meet the filter criteria.
tfTag :: Lens' TagFilter Text
tfTag = lens _tfTag (\ s a -> s{_tfTag = a});

instance ToJSON TagFilter where
        toJSON TagFilter'{..} = object ["tag" .= _tfTag]

-- | Represents a task list.
--
-- /See:/ 'taskList' smart constructor.
newtype TaskList = TaskList'
    { _tlName :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlName'
taskList
    :: Text -- ^ 'tlName'
    -> TaskList
taskList pName_ =
    TaskList'
    { _tlName = pName_
    }

-- | The name of the task list.
tlName :: Lens' TaskList Text
tlName = lens _tlName (\ s a -> s{_tlName = a});

instance FromJSON TaskList where
        parseJSON
          = withObject "TaskList"
              (\ x -> TaskList' <$> (x .: "name"))

instance ToJSON TaskList where
        toJSON TaskList'{..} = object ["name" .= _tlName]

-- | Provides details of the 'TimerCanceled' event.
--
-- /See:/ 'timerCanceledEventAttributes' smart constructor.
data TimerCanceledEventAttributes = TimerCanceledEventAttributes'
    { _tceaTimerId                      :: !Text
    , _tceaStartedEventId               :: !Integer
    , _tceaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimerCanceledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tceaTimerId'
--
-- * 'tceaStartedEventId'
--
-- * 'tceaDecisionTaskCompletedEventId'
timerCanceledEventAttributes
    :: Text -- ^ 'tceaTimerId'
    -> Integer -- ^ 'tceaStartedEventId'
    -> Integer -- ^ 'tceaDecisionTaskCompletedEventId'
    -> TimerCanceledEventAttributes
timerCanceledEventAttributes pTimerId_ pStartedEventId_ pDecisionTaskCompletedEventId_ =
    TimerCanceledEventAttributes'
    { _tceaTimerId = pTimerId_
    , _tceaStartedEventId = pStartedEventId_
    , _tceaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The unique ID of the timer that was canceled.
tceaTimerId :: Lens' TimerCanceledEventAttributes Text
tceaTimerId = lens _tceaTimerId (\ s a -> s{_tceaTimerId = a});

-- | The ID of the 'TimerStarted' event that was recorded when this timer was
-- started. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
tceaStartedEventId :: Lens' TimerCanceledEventAttributes Integer
tceaStartedEventId = lens _tceaStartedEventId (\ s a -> s{_tceaStartedEventId = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'CancelTimer' decision to cancel this
-- timer. This information can be useful for diagnosing problems by tracing
-- back the chain of events leading up to this event.
tceaDecisionTaskCompletedEventId :: Lens' TimerCanceledEventAttributes Integer
tceaDecisionTaskCompletedEventId = lens _tceaDecisionTaskCompletedEventId (\ s a -> s{_tceaDecisionTaskCompletedEventId = a});

instance FromJSON TimerCanceledEventAttributes where
        parseJSON
          = withObject "TimerCanceledEventAttributes"
              (\ x ->
                 TimerCanceledEventAttributes' <$>
                   (x .: "timerId") <*> (x .: "startedEventId") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'TimerFired' event.
--
-- /See:/ 'timerFiredEventAttributes' smart constructor.
data TimerFiredEventAttributes = TimerFiredEventAttributes'
    { _tfeaTimerId        :: !Text
    , _tfeaStartedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimerFiredEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfeaTimerId'
--
-- * 'tfeaStartedEventId'
timerFiredEventAttributes
    :: Text -- ^ 'tfeaTimerId'
    -> Integer -- ^ 'tfeaStartedEventId'
    -> TimerFiredEventAttributes
timerFiredEventAttributes pTimerId_ pStartedEventId_ =
    TimerFiredEventAttributes'
    { _tfeaTimerId = pTimerId_
    , _tfeaStartedEventId = pStartedEventId_
    }

-- | The unique ID of the timer that fired.
tfeaTimerId :: Lens' TimerFiredEventAttributes Text
tfeaTimerId = lens _tfeaTimerId (\ s a -> s{_tfeaTimerId = a});

-- | The ID of the 'TimerStarted' event that was recorded when this timer was
-- started. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
tfeaStartedEventId :: Lens' TimerFiredEventAttributes Integer
tfeaStartedEventId = lens _tfeaStartedEventId (\ s a -> s{_tfeaStartedEventId = a});

instance FromJSON TimerFiredEventAttributes where
        parseJSON
          = withObject "TimerFiredEventAttributes"
              (\ x ->
                 TimerFiredEventAttributes' <$>
                   (x .: "timerId") <*> (x .: "startedEventId"))

-- | Provides details of the 'TimerStarted' event.
--
-- /See:/ 'timerStartedEventAttributes' smart constructor.
data TimerStartedEventAttributes = TimerStartedEventAttributes'
    { _tseaControl                      :: !(Maybe Text)
    , _tseaTimerId                      :: !Text
    , _tseaStartToFireTimeout           :: !Text
    , _tseaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimerStartedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tseaControl'
--
-- * 'tseaTimerId'
--
-- * 'tseaStartToFireTimeout'
--
-- * 'tseaDecisionTaskCompletedEventId'
timerStartedEventAttributes
    :: Text -- ^ 'tseaTimerId'
    -> Text -- ^ 'tseaStartToFireTimeout'
    -> Integer -- ^ 'tseaDecisionTaskCompletedEventId'
    -> TimerStartedEventAttributes
timerStartedEventAttributes pTimerId_ pStartToFireTimeout_ pDecisionTaskCompletedEventId_ =
    TimerStartedEventAttributes'
    { _tseaControl = Nothing
    , _tseaTimerId = pTimerId_
    , _tseaStartToFireTimeout = pStartToFireTimeout_
    , _tseaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | /Optional./ Data attached to the event that can be used by the decider
-- in subsequent workflow tasks.
tseaControl :: Lens' TimerStartedEventAttributes (Maybe Text)
tseaControl = lens _tseaControl (\ s a -> s{_tseaControl = a});

-- | The unique ID of the timer that was started.
tseaTimerId :: Lens' TimerStartedEventAttributes Text
tseaTimerId = lens _tseaTimerId (\ s a -> s{_tseaTimerId = a});

-- | The duration of time after which the timer will fire.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0.
tseaStartToFireTimeout :: Lens' TimerStartedEventAttributes Text
tseaStartToFireTimeout = lens _tseaStartToFireTimeout (\ s a -> s{_tseaStartToFireTimeout = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'StartTimer' decision for this
-- activity task. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
tseaDecisionTaskCompletedEventId :: Lens' TimerStartedEventAttributes Integer
tseaDecisionTaskCompletedEventId = lens _tseaDecisionTaskCompletedEventId (\ s a -> s{_tseaDecisionTaskCompletedEventId = a});

instance FromJSON TimerStartedEventAttributes where
        parseJSON
          = withObject "TimerStartedEventAttributes"
              (\ x ->
                 TimerStartedEventAttributes' <$>
                   (x .:? "control") <*> (x .: "timerId") <*>
                     (x .: "startToFireTimeout")
                     <*> (x .: "decisionTaskCompletedEventId"))

-- | Represents a workflow execution.
--
-- /See:/ 'workflowExecution' smart constructor.
data WorkflowExecution = WorkflowExecution'
    { _weWorkflowId :: !Text
    , _weRunId      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weWorkflowId'
--
-- * 'weRunId'
workflowExecution
    :: Text -- ^ 'weWorkflowId'
    -> Text -- ^ 'weRunId'
    -> WorkflowExecution
workflowExecution pWorkflowId_ pRunId_ =
    WorkflowExecution'
    { _weWorkflowId = pWorkflowId_
    , _weRunId = pRunId_
    }

-- | The user defined identifier associated with the workflow execution.
weWorkflowId :: Lens' WorkflowExecution Text
weWorkflowId = lens _weWorkflowId (\ s a -> s{_weWorkflowId = a});

-- | A system-generated unique identifier for the workflow execution.
weRunId :: Lens' WorkflowExecution Text
weRunId = lens _weRunId (\ s a -> s{_weRunId = a});

instance FromJSON WorkflowExecution where
        parseJSON
          = withObject "WorkflowExecution"
              (\ x ->
                 WorkflowExecution' <$>
                   (x .: "workflowId") <*> (x .: "runId"))

instance ToJSON WorkflowExecution where
        toJSON WorkflowExecution'{..}
          = object
              ["workflowId" .= _weWorkflowId, "runId" .= _weRunId]

-- | Provides details of the 'WorkflowExecutionCancelRequested' event.
--
-- /See:/ 'workflowExecutionCancelRequestedEventAttributes' smart constructor.
data WorkflowExecutionCancelRequestedEventAttributes = WorkflowExecutionCancelRequestedEventAttributes'
    { _wecreaExternalWorkflowExecution :: !(Maybe WorkflowExecution)
    , _wecreaExternalInitiatedEventId  :: !(Maybe Integer)
    , _wecreaCause                     :: !(Maybe WorkflowExecutionCancelRequestedCause)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionCancelRequestedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wecreaExternalWorkflowExecution'
--
-- * 'wecreaExternalInitiatedEventId'
--
-- * 'wecreaCause'
workflowExecutionCancelRequestedEventAttributes
    :: WorkflowExecutionCancelRequestedEventAttributes
workflowExecutionCancelRequestedEventAttributes =
    WorkflowExecutionCancelRequestedEventAttributes'
    { _wecreaExternalWorkflowExecution = Nothing
    , _wecreaExternalInitiatedEventId = Nothing
    , _wecreaCause = Nothing
    }

-- | The external workflow execution for which the cancellation was
-- requested.
wecreaExternalWorkflowExecution :: Lens' WorkflowExecutionCancelRequestedEventAttributes (Maybe WorkflowExecution)
wecreaExternalWorkflowExecution = lens _wecreaExternalWorkflowExecution (\ s a -> s{_wecreaExternalWorkflowExecution = a});

-- | The ID of the 'RequestCancelExternalWorkflowExecutionInitiated' event
-- corresponding to the 'RequestCancelExternalWorkflowExecution' decision
-- to cancel this workflow execution.The source event with this ID can be
-- found in the history of the source workflow execution. This information
-- can be useful for diagnosing problems by tracing back the chain of
-- events leading up to this event.
wecreaExternalInitiatedEventId :: Lens' WorkflowExecutionCancelRequestedEventAttributes (Maybe Integer)
wecreaExternalInitiatedEventId = lens _wecreaExternalInitiatedEventId (\ s a -> s{_wecreaExternalInitiatedEventId = a});

-- | If set, indicates that the request to cancel the workflow execution was
-- automatically generated, and specifies the cause. This happens if the
-- parent workflow execution times out or is terminated, and the child
-- policy is set to cancel child executions.
wecreaCause :: Lens' WorkflowExecutionCancelRequestedEventAttributes (Maybe WorkflowExecutionCancelRequestedCause)
wecreaCause = lens _wecreaCause (\ s a -> s{_wecreaCause = a});

instance FromJSON
         WorkflowExecutionCancelRequestedEventAttributes where
        parseJSON
          = withObject
              "WorkflowExecutionCancelRequestedEventAttributes"
              (\ x ->
                 WorkflowExecutionCancelRequestedEventAttributes' <$>
                   (x .:? "externalWorkflowExecution") <*>
                     (x .:? "externalInitiatedEventId")
                     <*> (x .:? "cause"))

-- | Provides details of the 'WorkflowExecutionCanceled' event.
--
-- /See:/ 'workflowExecutionCanceledEventAttributes' smart constructor.
data WorkflowExecutionCanceledEventAttributes = WorkflowExecutionCanceledEventAttributes'
    { _wDetails                      :: !(Maybe Text)
    , _wDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionCanceledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wDetails'
--
-- * 'wDecisionTaskCompletedEventId'
workflowExecutionCanceledEventAttributes
    :: Integer -- ^ 'wDecisionTaskCompletedEventId'
    -> WorkflowExecutionCanceledEventAttributes
workflowExecutionCanceledEventAttributes pDecisionTaskCompletedEventId_ =
    WorkflowExecutionCanceledEventAttributes'
    { _wDetails = Nothing
    , _wDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | Details for the cancellation (if any).
wDetails :: Lens' WorkflowExecutionCanceledEventAttributes (Maybe Text)
wDetails = lens _wDetails (\ s a -> s{_wDetails = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'CancelWorkflowExecution' decision
-- for this cancellation request. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
wDecisionTaskCompletedEventId :: Lens' WorkflowExecutionCanceledEventAttributes Integer
wDecisionTaskCompletedEventId = lens _wDecisionTaskCompletedEventId (\ s a -> s{_wDecisionTaskCompletedEventId = a});

instance FromJSON
         WorkflowExecutionCanceledEventAttributes where
        parseJSON
          = withObject
              "WorkflowExecutionCanceledEventAttributes"
              (\ x ->
                 WorkflowExecutionCanceledEventAttributes' <$>
                   (x .:? "details") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Provides details of the 'WorkflowExecutionCompleted' event.
--
-- /See:/ 'workflowExecutionCompletedEventAttributes' smart constructor.
data WorkflowExecutionCompletedEventAttributes = WorkflowExecutionCompletedEventAttributes'
    { _weceaResult                       :: !(Maybe Text)
    , _weceaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionCompletedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weceaResult'
--
-- * 'weceaDecisionTaskCompletedEventId'
workflowExecutionCompletedEventAttributes
    :: Integer -- ^ 'weceaDecisionTaskCompletedEventId'
    -> WorkflowExecutionCompletedEventAttributes
workflowExecutionCompletedEventAttributes pDecisionTaskCompletedEventId_ =
    WorkflowExecutionCompletedEventAttributes'
    { _weceaResult = Nothing
    , _weceaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The result produced by the workflow execution upon successful
-- completion.
weceaResult :: Lens' WorkflowExecutionCompletedEventAttributes (Maybe Text)
weceaResult = lens _weceaResult (\ s a -> s{_weceaResult = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'CompleteWorkflowExecution' decision
-- to complete this execution. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
weceaDecisionTaskCompletedEventId :: Lens' WorkflowExecutionCompletedEventAttributes Integer
weceaDecisionTaskCompletedEventId = lens _weceaDecisionTaskCompletedEventId (\ s a -> s{_weceaDecisionTaskCompletedEventId = a});

instance FromJSON
         WorkflowExecutionCompletedEventAttributes where
        parseJSON
          = withObject
              "WorkflowExecutionCompletedEventAttributes"
              (\ x ->
                 WorkflowExecutionCompletedEventAttributes' <$>
                   (x .:? "result") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | The configuration settings for a workflow execution including timeout
-- values, tasklist etc. These configuration settings are determined from
-- the defaults specified when registering the workflow type and those
-- specified when starting the workflow execution.
--
-- /See:/ 'workflowExecutionConfiguration' smart constructor.
data WorkflowExecutionConfiguration = WorkflowExecutionConfiguration'
    { _wecLambdaRole                   :: !(Maybe Text)
    , _wecTaskPriority                 :: !(Maybe Text)
    , _wecTaskStartToCloseTimeout      :: !Text
    , _wecExecutionStartToCloseTimeout :: !Text
    , _wecTaskList                     :: !TaskList
    , _wecChildPolicy                  :: !ChildPolicy
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wecLambdaRole'
--
-- * 'wecTaskPriority'
--
-- * 'wecTaskStartToCloseTimeout'
--
-- * 'wecExecutionStartToCloseTimeout'
--
-- * 'wecTaskList'
--
-- * 'wecChildPolicy'
workflowExecutionConfiguration
    :: Text -- ^ 'wecTaskStartToCloseTimeout'
    -> Text -- ^ 'wecExecutionStartToCloseTimeout'
    -> TaskList -- ^ 'wecTaskList'
    -> ChildPolicy -- ^ 'wecChildPolicy'
    -> WorkflowExecutionConfiguration
workflowExecutionConfiguration pTaskStartToCloseTimeout_ pExecutionStartToCloseTimeout_ pTaskList_ pChildPolicy_ =
    WorkflowExecutionConfiguration'
    { _wecLambdaRole = Nothing
    , _wecTaskPriority = Nothing
    , _wecTaskStartToCloseTimeout = pTaskStartToCloseTimeout_
    , _wecExecutionStartToCloseTimeout = pExecutionStartToCloseTimeout_
    , _wecTaskList = pTaskList_
    , _wecChildPolicy = pChildPolicy_
    }

-- | The IAM role used by this workflow execution when invoking AWS Lambda
-- functions.
wecLambdaRole :: Lens' WorkflowExecutionConfiguration (Maybe Text)
wecLambdaRole = lens _wecLambdaRole (\ s a -> s{_wecLambdaRole = a});

-- | The priority assigned to decision tasks for this workflow execution.
-- Valid values are integers that range from Java\'s 'Integer.MIN_VALUE'
-- (-2147483648) to 'Integer.MAX_VALUE' (2147483647). Higher numbers
-- indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
wecTaskPriority :: Lens' WorkflowExecutionConfiguration (Maybe Text)
wecTaskPriority = lens _wecTaskPriority (\ s a -> s{_wecTaskPriority = a});

-- | The maximum duration allowed for decision tasks for this workflow
-- execution.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
wecTaskStartToCloseTimeout :: Lens' WorkflowExecutionConfiguration Text
wecTaskStartToCloseTimeout = lens _wecTaskStartToCloseTimeout (\ s a -> s{_wecTaskStartToCloseTimeout = a});

-- | The total duration for this workflow execution.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
wecExecutionStartToCloseTimeout :: Lens' WorkflowExecutionConfiguration Text
wecExecutionStartToCloseTimeout = lens _wecExecutionStartToCloseTimeout (\ s a -> s{_wecExecutionStartToCloseTimeout = a});

-- | The task list used for the decision tasks generated for this workflow
-- execution.
wecTaskList :: Lens' WorkflowExecutionConfiguration TaskList
wecTaskList = lens _wecTaskList (\ s a -> s{_wecTaskList = a});

-- | The policy to use for the child workflow executions if this workflow
-- execution is terminated, by calling the TerminateWorkflowExecution
-- action explicitly or due to an expired timeout.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
wecChildPolicy :: Lens' WorkflowExecutionConfiguration ChildPolicy
wecChildPolicy = lens _wecChildPolicy (\ s a -> s{_wecChildPolicy = a});

instance FromJSON WorkflowExecutionConfiguration
         where
        parseJSON
          = withObject "WorkflowExecutionConfiguration"
              (\ x ->
                 WorkflowExecutionConfiguration' <$>
                   (x .:? "lambdaRole") <*> (x .:? "taskPriority") <*>
                     (x .: "taskStartToCloseTimeout")
                     <*> (x .: "executionStartToCloseTimeout")
                     <*> (x .: "taskList")
                     <*> (x .: "childPolicy"))

-- | Provides details of the 'WorkflowExecutionContinuedAsNew' event.
--
-- /See:/ 'workflowExecutionContinuedAsNewEventAttributes' smart constructor.
data WorkflowExecutionContinuedAsNewEventAttributes = WorkflowExecutionContinuedAsNewEventAttributes'
    { _wecaneaTagList                      :: !(Maybe [Text])
    , _wecaneaTaskStartToCloseTimeout      :: !(Maybe Text)
    , _wecaneaLambdaRole                   :: !(Maybe Text)
    , _wecaneaInput                        :: !(Maybe Text)
    , _wecaneaExecutionStartToCloseTimeout :: !(Maybe Text)
    , _wecaneaTaskPriority                 :: !(Maybe Text)
    , _wecaneaDecisionTaskCompletedEventId :: !Integer
    , _wecaneaNewExecutionRunId            :: !Text
    , _wecaneaTaskList                     :: !TaskList
    , _wecaneaChildPolicy                  :: !ChildPolicy
    , _wecaneaWorkflowType                 :: !WorkflowType
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionContinuedAsNewEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wecaneaTagList'
--
-- * 'wecaneaTaskStartToCloseTimeout'
--
-- * 'wecaneaLambdaRole'
--
-- * 'wecaneaInput'
--
-- * 'wecaneaExecutionStartToCloseTimeout'
--
-- * 'wecaneaTaskPriority'
--
-- * 'wecaneaDecisionTaskCompletedEventId'
--
-- * 'wecaneaNewExecutionRunId'
--
-- * 'wecaneaTaskList'
--
-- * 'wecaneaChildPolicy'
--
-- * 'wecaneaWorkflowType'
workflowExecutionContinuedAsNewEventAttributes
    :: Integer -- ^ 'wecaneaDecisionTaskCompletedEventId'
    -> Text -- ^ 'wecaneaNewExecutionRunId'
    -> TaskList -- ^ 'wecaneaTaskList'
    -> ChildPolicy -- ^ 'wecaneaChildPolicy'
    -> WorkflowType -- ^ 'wecaneaWorkflowType'
    -> WorkflowExecutionContinuedAsNewEventAttributes
workflowExecutionContinuedAsNewEventAttributes pDecisionTaskCompletedEventId_ pNewExecutionRunId_ pTaskList_ pChildPolicy_ pWorkflowType_ =
    WorkflowExecutionContinuedAsNewEventAttributes'
    { _wecaneaTagList = Nothing
    , _wecaneaTaskStartToCloseTimeout = Nothing
    , _wecaneaLambdaRole = Nothing
    , _wecaneaInput = Nothing
    , _wecaneaExecutionStartToCloseTimeout = Nothing
    , _wecaneaTaskPriority = Nothing
    , _wecaneaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    , _wecaneaNewExecutionRunId = pNewExecutionRunId_
    , _wecaneaTaskList = pTaskList_
    , _wecaneaChildPolicy = pChildPolicy_
    , _wecaneaWorkflowType = pWorkflowType_
    }

-- | The list of tags associated with the new workflow execution.
wecaneaTagList :: Lens' WorkflowExecutionContinuedAsNewEventAttributes [Text]
wecaneaTagList = lens _wecaneaTagList (\ s a -> s{_wecaneaTagList = a}) . _Default . _Coerce;

-- | The maximum duration of decision tasks for the new workflow execution.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
wecaneaTaskStartToCloseTimeout :: Lens' WorkflowExecutionContinuedAsNewEventAttributes (Maybe Text)
wecaneaTaskStartToCloseTimeout = lens _wecaneaTaskStartToCloseTimeout (\ s a -> s{_wecaneaTaskStartToCloseTimeout = a});

-- | The IAM role attached to this workflow execution to use when invoking
-- AWS Lambda functions.
wecaneaLambdaRole :: Lens' WorkflowExecutionContinuedAsNewEventAttributes (Maybe Text)
wecaneaLambdaRole = lens _wecaneaLambdaRole (\ s a -> s{_wecaneaLambdaRole = a});

-- | The input provided to the new workflow execution.
wecaneaInput :: Lens' WorkflowExecutionContinuedAsNewEventAttributes (Maybe Text)
wecaneaInput = lens _wecaneaInput (\ s a -> s{_wecaneaInput = a});

-- | The total duration allowed for the new workflow execution.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
wecaneaExecutionStartToCloseTimeout :: Lens' WorkflowExecutionContinuedAsNewEventAttributes (Maybe Text)
wecaneaExecutionStartToCloseTimeout = lens _wecaneaExecutionStartToCloseTimeout (\ s a -> s{_wecaneaExecutionStartToCloseTimeout = a});

-- | Undocumented member.
wecaneaTaskPriority :: Lens' WorkflowExecutionContinuedAsNewEventAttributes (Maybe Text)
wecaneaTaskPriority = lens _wecaneaTaskPriority (\ s a -> s{_wecaneaTaskPriority = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'ContinueAsNewWorkflowExecution'
-- decision that started this execution. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
wecaneaDecisionTaskCompletedEventId :: Lens' WorkflowExecutionContinuedAsNewEventAttributes Integer
wecaneaDecisionTaskCompletedEventId = lens _wecaneaDecisionTaskCompletedEventId (\ s a -> s{_wecaneaDecisionTaskCompletedEventId = a});

-- | The 'runId' of the new workflow execution.
wecaneaNewExecutionRunId :: Lens' WorkflowExecutionContinuedAsNewEventAttributes Text
wecaneaNewExecutionRunId = lens _wecaneaNewExecutionRunId (\ s a -> s{_wecaneaNewExecutionRunId = a});

-- | Undocumented member.
wecaneaTaskList :: Lens' WorkflowExecutionContinuedAsNewEventAttributes TaskList
wecaneaTaskList = lens _wecaneaTaskList (\ s a -> s{_wecaneaTaskList = a});

-- | The policy to use for the child workflow executions of the new execution
-- if it is terminated by calling the TerminateWorkflowExecution action
-- explicitly or due to an expired timeout.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
wecaneaChildPolicy :: Lens' WorkflowExecutionContinuedAsNewEventAttributes ChildPolicy
wecaneaChildPolicy = lens _wecaneaChildPolicy (\ s a -> s{_wecaneaChildPolicy = a});

-- | Undocumented member.
wecaneaWorkflowType :: Lens' WorkflowExecutionContinuedAsNewEventAttributes WorkflowType
wecaneaWorkflowType = lens _wecaneaWorkflowType (\ s a -> s{_wecaneaWorkflowType = a});

instance FromJSON
         WorkflowExecutionContinuedAsNewEventAttributes where
        parseJSON
          = withObject
              "WorkflowExecutionContinuedAsNewEventAttributes"
              (\ x ->
                 WorkflowExecutionContinuedAsNewEventAttributes' <$>
                   (x .:? "tagList" .!= mempty) <*>
                     (x .:? "taskStartToCloseTimeout")
                     <*> (x .:? "lambdaRole")
                     <*> (x .:? "input")
                     <*> (x .:? "executionStartToCloseTimeout")
                     <*> (x .:? "taskPriority")
                     <*> (x .: "decisionTaskCompletedEventId")
                     <*> (x .: "newExecutionRunId")
                     <*> (x .: "taskList")
                     <*> (x .: "childPolicy")
                     <*> (x .: "workflowType"))

-- | Contains the count of workflow executions returned from
-- CountOpenWorkflowExecutions or CountClosedWorkflowExecutions
--
-- /See:/ 'workflowExecutionCount' smart constructor.
data WorkflowExecutionCount = WorkflowExecutionCount'
    { _wecTruncated :: !(Maybe Bool)
    , _wecCount     :: !Nat
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wecTruncated'
--
-- * 'wecCount'
workflowExecutionCount
    :: Natural -- ^ 'wecCount'
    -> WorkflowExecutionCount
workflowExecutionCount pCount_ =
    WorkflowExecutionCount'
    { _wecTruncated = Nothing
    , _wecCount = _Nat # pCount_
    }

-- | If set to true, indicates that the actual count was more than the
-- maximum supported by this API and the count returned is the truncated
-- value.
wecTruncated :: Lens' WorkflowExecutionCount (Maybe Bool)
wecTruncated = lens _wecTruncated (\ s a -> s{_wecTruncated = a});

-- | The number of workflow executions.
wecCount :: Lens' WorkflowExecutionCount Natural
wecCount = lens _wecCount (\ s a -> s{_wecCount = a}) . _Nat;

instance FromJSON WorkflowExecutionCount where
        parseJSON
          = withObject "WorkflowExecutionCount"
              (\ x ->
                 WorkflowExecutionCount' <$>
                   (x .:? "truncated") <*> (x .: "count"))

-- | Provides details of the 'WorkflowExecutionFailed' event.
--
-- /See:/ 'workflowExecutionFailedEventAttributes' smart constructor.
data WorkflowExecutionFailedEventAttributes = WorkflowExecutionFailedEventAttributes'
    { _wefeaReason                       :: !(Maybe Text)
    , _wefeaDetails                      :: !(Maybe Text)
    , _wefeaDecisionTaskCompletedEventId :: !Integer
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wefeaReason'
--
-- * 'wefeaDetails'
--
-- * 'wefeaDecisionTaskCompletedEventId'
workflowExecutionFailedEventAttributes
    :: Integer -- ^ 'wefeaDecisionTaskCompletedEventId'
    -> WorkflowExecutionFailedEventAttributes
workflowExecutionFailedEventAttributes pDecisionTaskCompletedEventId_ =
    WorkflowExecutionFailedEventAttributes'
    { _wefeaReason = Nothing
    , _wefeaDetails = Nothing
    , _wefeaDecisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
    }

-- | The descriptive reason provided for the failure (if any).
wefeaReason :: Lens' WorkflowExecutionFailedEventAttributes (Maybe Text)
wefeaReason = lens _wefeaReason (\ s a -> s{_wefeaReason = a});

-- | The details of the failure (if any).
wefeaDetails :: Lens' WorkflowExecutionFailedEventAttributes (Maybe Text)
wefeaDetails = lens _wefeaDetails (\ s a -> s{_wefeaDetails = a});

-- | The ID of the 'DecisionTaskCompleted' event corresponding to the
-- decision task that resulted in the 'FailWorkflowExecution' decision to
-- fail this execution. This information can be useful for diagnosing
-- problems by tracing back the chain of events leading up to this event.
wefeaDecisionTaskCompletedEventId :: Lens' WorkflowExecutionFailedEventAttributes Integer
wefeaDecisionTaskCompletedEventId = lens _wefeaDecisionTaskCompletedEventId (\ s a -> s{_wefeaDecisionTaskCompletedEventId = a});

instance FromJSON
         WorkflowExecutionFailedEventAttributes where
        parseJSON
          = withObject "WorkflowExecutionFailedEventAttributes"
              (\ x ->
                 WorkflowExecutionFailedEventAttributes' <$>
                   (x .:? "reason") <*> (x .:? "details") <*>
                     (x .: "decisionTaskCompletedEventId"))

-- | Used to filter the workflow executions in visibility APIs by their
-- 'workflowId'.
--
-- /See:/ 'workflowExecutionFilter' smart constructor.
newtype WorkflowExecutionFilter = WorkflowExecutionFilter'
    { _wefWorkflowId :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wefWorkflowId'
workflowExecutionFilter
    :: Text -- ^ 'wefWorkflowId'
    -> WorkflowExecutionFilter
workflowExecutionFilter pWorkflowId_ =
    WorkflowExecutionFilter'
    { _wefWorkflowId = pWorkflowId_
    }

-- | The workflowId to pass of match the criteria of this filter.
wefWorkflowId :: Lens' WorkflowExecutionFilter Text
wefWorkflowId = lens _wefWorkflowId (\ s a -> s{_wefWorkflowId = a});

instance ToJSON WorkflowExecutionFilter where
        toJSON WorkflowExecutionFilter'{..}
          = object ["workflowId" .= _wefWorkflowId]

-- | Contains information about a workflow execution.
--
-- /See:/ 'workflowExecutionInfo' smart constructor.
data WorkflowExecutionInfo = WorkflowExecutionInfo'
    { _weiParent          :: !(Maybe WorkflowExecution)
    , _weiTagList         :: !(Maybe [Text])
    , _weiCloseStatus     :: !(Maybe CloseStatus)
    , _weiCloseTimestamp  :: !(Maybe POSIX)
    , _weiCancelRequested :: !(Maybe Bool)
    , _weiExecution       :: !WorkflowExecution
    , _weiWorkflowType    :: !WorkflowType
    , _weiStartTimestamp  :: !POSIX
    , _weiExecutionStatus :: !ExecutionStatus
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weiParent'
--
-- * 'weiTagList'
--
-- * 'weiCloseStatus'
--
-- * 'weiCloseTimestamp'
--
-- * 'weiCancelRequested'
--
-- * 'weiExecution'
--
-- * 'weiWorkflowType'
--
-- * 'weiStartTimestamp'
--
-- * 'weiExecutionStatus'
workflowExecutionInfo
    :: WorkflowExecution -- ^ 'weiExecution'
    -> WorkflowType -- ^ 'weiWorkflowType'
    -> UTCTime -- ^ 'weiStartTimestamp'
    -> ExecutionStatus -- ^ 'weiExecutionStatus'
    -> WorkflowExecutionInfo
workflowExecutionInfo pExecution_ pWorkflowType_ pStartTimestamp_ pExecutionStatus_ =
    WorkflowExecutionInfo'
    { _weiParent = Nothing
    , _weiTagList = Nothing
    , _weiCloseStatus = Nothing
    , _weiCloseTimestamp = Nothing
    , _weiCancelRequested = Nothing
    , _weiExecution = pExecution_
    , _weiWorkflowType = pWorkflowType_
    , _weiStartTimestamp = _Time # pStartTimestamp_
    , _weiExecutionStatus = pExecutionStatus_
    }

-- | If this workflow execution is a child of another execution then contains
-- the workflow execution that started this execution.
weiParent :: Lens' WorkflowExecutionInfo (Maybe WorkflowExecution)
weiParent = lens _weiParent (\ s a -> s{_weiParent = a});

-- | The list of tags associated with the workflow execution. Tags can be
-- used to identify and list workflow executions of interest through the
-- visibility APIs. A workflow execution can have a maximum of 5 tags.
weiTagList :: Lens' WorkflowExecutionInfo [Text]
weiTagList = lens _weiTagList (\ s a -> s{_weiTagList = a}) . _Default . _Coerce;

-- | If the execution status is closed then this specifies how the execution
-- was closed:
--
-- -   'COMPLETED': the execution was successfully completed.
-- -   'CANCELED': the execution was canceled.Cancellation allows the
--     implementation to gracefully clean up before the execution is
--     closed.
-- -   'TERMINATED': the execution was force terminated.
-- -   'FAILED': the execution failed to complete.
-- -   'TIMED_OUT': the execution did not complete in the alloted time and
--     was automatically timed out.
-- -   'CONTINUED_AS_NEW': the execution is logically continued. This means
--     the current execution was completed and a new execution was started
--     to carry on the workflow.
weiCloseStatus :: Lens' WorkflowExecutionInfo (Maybe CloseStatus)
weiCloseStatus = lens _weiCloseStatus (\ s a -> s{_weiCloseStatus = a});

-- | The time when the workflow execution was closed. Set only if the
-- execution status is CLOSED.
weiCloseTimestamp :: Lens' WorkflowExecutionInfo (Maybe UTCTime)
weiCloseTimestamp = lens _weiCloseTimestamp (\ s a -> s{_weiCloseTimestamp = a}) . mapping _Time;

-- | Set to true if a cancellation is requested for this workflow execution.
weiCancelRequested :: Lens' WorkflowExecutionInfo (Maybe Bool)
weiCancelRequested = lens _weiCancelRequested (\ s a -> s{_weiCancelRequested = a});

-- | The workflow execution this information is about.
weiExecution :: Lens' WorkflowExecutionInfo WorkflowExecution
weiExecution = lens _weiExecution (\ s a -> s{_weiExecution = a});

-- | The type of the workflow execution.
weiWorkflowType :: Lens' WorkflowExecutionInfo WorkflowType
weiWorkflowType = lens _weiWorkflowType (\ s a -> s{_weiWorkflowType = a});

-- | The time when the execution was started.
weiStartTimestamp :: Lens' WorkflowExecutionInfo UTCTime
weiStartTimestamp = lens _weiStartTimestamp (\ s a -> s{_weiStartTimestamp = a}) . _Time;

-- | The current status of the execution.
weiExecutionStatus :: Lens' WorkflowExecutionInfo ExecutionStatus
weiExecutionStatus = lens _weiExecutionStatus (\ s a -> s{_weiExecutionStatus = a});

instance FromJSON WorkflowExecutionInfo where
        parseJSON
          = withObject "WorkflowExecutionInfo"
              (\ x ->
                 WorkflowExecutionInfo' <$>
                   (x .:? "parent") <*> (x .:? "tagList" .!= mempty) <*>
                     (x .:? "closeStatus")
                     <*> (x .:? "closeTimestamp")
                     <*> (x .:? "cancelRequested")
                     <*> (x .: "execution")
                     <*> (x .: "workflowType")
                     <*> (x .: "startTimestamp")
                     <*> (x .: "executionStatus"))

-- | Contains a paginated list of information about workflow executions.
--
-- /See:/ 'workflowExecutionInfos' smart constructor.
data WorkflowExecutionInfos = WorkflowExecutionInfos'
    { _weiNextPageToken  :: !(Maybe Text)
    , _weiExecutionInfos :: ![WorkflowExecutionInfo]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionInfos' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weiNextPageToken'
--
-- * 'weiExecutionInfos'
workflowExecutionInfos
    :: WorkflowExecutionInfos
workflowExecutionInfos =
    WorkflowExecutionInfos'
    { _weiNextPageToken = Nothing
    , _weiExecutionInfos = mempty
    }

-- | If a 'NextPageToken' was returned by a previous call, there are more
-- results available. To retrieve the next page of results, make the call
-- again using the returned token in 'nextPageToken'. Keep all other
-- arguments unchanged.
--
-- The configured 'maximumPageSize' determines how many results can be
-- returned in a single call.
weiNextPageToken :: Lens' WorkflowExecutionInfos (Maybe Text)
weiNextPageToken = lens _weiNextPageToken (\ s a -> s{_weiNextPageToken = a});

-- | The list of workflow information structures.
weiExecutionInfos :: Lens' WorkflowExecutionInfos [WorkflowExecutionInfo]
weiExecutionInfos = lens _weiExecutionInfos (\ s a -> s{_weiExecutionInfos = a}) . _Coerce;

instance FromJSON WorkflowExecutionInfos where
        parseJSON
          = withObject "WorkflowExecutionInfos"
              (\ x ->
                 WorkflowExecutionInfos' <$>
                   (x .:? "nextPageToken") <*>
                     (x .:? "executionInfos" .!= mempty))

-- | Contains the counts of open tasks, child workflow executions and timers
-- for a workflow execution.
--
-- /See:/ 'workflowExecutionOpenCounts' smart constructor.
data WorkflowExecutionOpenCounts = WorkflowExecutionOpenCounts'
    { _weocOpenLambdaFunctions         :: !(Maybe Nat)
    , _weocOpenActivityTasks           :: !Nat
    , _weocOpenDecisionTasks           :: !Nat
    , _weocOpenTimers                  :: !Nat
    , _weocOpenChildWorkflowExecutions :: !Nat
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionOpenCounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weocOpenLambdaFunctions'
--
-- * 'weocOpenActivityTasks'
--
-- * 'weocOpenDecisionTasks'
--
-- * 'weocOpenTimers'
--
-- * 'weocOpenChildWorkflowExecutions'
workflowExecutionOpenCounts
    :: Natural -- ^ 'weocOpenActivityTasks'
    -> Natural -- ^ 'weocOpenDecisionTasks'
    -> Natural -- ^ 'weocOpenTimers'
    -> Natural -- ^ 'weocOpenChildWorkflowExecutions'
    -> WorkflowExecutionOpenCounts
workflowExecutionOpenCounts pOpenActivityTasks_ pOpenDecisionTasks_ pOpenTimers_ pOpenChildWorkflowExecutions_ =
    WorkflowExecutionOpenCounts'
    { _weocOpenLambdaFunctions = Nothing
    , _weocOpenActivityTasks = _Nat # pOpenActivityTasks_
    , _weocOpenDecisionTasks = _Nat # pOpenDecisionTasks_
    , _weocOpenTimers = _Nat # pOpenTimers_
    , _weocOpenChildWorkflowExecutions = _Nat # pOpenChildWorkflowExecutions_
    }

-- | The count of AWS Lambda functions that are currently executing.
weocOpenLambdaFunctions :: Lens' WorkflowExecutionOpenCounts (Maybe Natural)
weocOpenLambdaFunctions = lens _weocOpenLambdaFunctions (\ s a -> s{_weocOpenLambdaFunctions = a}) . mapping _Nat;

-- | The count of activity tasks whose status is OPEN.
weocOpenActivityTasks :: Lens' WorkflowExecutionOpenCounts Natural
weocOpenActivityTasks = lens _weocOpenActivityTasks (\ s a -> s{_weocOpenActivityTasks = a}) . _Nat;

-- | The count of decision tasks whose status is OPEN. A workflow execution
-- can have at most one open decision task.
weocOpenDecisionTasks :: Lens' WorkflowExecutionOpenCounts Natural
weocOpenDecisionTasks = lens _weocOpenDecisionTasks (\ s a -> s{_weocOpenDecisionTasks = a}) . _Nat;

-- | The count of timers started by this workflow execution that have not
-- fired yet.
weocOpenTimers :: Lens' WorkflowExecutionOpenCounts Natural
weocOpenTimers = lens _weocOpenTimers (\ s a -> s{_weocOpenTimers = a}) . _Nat;

-- | The count of child workflow executions whose status is OPEN.
weocOpenChildWorkflowExecutions :: Lens' WorkflowExecutionOpenCounts Natural
weocOpenChildWorkflowExecutions = lens _weocOpenChildWorkflowExecutions (\ s a -> s{_weocOpenChildWorkflowExecutions = a}) . _Nat;

instance FromJSON WorkflowExecutionOpenCounts where
        parseJSON
          = withObject "WorkflowExecutionOpenCounts"
              (\ x ->
                 WorkflowExecutionOpenCounts' <$>
                   (x .:? "openLambdaFunctions") <*>
                     (x .: "openActivityTasks")
                     <*> (x .: "openDecisionTasks")
                     <*> (x .: "openTimers")
                     <*> (x .: "openChildWorkflowExecutions"))

-- | Provides details of the 'WorkflowExecutionSignaled' event.
--
-- /See:/ 'workflowExecutionSignaledEventAttributes' smart constructor.
data WorkflowExecutionSignaledEventAttributes = WorkflowExecutionSignaledEventAttributes'
    { _wExternalWorkflowExecution :: !(Maybe WorkflowExecution)
    , _wExternalInitiatedEventId  :: !(Maybe Integer)
    , _wInput                     :: !(Maybe Text)
    , _wSignalName                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionSignaledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wExternalWorkflowExecution'
--
-- * 'wExternalInitiatedEventId'
--
-- * 'wInput'
--
-- * 'wSignalName'
workflowExecutionSignaledEventAttributes
    :: Text -- ^ 'wSignalName'
    -> WorkflowExecutionSignaledEventAttributes
workflowExecutionSignaledEventAttributes pSignalName_ =
    WorkflowExecutionSignaledEventAttributes'
    { _wExternalWorkflowExecution = Nothing
    , _wExternalInitiatedEventId = Nothing
    , _wInput = Nothing
    , _wSignalName = pSignalName_
    }

-- | The workflow execution that sent the signal. This is set only of the
-- signal was sent by another workflow execution.
wExternalWorkflowExecution :: Lens' WorkflowExecutionSignaledEventAttributes (Maybe WorkflowExecution)
wExternalWorkflowExecution = lens _wExternalWorkflowExecution (\ s a -> s{_wExternalWorkflowExecution = a});

-- | The ID of the 'SignalExternalWorkflowExecutionInitiated' event
-- corresponding to the 'SignalExternalWorkflow' decision to signal this
-- workflow execution.The source event with this ID can be found in the
-- history of the source workflow execution. This information can be useful
-- for diagnosing problems by tracing back the chain of events leading up
-- to this event. This field is set only if the signal was initiated by
-- another workflow execution.
wExternalInitiatedEventId :: Lens' WorkflowExecutionSignaledEventAttributes (Maybe Integer)
wExternalInitiatedEventId = lens _wExternalInitiatedEventId (\ s a -> s{_wExternalInitiatedEventId = a});

-- | Inputs provided with the signal (if any). The decider can use the signal
-- name and inputs to determine how to process the signal.
wInput :: Lens' WorkflowExecutionSignaledEventAttributes (Maybe Text)
wInput = lens _wInput (\ s a -> s{_wInput = a});

-- | The name of the signal received. The decider can use the signal name and
-- inputs to determine how to the process the signal.
wSignalName :: Lens' WorkflowExecutionSignaledEventAttributes Text
wSignalName = lens _wSignalName (\ s a -> s{_wSignalName = a});

instance FromJSON
         WorkflowExecutionSignaledEventAttributes where
        parseJSON
          = withObject
              "WorkflowExecutionSignaledEventAttributes"
              (\ x ->
                 WorkflowExecutionSignaledEventAttributes' <$>
                   (x .:? "externalWorkflowExecution") <*>
                     (x .:? "externalInitiatedEventId")
                     <*> (x .:? "input")
                     <*> (x .: "signalName"))

-- | Provides details of 'WorkflowExecutionStarted' event.
--
-- /See:/ 'workflowExecutionStartedEventAttributes' smart constructor.
data WorkflowExecutionStartedEventAttributes = WorkflowExecutionStartedEventAttributes'
    { _weseaParentInitiatedEventId       :: !(Maybe Integer)
    , _weseaTagList                      :: !(Maybe [Text])
    , _weseaTaskStartToCloseTimeout      :: !(Maybe Text)
    , _weseaLambdaRole                   :: !(Maybe Text)
    , _weseaInput                        :: !(Maybe Text)
    , _weseaExecutionStartToCloseTimeout :: !(Maybe Text)
    , _weseaTaskPriority                 :: !(Maybe Text)
    , _weseaParentWorkflowExecution      :: !(Maybe WorkflowExecution)
    , _weseaContinuedExecutionRunId      :: !(Maybe Text)
    , _weseaChildPolicy                  :: !ChildPolicy
    , _weseaTaskList                     :: !TaskList
    , _weseaWorkflowType                 :: !WorkflowType
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionStartedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weseaParentInitiatedEventId'
--
-- * 'weseaTagList'
--
-- * 'weseaTaskStartToCloseTimeout'
--
-- * 'weseaLambdaRole'
--
-- * 'weseaInput'
--
-- * 'weseaExecutionStartToCloseTimeout'
--
-- * 'weseaTaskPriority'
--
-- * 'weseaParentWorkflowExecution'
--
-- * 'weseaContinuedExecutionRunId'
--
-- * 'weseaChildPolicy'
--
-- * 'weseaTaskList'
--
-- * 'weseaWorkflowType'
workflowExecutionStartedEventAttributes
    :: ChildPolicy -- ^ 'weseaChildPolicy'
    -> TaskList -- ^ 'weseaTaskList'
    -> WorkflowType -- ^ 'weseaWorkflowType'
    -> WorkflowExecutionStartedEventAttributes
workflowExecutionStartedEventAttributes pChildPolicy_ pTaskList_ pWorkflowType_ =
    WorkflowExecutionStartedEventAttributes'
    { _weseaParentInitiatedEventId = Nothing
    , _weseaTagList = Nothing
    , _weseaTaskStartToCloseTimeout = Nothing
    , _weseaLambdaRole = Nothing
    , _weseaInput = Nothing
    , _weseaExecutionStartToCloseTimeout = Nothing
    , _weseaTaskPriority = Nothing
    , _weseaParentWorkflowExecution = Nothing
    , _weseaContinuedExecutionRunId = Nothing
    , _weseaChildPolicy = pChildPolicy_
    , _weseaTaskList = pTaskList_
    , _weseaWorkflowType = pWorkflowType_
    }

-- | The ID of the 'StartChildWorkflowExecutionInitiated' event corresponding
-- to the 'StartChildWorkflowExecution' decision to start this workflow
-- execution. The source event with this ID can be found in the history of
-- the source workflow execution. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
weseaParentInitiatedEventId :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Integer)
weseaParentInitiatedEventId = lens _weseaParentInitiatedEventId (\ s a -> s{_weseaParentInitiatedEventId = a});

-- | The list of tags associated with this workflow execution. An execution
-- can have up to 5 tags.
weseaTagList :: Lens' WorkflowExecutionStartedEventAttributes [Text]
weseaTagList = lens _weseaTagList (\ s a -> s{_weseaTagList = a}) . _Default . _Coerce;

-- | The maximum duration of decision tasks for this workflow type.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
weseaTaskStartToCloseTimeout :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
weseaTaskStartToCloseTimeout = lens _weseaTaskStartToCloseTimeout (\ s a -> s{_weseaTaskStartToCloseTimeout = a});

-- | The IAM role attached to this workflow execution to use when invoking
-- AWS Lambda functions.
weseaLambdaRole :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
weseaLambdaRole = lens _weseaLambdaRole (\ s a -> s{_weseaLambdaRole = a});

-- | The input provided to the workflow execution (if any).
weseaInput :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
weseaInput = lens _weseaInput (\ s a -> s{_weseaInput = a});

-- | The maximum duration for this workflow execution.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
weseaExecutionStartToCloseTimeout :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
weseaExecutionStartToCloseTimeout = lens _weseaExecutionStartToCloseTimeout (\ s a -> s{_weseaExecutionStartToCloseTimeout = a});

-- | Undocumented member.
weseaTaskPriority :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
weseaTaskPriority = lens _weseaTaskPriority (\ s a -> s{_weseaTaskPriority = a});

-- | The source workflow execution that started this workflow execution. The
-- member is not set if the workflow execution was not started by a
-- workflow.
weseaParentWorkflowExecution :: Lens' WorkflowExecutionStartedEventAttributes (Maybe WorkflowExecution)
weseaParentWorkflowExecution = lens _weseaParentWorkflowExecution (\ s a -> s{_weseaParentWorkflowExecution = a});

-- | If this workflow execution was started due to a
-- 'ContinueAsNewWorkflowExecution' decision, then it contains the 'runId'
-- of the previous workflow execution that was closed and continued as this
-- execution.
weseaContinuedExecutionRunId :: Lens' WorkflowExecutionStartedEventAttributes (Maybe Text)
weseaContinuedExecutionRunId = lens _weseaContinuedExecutionRunId (\ s a -> s{_weseaContinuedExecutionRunId = a});

-- | The policy to use for the child workflow executions if this workflow
-- execution is terminated, by calling the TerminateWorkflowExecution
-- action explicitly or due to an expired timeout.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
weseaChildPolicy :: Lens' WorkflowExecutionStartedEventAttributes ChildPolicy
weseaChildPolicy = lens _weseaChildPolicy (\ s a -> s{_weseaChildPolicy = a});

-- | The name of the task list for scheduling the decision tasks for this
-- workflow execution.
weseaTaskList :: Lens' WorkflowExecutionStartedEventAttributes TaskList
weseaTaskList = lens _weseaTaskList (\ s a -> s{_weseaTaskList = a});

-- | The workflow type of this execution.
weseaWorkflowType :: Lens' WorkflowExecutionStartedEventAttributes WorkflowType
weseaWorkflowType = lens _weseaWorkflowType (\ s a -> s{_weseaWorkflowType = a});

instance FromJSON
         WorkflowExecutionStartedEventAttributes where
        parseJSON
          = withObject
              "WorkflowExecutionStartedEventAttributes"
              (\ x ->
                 WorkflowExecutionStartedEventAttributes' <$>
                   (x .:? "parentInitiatedEventId") <*>
                     (x .:? "tagList" .!= mempty)
                     <*> (x .:? "taskStartToCloseTimeout")
                     <*> (x .:? "lambdaRole")
                     <*> (x .:? "input")
                     <*> (x .:? "executionStartToCloseTimeout")
                     <*> (x .:? "taskPriority")
                     <*> (x .:? "parentWorkflowExecution")
                     <*> (x .:? "continuedExecutionRunId")
                     <*> (x .: "childPolicy")
                     <*> (x .: "taskList")
                     <*> (x .: "workflowType"))

-- | Provides details of the 'WorkflowExecutionTerminated' event.
--
-- /See:/ 'workflowExecutionTerminatedEventAttributes' smart constructor.
data WorkflowExecutionTerminatedEventAttributes = WorkflowExecutionTerminatedEventAttributes'
    { _weteaCause       :: !(Maybe WorkflowExecutionTerminatedCause)
    , _weteaReason      :: !(Maybe Text)
    , _weteaDetails     :: !(Maybe Text)
    , _weteaChildPolicy :: !ChildPolicy
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionTerminatedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weteaCause'
--
-- * 'weteaReason'
--
-- * 'weteaDetails'
--
-- * 'weteaChildPolicy'
workflowExecutionTerminatedEventAttributes
    :: ChildPolicy -- ^ 'weteaChildPolicy'
    -> WorkflowExecutionTerminatedEventAttributes
workflowExecutionTerminatedEventAttributes pChildPolicy_ =
    WorkflowExecutionTerminatedEventAttributes'
    { _weteaCause = Nothing
    , _weteaReason = Nothing
    , _weteaDetails = Nothing
    , _weteaChildPolicy = pChildPolicy_
    }

-- | If set, indicates that the workflow execution was automatically
-- terminated, and specifies the cause. This happens if the parent workflow
-- execution times out or is terminated and the child policy is set to
-- terminate child executions.
weteaCause :: Lens' WorkflowExecutionTerminatedEventAttributes (Maybe WorkflowExecutionTerminatedCause)
weteaCause = lens _weteaCause (\ s a -> s{_weteaCause = a});

-- | The reason provided for the termination (if any).
weteaReason :: Lens' WorkflowExecutionTerminatedEventAttributes (Maybe Text)
weteaReason = lens _weteaReason (\ s a -> s{_weteaReason = a});

-- | The details provided for the termination (if any).
weteaDetails :: Lens' WorkflowExecutionTerminatedEventAttributes (Maybe Text)
weteaDetails = lens _weteaDetails (\ s a -> s{_weteaDetails = a});

-- | The policy used for the child workflow executions of this workflow
-- execution.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
weteaChildPolicy :: Lens' WorkflowExecutionTerminatedEventAttributes ChildPolicy
weteaChildPolicy = lens _weteaChildPolicy (\ s a -> s{_weteaChildPolicy = a});

instance FromJSON
         WorkflowExecutionTerminatedEventAttributes where
        parseJSON
          = withObject
              "WorkflowExecutionTerminatedEventAttributes"
              (\ x ->
                 WorkflowExecutionTerminatedEventAttributes' <$>
                   (x .:? "cause") <*> (x .:? "reason") <*>
                     (x .:? "details")
                     <*> (x .: "childPolicy"))

-- | Provides details of the 'WorkflowExecutionTimedOut' event.
--
-- /See:/ 'workflowExecutionTimedOutEventAttributes' smart constructor.
data WorkflowExecutionTimedOutEventAttributes = WorkflowExecutionTimedOutEventAttributes'
    { _wetoeaTimeoutType :: !WorkflowExecutionTimeoutType
    , _wetoeaChildPolicy :: !ChildPolicy
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowExecutionTimedOutEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wetoeaTimeoutType'
--
-- * 'wetoeaChildPolicy'
workflowExecutionTimedOutEventAttributes
    :: WorkflowExecutionTimeoutType -- ^ 'wetoeaTimeoutType'
    -> ChildPolicy -- ^ 'wetoeaChildPolicy'
    -> WorkflowExecutionTimedOutEventAttributes
workflowExecutionTimedOutEventAttributes pTimeoutType_ pChildPolicy_ =
    WorkflowExecutionTimedOutEventAttributes'
    { _wetoeaTimeoutType = pTimeoutType_
    , _wetoeaChildPolicy = pChildPolicy_
    }

-- | The type of timeout that caused this event.
wetoeaTimeoutType :: Lens' WorkflowExecutionTimedOutEventAttributes WorkflowExecutionTimeoutType
wetoeaTimeoutType = lens _wetoeaTimeoutType (\ s a -> s{_wetoeaTimeoutType = a});

-- | The policy used for the child workflow executions of this workflow
-- execution.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
wetoeaChildPolicy :: Lens' WorkflowExecutionTimedOutEventAttributes ChildPolicy
wetoeaChildPolicy = lens _wetoeaChildPolicy (\ s a -> s{_wetoeaChildPolicy = a});

instance FromJSON
         WorkflowExecutionTimedOutEventAttributes where
        parseJSON
          = withObject
              "WorkflowExecutionTimedOutEventAttributes"
              (\ x ->
                 WorkflowExecutionTimedOutEventAttributes' <$>
                   (x .: "timeoutType") <*> (x .: "childPolicy"))

-- | Represents a workflow type.
--
-- /See:/ 'workflowType' smart constructor.
data WorkflowType = WorkflowType'
    { _wtName    :: !Text
    , _wtVersion :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtName'
--
-- * 'wtVersion'
workflowType
    :: Text -- ^ 'wtName'
    -> Text -- ^ 'wtVersion'
    -> WorkflowType
workflowType pName_ pVersion_ =
    WorkflowType'
    { _wtName = pName_
    , _wtVersion = pVersion_
    }

-- | __Required.__ The name of the workflow type.
--
-- The combination of workflow type name and version must be unique with in
-- a domain.
wtName :: Lens' WorkflowType Text
wtName = lens _wtName (\ s a -> s{_wtName = a});

-- | __Required.__ The version of the workflow type.
--
-- The combination of workflow type name and version must be unique with in
-- a domain.
wtVersion :: Lens' WorkflowType Text
wtVersion = lens _wtVersion (\ s a -> s{_wtVersion = a});

instance FromJSON WorkflowType where
        parseJSON
          = withObject "WorkflowType"
              (\ x ->
                 WorkflowType' <$> (x .: "name") <*> (x .: "version"))

instance ToJSON WorkflowType where
        toJSON WorkflowType'{..}
          = object ["name" .= _wtName, "version" .= _wtVersion]

-- | The configuration settings of a workflow type.
--
-- /See:/ 'workflowTypeConfiguration' smart constructor.
data WorkflowTypeConfiguration = WorkflowTypeConfiguration'
    { _wtcDefaultLambdaRole                   :: !(Maybe Text)
    , _wtcDefaultChildPolicy                  :: !(Maybe ChildPolicy)
    , _wtcDefaultTaskList                     :: !(Maybe TaskList)
    , _wtcDefaultTaskPriority                 :: !(Maybe Text)
    , _wtcDefaultExecutionStartToCloseTimeout :: !(Maybe Text)
    , _wtcDefaultTaskStartToCloseTimeout      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowTypeConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtcDefaultLambdaRole'
--
-- * 'wtcDefaultChildPolicy'
--
-- * 'wtcDefaultTaskList'
--
-- * 'wtcDefaultTaskPriority'
--
-- * 'wtcDefaultExecutionStartToCloseTimeout'
--
-- * 'wtcDefaultTaskStartToCloseTimeout'
workflowTypeConfiguration
    :: WorkflowTypeConfiguration
workflowTypeConfiguration =
    WorkflowTypeConfiguration'
    { _wtcDefaultLambdaRole = Nothing
    , _wtcDefaultChildPolicy = Nothing
    , _wtcDefaultTaskList = Nothing
    , _wtcDefaultTaskPriority = Nothing
    , _wtcDefaultExecutionStartToCloseTimeout = Nothing
    , _wtcDefaultTaskStartToCloseTimeout = Nothing
    }

-- | The default IAM role to use when a workflow execution invokes a AWS
-- Lambda function.
wtcDefaultLambdaRole :: Lens' WorkflowTypeConfiguration (Maybe Text)
wtcDefaultLambdaRole = lens _wtcDefaultLambdaRole (\ s a -> s{_wtcDefaultLambdaRole = a});

-- | /Optional./ The default policy to use for the child workflow executions
-- when a workflow execution of this type is terminated, by calling the
-- TerminateWorkflowExecution action explicitly or due to an expired
-- timeout. This default can be overridden when starting a workflow
-- execution using the StartWorkflowExecution action or the
-- 'StartChildWorkflowExecution' decision.
--
-- The supported child policies are:
--
-- -   __TERMINATE:__ the child executions will be terminated.
-- -   __REQUEST_CANCEL:__ a request to cancel will be attempted for each
--     child execution by recording a 'WorkflowExecutionCancelRequested'
--     event in its history. It is up to the decider to take appropriate
--     actions when it receives an execution history with this event.
-- -   __ABANDON:__ no action will be taken. The child executions will
--     continue to run.
wtcDefaultChildPolicy :: Lens' WorkflowTypeConfiguration (Maybe ChildPolicy)
wtcDefaultChildPolicy = lens _wtcDefaultChildPolicy (\ s a -> s{_wtcDefaultChildPolicy = a});

-- | /Optional./ The default task list, specified when registering the
-- workflow type, for decisions tasks scheduled for workflow executions of
-- this type. This default can be overridden when starting a workflow
-- execution using the StartWorkflowExecution action or the
-- 'StartChildWorkflowExecution' decision.
wtcDefaultTaskList :: Lens' WorkflowTypeConfiguration (Maybe TaskList)
wtcDefaultTaskList = lens _wtcDefaultTaskList (\ s a -> s{_wtcDefaultTaskList = a});

-- | /Optional./ The default task priority, specified when registering the
-- workflow type, for all decision tasks of this workflow type. This
-- default can be overridden when starting a workflow execution using the
-- StartWorkflowExecution action or the 'StartChildWorkflowExecution'
-- decision.
--
-- Valid values are integers that range from Java\'s 'Integer.MIN_VALUE'
-- (-2147483648) to 'Integer.MAX_VALUE' (2147483647). Higher numbers
-- indicate higher priority.
--
-- For more information about setting task priority, see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html Setting Task Priority>
-- in the /Amazon Simple Workflow Developer Guide/.
wtcDefaultTaskPriority :: Lens' WorkflowTypeConfiguration (Maybe Text)
wtcDefaultTaskPriority = lens _wtcDefaultTaskPriority (\ s a -> s{_wtcDefaultTaskPriority = a});

-- | /Optional./ The default maximum duration, specified when registering the
-- workflow type, for executions of this workflow type. This default can be
-- overridden when starting a workflow execution using the
-- StartWorkflowExecution action or the 'StartChildWorkflowExecution'
-- decision.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
wtcDefaultExecutionStartToCloseTimeout :: Lens' WorkflowTypeConfiguration (Maybe Text)
wtcDefaultExecutionStartToCloseTimeout = lens _wtcDefaultExecutionStartToCloseTimeout (\ s a -> s{_wtcDefaultExecutionStartToCloseTimeout = a});

-- | /Optional./ The default maximum duration, specified when registering the
-- workflow type, that a decision task for executions of this workflow type
-- might take before returning completion or failure. If the task does not
-- close in the specified time then the task is automatically timed out and
-- rescheduled. If the decider eventually reports a completion or failure,
-- it is ignored. This default can be overridden when starting a workflow
-- execution using the StartWorkflowExecution action or the
-- 'StartChildWorkflowExecution' decision.
--
-- The duration is specified in seconds; an integer greater than or equal
-- to 0. The value \"NONE\" can be used to specify unlimited duration.
wtcDefaultTaskStartToCloseTimeout :: Lens' WorkflowTypeConfiguration (Maybe Text)
wtcDefaultTaskStartToCloseTimeout = lens _wtcDefaultTaskStartToCloseTimeout (\ s a -> s{_wtcDefaultTaskStartToCloseTimeout = a});

instance FromJSON WorkflowTypeConfiguration where
        parseJSON
          = withObject "WorkflowTypeConfiguration"
              (\ x ->
                 WorkflowTypeConfiguration' <$>
                   (x .:? "defaultLambdaRole") <*>
                     (x .:? "defaultChildPolicy")
                     <*> (x .:? "defaultTaskList")
                     <*> (x .:? "defaultTaskPriority")
                     <*> (x .:? "defaultExecutionStartToCloseTimeout")
                     <*> (x .:? "defaultTaskStartToCloseTimeout"))

-- | Used to filter workflow execution query results by type. Each parameter,
-- if specified, defines a rule that must be satisfied by each returned
-- result.
--
-- /See:/ 'workflowTypeFilter' smart constructor.
data WorkflowTypeFilter = WorkflowTypeFilter'
    { _wtfVersion :: !(Maybe Text)
    , _wtfName    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowTypeFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtfVersion'
--
-- * 'wtfName'
workflowTypeFilter
    :: Text -- ^ 'wtfName'
    -> WorkflowTypeFilter
workflowTypeFilter pName_ =
    WorkflowTypeFilter'
    { _wtfVersion = Nothing
    , _wtfName = pName_
    }

-- | Version of the workflow type.
wtfVersion :: Lens' WorkflowTypeFilter (Maybe Text)
wtfVersion = lens _wtfVersion (\ s a -> s{_wtfVersion = a});

-- | __Required.__ Name of the workflow type.
wtfName :: Lens' WorkflowTypeFilter Text
wtfName = lens _wtfName (\ s a -> s{_wtfName = a});

instance ToJSON WorkflowTypeFilter where
        toJSON WorkflowTypeFilter'{..}
          = object
              ["version" .= _wtfVersion, "name" .= _wtfName]

-- | Contains information about a workflow type.
--
-- /See:/ 'workflowTypeInfo' smart constructor.
data WorkflowTypeInfo = WorkflowTypeInfo'
    { _wtiDeprecationDate :: !(Maybe POSIX)
    , _wtiDescription     :: !(Maybe Text)
    , _wtiWorkflowType    :: !WorkflowType
    , _wtiStatus          :: !RegistrationStatus
    , _wtiCreationDate    :: !POSIX
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkflowTypeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtiDeprecationDate'
--
-- * 'wtiDescription'
--
-- * 'wtiWorkflowType'
--
-- * 'wtiStatus'
--
-- * 'wtiCreationDate'
workflowTypeInfo
    :: WorkflowType -- ^ 'wtiWorkflowType'
    -> RegistrationStatus -- ^ 'wtiStatus'
    -> UTCTime -- ^ 'wtiCreationDate'
    -> WorkflowTypeInfo
workflowTypeInfo pWorkflowType_ pStatus_ pCreationDate_ =
    WorkflowTypeInfo'
    { _wtiDeprecationDate = Nothing
    , _wtiDescription = Nothing
    , _wtiWorkflowType = pWorkflowType_
    , _wtiStatus = pStatus_
    , _wtiCreationDate = _Time # pCreationDate_
    }

-- | If the type is in deprecated state, then it is set to the date when the
-- type was deprecated.
wtiDeprecationDate :: Lens' WorkflowTypeInfo (Maybe UTCTime)
wtiDeprecationDate = lens _wtiDeprecationDate (\ s a -> s{_wtiDeprecationDate = a}) . mapping _Time;

-- | The description of the type registered through RegisterWorkflowType.
wtiDescription :: Lens' WorkflowTypeInfo (Maybe Text)
wtiDescription = lens _wtiDescription (\ s a -> s{_wtiDescription = a});

-- | The workflow type this information is about.
wtiWorkflowType :: Lens' WorkflowTypeInfo WorkflowType
wtiWorkflowType = lens _wtiWorkflowType (\ s a -> s{_wtiWorkflowType = a});

-- | The current status of the workflow type.
wtiStatus :: Lens' WorkflowTypeInfo RegistrationStatus
wtiStatus = lens _wtiStatus (\ s a -> s{_wtiStatus = a});

-- | The date when this type was registered.
wtiCreationDate :: Lens' WorkflowTypeInfo UTCTime
wtiCreationDate = lens _wtiCreationDate (\ s a -> s{_wtiCreationDate = a}) . _Time;

instance FromJSON WorkflowTypeInfo where
        parseJSON
          = withObject "WorkflowTypeInfo"
              (\ x ->
                 WorkflowTypeInfo' <$>
                   (x .:? "deprecationDate") <*> (x .:? "description")
                     <*> (x .: "workflowType")
                     <*> (x .: "status")
                     <*> (x .: "creationDate"))
