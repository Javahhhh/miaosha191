%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotification
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosNotification/src/CosNotification.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotification').
-ic_compiled("4_4_2").


%% Interface functions
-export(['EventReliability'/0, 'BestEffort'/0, 'Persistent'/0]).
-export(['ConnectionReliability'/0, 'Priority'/0, 'LowestPriority'/0]).
-export(['HighestPriority'/0, 'DefaultPriority'/0, 'StartTime'/0]).
-export(['StopTime'/0, 'Timeout'/0, 'OrderPolicy'/0]).
-export(['AnyOrder'/0, 'FifoOrder'/0, 'PriorityOrder'/0]).
-export(['DeadlineOrder'/0, 'DiscardPolicy'/0, 'LifoOrder'/0]).
-export(['RejectNewEvents'/0, 'MaximumBatchSize'/0, 'PacingInterval'/0]).
-export(['StartTimeSupported'/0, 'StopTimeSupported'/0, 'MaxEventsPerConsumer'/0]).
-export(['MaxQueueLength'/0, 'MaxConsumers'/0, 'MaxSuppliers'/0]).

%%%% Constant: 'EventReliability'
%%
'EventReliability'() -> "EventReliability".

%%%% Constant: 'BestEffort'
%%
'BestEffort'() -> 0.

%%%% Constant: 'Persistent'
%%
'Persistent'() -> 1.

%%%% Constant: 'ConnectionReliability'
%%
'ConnectionReliability'() -> "ConnectionReliability".

%%%% Constant: 'Priority'
%%
'Priority'() -> "Priority".

%%%% Constant: 'LowestPriority'
%%
'LowestPriority'() -> -32767.

%%%% Constant: 'HighestPriority'
%%
'HighestPriority'() -> 32767.

%%%% Constant: 'DefaultPriority'
%%
'DefaultPriority'() -> 0.

%%%% Constant: 'StartTime'
%%
'StartTime'() -> "StartTime".

%%%% Constant: 'StopTime'
%%
'StopTime'() -> "StopTime".

%%%% Constant: 'Timeout'
%%
'Timeout'() -> "Timeout".

%%%% Constant: 'OrderPolicy'
%%
'OrderPolicy'() -> "OrderPolicy".

%%%% Constant: 'AnyOrder'
%%
'AnyOrder'() -> 0.

%%%% Constant: 'FifoOrder'
%%
'FifoOrder'() -> 1.

%%%% Constant: 'PriorityOrder'
%%
'PriorityOrder'() -> 2.

%%%% Constant: 'DeadlineOrder'
%%
'DeadlineOrder'() -> 3.

%%%% Constant: 'DiscardPolicy'
%%
'DiscardPolicy'() -> "DiscardPolicy".

%%%% Constant: 'LifoOrder'
%%
'LifoOrder'() -> 4.

%%%% Constant: 'RejectNewEvents'
%%
'RejectNewEvents'() -> 5.

%%%% Constant: 'MaximumBatchSize'
%%
'MaximumBatchSize'() -> "MaximumBatchSize".

%%%% Constant: 'PacingInterval'
%%
'PacingInterval'() -> "PacingInterval".

%%%% Constant: 'StartTimeSupported'
%%
'StartTimeSupported'() -> "StartTimeSupported".

%%%% Constant: 'StopTimeSupported'
%%
'StopTimeSupported'() -> "StopTimeSupported".

%%%% Constant: 'MaxEventsPerConsumer'
%%
'MaxEventsPerConsumer'() -> "MaxEventsPerConsumer".

%%%% Constant: 'MaxQueueLength'
%%
'MaxQueueLength'() -> "MaxQueueLength".

%%%% Constant: 'MaxConsumers'
%%
'MaxConsumers'() -> "MaxConsumers".

%%%% Constant: 'MaxSuppliers'
%%
'MaxSuppliers'() -> "MaxSuppliers".

