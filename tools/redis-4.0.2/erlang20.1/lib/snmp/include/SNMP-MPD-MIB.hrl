%%% This file was automatically generated by snmpc_mib_to_hrl version 5.2.7
%%% Date: 25-Sep-2017::21:54:40
-ifndef('SNMP-MPD-MIB').
-define('SNMP-MPD-MIB', true).

%% Oids

-define(snmpMPDMIB, [1,3,6,1,6,3,11]).

-define(snmpMPDAdmin, [1,3,6,1,6,3,11,1]).

-define(snmpMPDMIBObjects, [1,3,6,1,6,3,11,2]).

-define(snmpMPDStats, [1,3,6,1,6,3,11,2,1]).
-define(snmpUnknownSecurityModels, [1,3,6,1,6,3,11,2,1,1]).
-define(snmpUnknownSecurityModels_instance, [1,3,6,1,6,3,11,2,1,1,0]).
-define(snmpInvalidMsgs, [1,3,6,1,6,3,11,2,1,2]).
-define(snmpInvalidMsgs_instance, [1,3,6,1,6,3,11,2,1,2,0]).
-define(snmpUnknownPDUHandlers, [1,3,6,1,6,3,11,2,1,3]).
-define(snmpUnknownPDUHandlers_instance, [1,3,6,1,6,3,11,2,1,3,0]).

-define(snmpMPDMIBConformance, [1,3,6,1,6,3,11,3]).

-define(snmpMPDMIBCompliances, [1,3,6,1,6,3,11,3,1]).

-define(snmpMPDMIBGroups, [1,3,6,1,6,3,11,3,2]).

-define(snmpMPDGroup, [1,3,6,1,6,3,11,3,2,1]).


%% Range values
-define(low_snmpUnknownSecurityModels, 0).
-define(high_snmpUnknownSecurityModels, 4294967295).
-define(low_snmpInvalidMsgs, 0).
-define(high_snmpInvalidMsgs, 4294967295).
-define(low_snmpUnknownPDUHandlers, 0).
-define(high_snmpUnknownPDUHandlers, 4294967295).


%% Default values
-define(default_snmpUnknownSecurityModels, 0).
-define(default_snmpInvalidMsgs, 0).
-define(default_snmpUnknownPDUHandlers, 0).

-endif.
