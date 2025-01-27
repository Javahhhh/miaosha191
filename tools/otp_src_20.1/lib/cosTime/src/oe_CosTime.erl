%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_CosTime
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosTime/src/CosTime.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_CosTime).
-ic_compiled("4_4_2").


-include_lib("orber/include/ifr_types.hrl").

%% Interface functions

-export([oe_register/0, oe_unregister/0, oe_get_module/5]).
-export([oe_dependency/0]).



oe_register() ->
    OE_IFR = orber_ifr:find_repository(),

    register_tests(OE_IFR),

    _OE_1 = oe_get_top_module(OE_IFR, "IDL:omg.org/CosTime:1.0", "CosTime", "1.0"),

    orber_ifr:'ModuleDef_create_enum'(_OE_1, "IDL:omg.org/CosTime/TimeComparison:1.0", "TimeComparison", "1.0", ["TCEqualTo","TCLessThan","TCGreaterThan","TCIndeterminate"]),

    orber_ifr:'ModuleDef_create_enum'(_OE_1, "IDL:omg.org/CosTime/ComparisonType:1.0", "ComparisonType", "1.0", ["IntervalC","MidC"]),

    orber_ifr:'ModuleDef_create_enum'(_OE_1, "IDL:omg.org/CosTime/OverlapType:1.0", "OverlapType", "1.0", ["OTContainer","OTContained","OTOverlap","OTNoOverlap"]),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:omg.org/CosTime/TimeUnavailable:1.0", "TimeUnavailable", "1.0", []),

    _OE_2 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosTime/UTO:1.0", "UTO", "1.0", []),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosTime/UTO/time:1.0", "time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosTime/UTO/inaccuracy:1.0", "inaccuracy", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosTime/UTO/tdf:1.0", "tdf", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_short), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosTime/UTO/utc_time:1.0", "utc_time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_struct,
                                               "IDL:omg.org/TimeBase/UtcT:1.0",
                                               "UtcT",
                                               [{"time",tk_ulonglong},
                                                {"inacclo",tk_ulong},
                                                {"inacchi",tk_ushort},
                                                {"tdf",tk_short}]}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosTime/UTO/absolute_time:1.0", "absolute_time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), 'OP_NORMAL', [], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosTime/UTO/compare_time:1.0", "compare_time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_enum,
                                               "IDL:omg.org/CosTime/TimeComparison:1.0",
                                               "TimeComparison",
                                               ["TCEqualTo","TCLessThan",
                                                "TCGreaterThan",
                                                "TCIndeterminate"]}), 'OP_NORMAL', [#parameterdescription{name="uto", type={tk_objref,
                                        "IDL:omg.org/CosTime/UTO:1.0","UTO"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), mode='PARAM_IN'}
, #parameterdescription{name="comparison_type", type={tk_enum,
                                                    "IDL:omg.org/CosTime/ComparisonType:1.0",
                                                    "ComparisonType",
                                                    ["IntervalC","MidC"]}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_enum,
                                               "IDL:omg.org/CosTime/ComparisonType:1.0",
                                               "ComparisonType",
                                               ["IntervalC","MidC"]}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosTime/UTO/time_to_interval:1.0", "time_to_interval", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/TIO:1.0",
                                               "TIO"}), 'OP_NORMAL', [#parameterdescription{name="uto", type={tk_objref,
                                        "IDL:omg.org/CosTime/UTO:1.0","UTO"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:omg.org/CosTime/UTO/interval:1.0", "interval", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/TIO:1.0",
                                               "TIO"}), 'OP_NORMAL', [], [], []),

    _OE_3 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosTime/TIO:1.0", "TIO", "1.0", []),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_3, "IDL:omg.org/CosTime/TIO/time_interval:1.0", "time_interval", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_struct,
                                               "IDL:omg.org/TimeBase/IntervalT:1.0",
                                               "IntervalT",
                                               [{"lower_bound",tk_ulonglong},
                                                {"upper_bound",tk_ulonglong}]}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:omg.org/CosTime/TIO/spans:1.0", "spans", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_enum,
                                               "IDL:omg.org/CosTime/OverlapType:1.0",
                                               "OverlapType",
                                               ["OTContainer","OTContained",
                                                "OTOverlap","OTNoOverlap"]}), 'OP_NORMAL', [#parameterdescription{name="overlap", type={tk_objref,
                                            "IDL:omg.org/CosTime/TIO:1.0",
                                            "TIO"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/TIO:1.0",
                                               "TIO"}), mode='PARAM_OUT'}
, #parameterdescription{name="time", type={tk_objref,
                                         "IDL:omg.org/CosTime/UTO:1.0","UTO"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:omg.org/CosTime/TIO/overlaps:1.0", "overlaps", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_enum,
                                               "IDL:omg.org/CosTime/OverlapType:1.0",
                                               "OverlapType",
                                               ["OTContainer","OTContained",
                                                "OTOverlap","OTNoOverlap"]}), 'OP_NORMAL', [#parameterdescription{name="overlap", type={tk_objref,
                                            "IDL:omg.org/CosTime/TIO:1.0",
                                            "TIO"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/TIO:1.0",
                                               "TIO"}), mode='PARAM_OUT'}
, #parameterdescription{name="interval", type={tk_objref,
                                             "IDL:omg.org/CosTime/TIO:1.0",
                                             "TIO"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/TIO:1.0",
                                               "TIO"}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:omg.org/CosTime/TIO/time:1.0", "time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), 'OP_NORMAL', [], [], []),

    _OE_4 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosTime/TimeService:1.0", "TimeService", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosTime/TimeService/universal_time:1.0", "universal_time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), 'OP_NORMAL', [], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosTime/TimeUnavailable:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosTime/TimeService/secure_universal_time:1.0", "secure_universal_time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), 'OP_NORMAL', [], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosTime/TimeUnavailable:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosTime/TimeService/new_universal_time:1.0", "new_universal_time", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), 'OP_NORMAL', [#parameterdescription{name="tdf", type=tk_short, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_short), mode='PARAM_IN'}
, #parameterdescription{name="inaccuracy", type=tk_ulonglong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong), mode='PARAM_IN'}
, #parameterdescription{name="time", type=tk_ulonglong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosTime/TimeService/uto_from_utc:1.0", "uto_from_utc", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/UTO:1.0",
                                               "UTO"}), 'OP_NORMAL', [#parameterdescription{name="utc", type={tk_struct,
                                        "IDL:omg.org/TimeBase/UtcT:1.0",
                                        "UtcT",
                                        [{"time",tk_ulonglong},
                                         {"inacclo",tk_ulong},
                                         {"inacchi",tk_ushort},
                                         {"tdf",tk_short}]}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_struct,
                                               "IDL:omg.org/TimeBase/UtcT:1.0",
                                               "UtcT",
                                               [{"time",tk_ulonglong},
                                                {"inacclo",tk_ulong},
                                                {"inacchi",tk_ushort},
                                                {"tdf",tk_short}]}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosTime/TimeService/new_interval:1.0", "new_interval", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosTime/TIO:1.0",
                                               "TIO"}), 'OP_NORMAL', [#parameterdescription{name="upper", type=tk_ulonglong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong), mode='PARAM_IN'}
, #parameterdescription{name="lower", type=tk_ulonglong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulonglong), mode='PARAM_IN'}
], [], []),

    ok.


%% General IFR registration checks.
register_tests(OE_IFR)->
  re_register_test(OE_IFR),
  include_reg_test(OE_IFR).


%% IFR type Re-registration checks.
re_register_test(OE_IFR)->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosTime/TimeComparison:1.0") of
    []  ->
      true;
    _ ->
      exit({allready_registered,"IDL:omg.org/CosTime/TimeComparison:1.0"})
 end.


%% IFR registration checks for included idl files.
include_reg_test(OE_IFR) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/TimeBase:1.0") of
    [] ->
      exit({unregistered,"IDL:omg.org/TimeBase:1.0"});
    _  ->
      true
  end,
  true.


%% Fetch top module reference, register if unregistered.
oe_get_top_module(OE_IFR, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'Repository_create_module'(OE_IFR, ID, Name, Version);
    Mod  ->
      Mod
   end.

%% Fetch module reference, register if unregistered.
oe_get_module(OE_IFR, OE_Parent, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'ModuleDef_create_module'(OE_Parent, ID, Name, Version);
    Mod  ->
      Mod
   end.



oe_unregister() ->
    OE_IFR = orber_ifr:find_repository(),

    oe_destroy(OE_IFR, "IDL:omg.org/CosTime/TimeService:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTime/TIO:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTime/UTO:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTime/TimeUnavailable:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTime/OverlapType:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTime/ComparisonType:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosTime/TimeComparison:1.0"),
    oe_destroy_if_empty(OE_IFR, "IDL:omg.org/CosTime:1.0"),
    ok.


oe_destroy_if_empty(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    case orber_ifr:contents(Ref, 'dk_All', 'true') of
		[] ->
		    orber_ifr:destroy(Ref),
		    ok;
		_ ->
		    ok
	    end
    end.

oe_destroy(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    orber_ifr:destroy(Ref),
	    ok
    end.



%% Idl file dependency list function
oe_dependency() ->

    {"/net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosTime/src/CosTime.idl",
     ["TimeBase.idl"]}.

