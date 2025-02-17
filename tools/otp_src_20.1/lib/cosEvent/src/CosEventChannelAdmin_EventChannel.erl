%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosEventChannelAdmin_EventChannel
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosEvent/src/CosEventChannelAdmin.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosEventChannelAdmin_EventChannel').
-ic_compiled("4_4_2").


%% Interface functions
-export([for_consumers/1, for_consumers/2, for_suppliers/1]).
-export([for_suppliers/2, destroy/1, destroy/2]).

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



%%%% Operation: for_consumers
%% 
%%   Returns: RetVal
%%
for_consumers(OE_THIS) ->
    corba:call(OE_THIS, for_consumers, [], ?MODULE).

for_consumers(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, for_consumers, [], ?MODULE, OE_Options).

%%%% Operation: for_suppliers
%% 
%%   Returns: RetVal
%%
for_suppliers(OE_THIS) ->
    corba:call(OE_THIS, for_suppliers, [], ?MODULE).

for_suppliers(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, for_suppliers, [], ?MODULE, OE_Options).

%%%% Operation: destroy
%% 
%%   Returns: RetVal
%%
destroy(OE_THIS) ->
    corba:call(OE_THIS, destroy, [], ?MODULE).

destroy(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, destroy, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(for_consumers) -> 
	{{tk_objref,"IDL:omg.org/CosEventChannelAdmin/ConsumerAdmin:1.0",
                    "ConsumerAdmin"},
         [],[]};
oe_tc(for_suppliers) -> 
	{{tk_objref,"IDL:omg.org/CosEventChannelAdmin/SupplierAdmin:1.0",
                    "SupplierAdmin"},
         [],[]};
oe_tc(destroy) -> 
	{tk_void,[],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"destroy", oe_tc(destroy)},
	{"for_suppliers", oe_tc(for_suppliers)},
	{"for_consumers", oe_tc(for_consumers)}].




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
    "IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosEventChannelAdmin_EventChannel_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosEventChannelAdmin_EventChannel_impl', Reason, State).


%%%% Operation: for_consumers
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, for_consumers, []}, _, OE_State) ->
  corba:handle_call('CosEventChannelAdmin_EventChannel_impl', for_consumers, [], OE_State, OE_Context, false, false);

%%%% Operation: for_suppliers
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, for_suppliers, []}, _, OE_State) ->
  corba:handle_call('CosEventChannelAdmin_EventChannel_impl', for_suppliers, [], OE_State, OE_Context, false, false);

%%%% Operation: destroy
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, destroy, []}, _, OE_State) ->
  corba:handle_call('CosEventChannelAdmin_EventChannel_impl', destroy, [], OE_State, OE_Context, false, false);



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
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosEventChannelAdmin_EventChannel_impl', OldVsn, State, Extra).

