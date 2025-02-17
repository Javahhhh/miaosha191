%%% This file was automatically generated by snmpc_mib_to_hrl version 5.2.7
%%% Date: 25-Sep-2017::21:54:40
-ifndef('SNMP-NOTIFICATION-MIB').
-define('SNMP-NOTIFICATION-MIB', true).

%% Oids

-define(snmpNotificationMIB, [1,3,6,1,6,3,13]).

-define(snmpNotifyObjects, [1,3,6,1,6,3,13,1]).

-define(snmpNotifyTable, [1,3,6,1,6,3,13,1,1]).

-define(snmpNotifyEntry, [1,3,6,1,6,3,13,1,1,1]).
-define(snmpNotifyName, 1).
-define(snmpNotifyTag, 2).
-define(snmpNotifyType, 3).
-define(snmpNotifyStorageType, 4).
-define(snmpNotifyRowStatus, 5).

-define(snmpNotifyFilterProfileTable, [1,3,6,1,6,3,13,1,2]).

-define(snmpNotifyFilterProfileEntry, [1,3,6,1,6,3,13,1,2,1]).
-define(snmpNotifyFilterProfileName, 1).
-define(snmpNotifyFilterProfileStorType, 2).
-define(snmpNotifyFilterProfileRowStatus, 3).

-define(snmpNotifyFilterTable, [1,3,6,1,6,3,13,1,3]).

-define(snmpNotifyFilterEntry, [1,3,6,1,6,3,13,1,3,1]).
-define(snmpNotifyFilterSubtree, 1).
-define(snmpNotifyFilterMask, 2).
-define(snmpNotifyFilterType, 3).
-define(snmpNotifyFilterStorageType, 4).
-define(snmpNotifyFilterRowStatus, 5).

-define(snmpNotifyConformance, [1,3,6,1,6,3,13,3]).

-define(snmpNotifyCompliances, [1,3,6,1,6,3,13,3,1]).

-define(snmpNotifyGroups, [1,3,6,1,6,3,13,3,2]).

-define(snmpNotifyGroup, [1,3,6,1,6,3,13,3,2,1]).

-define(snmpNotifyFilterGroup, [1,3,6,1,6,3,13,3,2,2]).


%% Range values
-define(low_snmpNotifyName, 1).
-define(high_snmpNotifyName, 32).
-define(low_snmpNotifyTag, 0).
-define(high_snmpNotifyTag, 255).
-define(low_snmpNotifyFilterProfileName, 1).
-define(high_snmpNotifyFilterProfileName, 32).
-define(low_snmpNotifyFilterMask, 0).
-define(high_snmpNotifyFilterMask, 16).


%% Enum definitions from snmpNotifyType
-define(snmpNotifyType_inform, 2).
-define(snmpNotifyType_trap, 1).

%% Enum definitions from snmpNotifyStorageType
-define(snmpNotifyStorageType_readOnly, 5).
-define(snmpNotifyStorageType_permanent, 4).
-define(snmpNotifyStorageType_nonVolatile, 3).
-define(snmpNotifyStorageType_volatile, 2).
-define(snmpNotifyStorageType_other, 1).

%% Enum definitions from snmpNotifyRowStatus
-define(snmpNotifyRowStatus_destroy, 6).
-define(snmpNotifyRowStatus_createAndWait, 5).
-define(snmpNotifyRowStatus_createAndGo, 4).
-define(snmpNotifyRowStatus_notReady, 3).
-define(snmpNotifyRowStatus_notInService, 2).
-define(snmpNotifyRowStatus_active, 1).

%% Enum definitions from snmpNotifyFilterProfileStorType
-define(snmpNotifyFilterProfileStorType_readOnly, 5).
-define(snmpNotifyFilterProfileStorType_permanent, 4).
-define(snmpNotifyFilterProfileStorType_nonVolatile, 3).
-define(snmpNotifyFilterProfileStorType_volatile, 2).
-define(snmpNotifyFilterProfileStorType_other, 1).

%% Enum definitions from snmpNotifyFilterProfileRowStatus
-define(snmpNotifyFilterProfileRowStatus_destroy, 6).
-define(snmpNotifyFilterProfileRowStatus_createAndWait, 5).
-define(snmpNotifyFilterProfileRowStatus_createAndGo, 4).
-define(snmpNotifyFilterProfileRowStatus_notReady, 3).
-define(snmpNotifyFilterProfileRowStatus_notInService, 2).
-define(snmpNotifyFilterProfileRowStatus_active, 1).

%% Enum definitions from snmpNotifyFilterType
-define(snmpNotifyFilterType_excluded, 2).
-define(snmpNotifyFilterType_included, 1).

%% Enum definitions from snmpNotifyFilterStorageType
-define(snmpNotifyFilterStorageType_readOnly, 5).
-define(snmpNotifyFilterStorageType_permanent, 4).
-define(snmpNotifyFilterStorageType_nonVolatile, 3).
-define(snmpNotifyFilterStorageType_volatile, 2).
-define(snmpNotifyFilterStorageType_other, 1).

%% Enum definitions from snmpNotifyFilterRowStatus
-define(snmpNotifyFilterRowStatus_destroy, 6).
-define(snmpNotifyFilterRowStatus_createAndWait, 5).
-define(snmpNotifyFilterRowStatus_createAndGo, 4).
-define(snmpNotifyFilterRowStatus_notReady, 3).
-define(snmpNotifyFilterRowStatus_notInService, 2).
-define(snmpNotifyFilterRowStatus_active, 1).

%% Default values
-define(default_snmpNotifyTag, []).
-define(default_snmpNotifyType, 1).
-define(default_snmpNotifyStorageType, 3).
-define(default_snmpNotifyFilterProfileStorType, 3).
-define(default_snmpNotifyFilterMask, []).
-define(default_snmpNotifyFilterType, 1).
-define(default_snmpNotifyFilterStorageType, 3).

-endif.
