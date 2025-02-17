%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTimerEvent_TimerEventHandler
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosTime/src/CosTimerEvent.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTimerEvent_TimerEventHandler').
-ic_compiled("4_4_2").


%% Interface functions
-export(['_get_status'/1, '_get_status'/2, time_set/1]).
-export([time_set/2, set_timer/3, set_timer/4]).
-export([cancel_timer/1, cancel_timer/2, set_data/2]).
-export([set_data/3]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: '_get_status'
%% 
%%   Returns: RetVal
%%
'_get_status'(OE_THIS) ->
    corba:call(OE_THIS, '_get_status', [], ?MODULE).

'_get_status'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_status', [], ?MODULE, OE_Options).

%%%% Operation: time_set
%% 
%%   Returns: RetVal, Uto
%%
time_set(OE_THIS) ->
    corba:call(OE_THIS, time_set, [], ?MODULE).

time_set(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, time_set, [], ?MODULE, OE_Options).

%%%% Operation: set_timer
%% 
%%   Returns: RetVal
%%
set_timer(OE_THIS, Time_type, Trigger_time) ->
    corba:call(OE_THIS, set_timer, [Time_type, Trigger_time], ?MODULE).

set_timer(OE_THIS, OE_Options, Time_type, Trigger_time) ->
    corba:call(OE_THIS, set_timer, [Time_type, Trigger_time], ?MODULE, OE_Options).

%%%% Operation: cancel_timer
%% 
%%   Returns: RetVal
%%
cancel_timer(OE_THIS) ->
    corba:call(OE_THIS, cancel_timer, [], ?MODULE).

cancel_timer(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, cancel_timer, [], ?MODULE, OE_Options).

%%%% Operation: set_data
%% 
%%   Returns: RetVal
%%
set_data(OE_THIS, Event_data) ->
    corba:call(OE_THIS, set_data, [Event_data], ?MODULE).

set_data(OE_THIS, OE_Options, Event_data) ->
    corba:call(OE_THIS, set_data, [Event_data], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc('_get_status') -> 
	{{tk_enum,"IDL:omg.org/CosTimerEvent/EventStatus:1.0","EventStatus",
                  ["ESTimeSet","ESTimeCleared","ESTriggered",
                   "ESFailedTrigger"]},
         [],[]};
oe_tc(time_set) -> 
	{tk_boolean,[],[{tk_objref,"IDL:omg.org/CosTime/UTO:1.0","UTO"}]};
oe_tc(set_timer) -> 
	{tk_void,[{tk_enum,"IDL:omg.org/CosTimerEvent/TimeType:1.0",
                           "TimeType",
                           ["TTAbsolute","TTRelative","TTPeriodic"]},
                  {tk_objref,"IDL:omg.org/CosTime/UTO:1.0","UTO"}],
                 []};
oe_tc(cancel_timer) -> 
	{tk_boolean,[],[]};
oe_tc(set_data) -> 
	{tk_void,[tk_any],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"set_data", oe_tc(set_data)},
	{"cancel_timer", oe_tc(cancel_timer)},
	{"set_timer", oe_tc(set_timer)},
	{"time_set", oe_tc(time_set)},
	{"_get_status", oe_tc('_get_status')}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosTimerEvent_TimerEventHandler_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosTimerEvent_TimerEventHandler_impl', Reason, State).


%%%% Operation: '_get_status'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_status', []}, _, OE_State) ->
  corba:handle_call('CosTimerEvent_TimerEventHandler_impl', '_get_status', [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: time_set
%% 
%%   Returns: RetVal, Uto
%%
handle_call({OE_THIS, OE_Context, time_set, []}, _, OE_State) ->
  corba:handle_call('CosTimerEvent_TimerEventHandler_impl', time_set, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: set_timer
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, set_timer, [Time_type, Trigger_time]}, _, OE_State) ->
  corba:handle_call('CosTimerEvent_TimerEventHandler_impl', set_timer, [Time_type, Trigger_time], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: cancel_timer
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, cancel_timer, []}, _, OE_State) ->
  corba:handle_call('CosTimerEvent_TimerEventHandler_impl', cancel_timer, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: set_data
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, set_data, [Event_data]}, _, OE_State) ->
  corba:handle_call('CosTimerEvent_TimerEventHandler_impl', set_data, [Event_data], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(Info, State) ->
    corba:handle_info('CosTimerEvent_TimerEventHandler_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosTimerEvent_TimerEventHandler_impl', OldVsn, State, Extra).

