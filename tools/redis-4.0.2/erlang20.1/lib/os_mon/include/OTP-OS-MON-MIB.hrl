%%% This file was automatically generated by snmpc_mib_to_hrl version 5.2.7
%%% Date: 25-Sep-2017::22:02:27
-ifndef('OTP-OS-MON-MIB').
-define('OTP-OS-MON-MIB', true).

%% Oids

-define(otpOsMonModule, [1,3,6,1,4,1,193,19,1,1,4]).

-define(otpOsMonMIB, [1,3,6,1,4,1,193,19,3,2]).

-define(otpOsMonMIBConformance, [1,3,6,1,4,1,193,19,3,2,1]).

-define(otpOsMonMIBCompliances, [1,3,6,1,4,1,193,19,3,2,1,1]).

-define(otpOsMonMIBGroups, [1,3,6,1,4,1,193,19,3,2,1,2]).

-define(loadGroup, [1,3,6,1,4,1,193,19,3,2,1,2,1]).

-define(diskGroup, [1,3,6,1,4,1,193,19,3,2,1,2,3]).

-define(otpOsMonMIBObjects, [1,3,6,1,4,1,193,19,3,2,2]).

-define(load, [1,3,6,1,4,1,193,19,3,2,2,1]).
-define(loadMemorySystemWatermark, [1,3,6,1,4,1,193,19,3,2,2,1,1]).
-define(loadMemorySystemWatermark_instance, [1,3,6,1,4,1,193,19,3,2,2,1,1,0]).
-define(loadMemoryErlProcWatermark, [1,3,6,1,4,1,193,19,3,2,2,1,2]).
-define(loadMemoryErlProcWatermark_instance, [1,3,6,1,4,1,193,19,3,2,2,1,2,0]).

-define(loadTable, [1,3,6,1,4,1,193,19,3,2,2,1,3]).

-define(loadEntry, [1,3,6,1,4,1,193,19,3,2,2,1,3,1]).
-define(loadErlNodeName, 1).
-define(loadSystemTotalMemory, 2).
-define(loadSystemUsedMemory, 3).
-define(loadLargestErlProcess, 4).
-define(loadLargestErlProcessUsedMemory, 5).
-define(loadCpuLoad, 6).
-define(loadCpuLoad5, 7).
-define(loadCpuLoad15, 8).
-define(loadOsWordsize, 9).
-define(loadSystemTotalMemory64, 10).
-define(loadSystemUsedMemory64, 11).
-define(loadLargestErlProcessUsedMemory64, 12).

-define(disk, [1,3,6,1,4,1,193,19,3,2,2,2]).
-define(diskAlmostFullThreshold, [1,3,6,1,4,1,193,19,3,2,2,2,1]).
-define(diskAlmostFullThreshold_instance, [1,3,6,1,4,1,193,19,3,2,2,2,1,0]).

-define(diskTable, [1,3,6,1,4,1,193,19,3,2,2,2,2]).

-define(diskEntry, [1,3,6,1,4,1,193,19,3,2,2,2,2,1]).
-define(diskId, 1).
-define(diskDescr, 2).
-define(diskKBytes, 3).
-define(diskCapacity, 4).

-define(otpOsMonMIBAlarms, [1,3,6,1,4,1,193,19,3,2,4]).

-define(otpOsMonMIBAlarmsV2, [1,3,6,1,4,1,193,19,3,2,4,0]).


%% Range values
-define(low_loadMemorySystemWatermark, 0).
-define(high_loadMemorySystemWatermark, 100).
-define(low_loadMemoryErlProcWatermark, 0).
-define(high_loadMemoryErlProcWatermark, 100).
-define(low_loadErlNodeName, 0).
-define(high_loadErlNodeName, 255).
-define(low_loadSystemTotalMemory, 0).
-define(high_loadSystemTotalMemory, 4294967295).
-define(low_loadSystemUsedMemory, 0).
-define(high_loadSystemUsedMemory, 4294967295).
-define(low_loadLargestErlProcess, 0).
-define(high_loadLargestErlProcess, 255).
-define(low_loadLargestErlProcessUsedMemory, 0).
-define(high_loadLargestErlProcessUsedMemory, 4294967295).
-define(low_loadCpuLoad, 0).
-define(high_loadCpuLoad, 100).
-define(low_loadCpuLoad5, 0).
-define(high_loadCpuLoad5, 100).
-define(low_loadCpuLoad15, 0).
-define(high_loadCpuLoad15, 100).
-define(low_loadOsWordsize, 0).
-define(high_loadOsWordsize, 4294967295).
-define(low_diskAlmostFullThreshold, 0).
-define(high_diskAlmostFullThreshold, 100).
-define(low_diskId, -2147483648).
-define(high_diskId, 2147483647).
-define(low_diskDescr, 0).
-define(high_diskDescr, 255).
-define(low_diskKBytes, 0).
-define(high_diskKBytes, 4294967295).
-define(low_diskCapacity, 0).
-define(high_diskCapacity, 100).


%% Default values
-define(default_loadMemorySystemWatermark, 0).
-define(default_loadMemoryErlProcWatermark, 0).
-define(default_diskAlmostFullThreshold, 0).

-endif.
