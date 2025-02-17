%%% This file was automatically generated by snmpc_mib_to_hrl version 5.2.7
%%% Date: 25-Sep-2017::21:58:38
-ifndef('OTP-MIB').
-define('OTP-MIB', true).

%% Oids

-define(otpModule, [1,3,6,1,4,1,193,19,1,1,3]).

-define(otpMIB, [1,3,6,1,4,1,193,19,3,1]).

-define(otpMIBConformance, [1,3,6,1,4,1,193,19,3,1,1]).

-define(otpMIBCompliances, [1,3,6,1,4,1,193,19,3,1,1,1]).

-define(otpMIBGroups, [1,3,6,1,4,1,193,19,3,1,1,2]).

-define(erlGroup, [1,3,6,1,4,1,193,19,3,1,1,2,1]).

-define(applGroup, [1,3,6,1,4,1,193,19,3,1,1,2,2]).

-define(otpMIBObjects, [1,3,6,1,4,1,193,19,3,1,2]).

-define(erlang, [1,3,6,1,4,1,193,19,3,1,2,1]).

-define(erlNodeTable, [1,3,6,1,4,1,193,19,3,1,2,1,1]).

-define(erlNodeEntry, [1,3,6,1,4,1,193,19,3,1,2,1,1,1]).
-define(erlNodeId, 1).
-define(erlNodeName, 2).
-define(erlNodeMachine, 3).
-define(erlNodeVersion, 4).
-define(erlNodeRunQueue, 5).
-define(erlNodeRunTime, 6).
-define(erlNodeWallClock, 7).
-define(erlNodeReductions, 8).
-define(erlNodeProcesses, 9).
-define(erlNodeInBytes, 10).
-define(erlNodeOutBytes, 11).

-define(appls, [1,3,6,1,4,1,193,19,3,1,2,2]).

-define(applTable, [1,3,6,1,4,1,193,19,3,1,2,2,1]).

-define(applEntry, [1,3,6,1,4,1,193,19,3,1,2,2,1,1]).
-define(applId, 1).
-define(applName, 2).
-define(applDescr, 3).
-define(applVsn, 4).


%% Range values
-define(low_erlNodeId, -2147483648).
-define(high_erlNodeId, 2147483647).
-define(low_erlNodeName, 0).
-define(high_erlNodeName, 255).
-define(low_erlNodeMachine, 0).
-define(high_erlNodeMachine, 255).
-define(low_erlNodeVersion, 0).
-define(high_erlNodeVersion, 255).
-define(low_erlNodeRunQueue, 0).
-define(high_erlNodeRunQueue, 4294967295).
-define(low_erlNodeProcesses, 0).
-define(high_erlNodeProcesses, 4294967295).
-define(low_applId, -2147483648).
-define(high_applId, 2147483647).
-define(low_applName, 0).
-define(high_applName, 255).
-define(low_applDescr, 0).
-define(high_applDescr, 255).
-define(low_applVsn, 0).
-define(high_applVsn, 255).


%% Default values

-endif.
