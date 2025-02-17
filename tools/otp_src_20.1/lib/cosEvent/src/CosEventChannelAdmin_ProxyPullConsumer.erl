%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosEventChannelAdmin_ProxyPullConsumer
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosEvent/src/CosEventChannelAdmin.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosEventChannelAdmin_ProxyPullConsumer').
-ic_compiled("4_4_2").


%% Interface functions
-export([connect_pull_supplier/2, connect_pull_supplier/3]).

%% Exports from "CosEventComm::PullConsumer"
-export([disconnect_pull_consumer/1, disconnect_pull_consumer/2]).

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



%%%% Operation: connect_pull_supplier
%% 
%%   Returns: RetVal
%%   Raises:  CosEventChannelAdmin::AlreadyConnected, CosEventChannelAdmin::TypeError
%%
connect_pull_supplier(OE_THIS, Pull_supplier) ->
    corba:call(OE_THIS, connect_pull_supplier, [Pull_supplier], ?MODULE).

connect_pull_supplier(OE_THIS, OE_Options, Pull_supplier) ->
    corba:call(OE_THIS, connect_pull_supplier, [Pull_supplier], ?MODULE, OE_Options).

%%%% Operation: disconnect_pull_consumer
%% 
%%   Returns: RetVal
%%
disconnect_pull_consumer(OE_THIS) ->
    corba:call(OE_THIS, disconnect_pull_consumer, [], ?MODULE).

disconnect_pull_consumer(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, disconnect_pull_consumer, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0") -> true;
oe_is_a("IDL:omg.org/CosEventComm/PullConsumer:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(connect_pull_supplier) -> 
	{tk_void,[{tk_objref,"IDL:omg.org/CosEventComm/PullSupplier:1.0",
                             "PullSupplier"}],
                 []};
oe_tc(disconnect_pull_consumer) -> 'CosEventComm_PullConsumer':oe_tc(disconnect_pull_consumer);
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"disconnect_pull_consumer", 'CosEventComm_PullConsumer':oe_tc(disconnect_pull_consumer)},
	{"connect_pull_supplier", oe_tc(connect_pull_supplier)}].




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
    "IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosEventChannelAdmin_ProxyPullConsumer_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosEventChannelAdmin_ProxyPullConsumer_impl', Reason, State).


%%%% Operation: connect_pull_supplier
%% 
%%   Returns: RetVal
%%   Raises:  CosEventChannelAdmin::AlreadyConnected, CosEventChannelAdmin::TypeError
%%
handle_call({OE_THIS, OE_Context, connect_pull_supplier, [Pull_supplier]}, _, OE_State) ->
  corba:handle_call('CosEventChannelAdmin_ProxyPullConsumer_impl', connect_pull_supplier, [Pull_supplier], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: disconnect_pull_consumer
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, disconnect_pull_consumer, []}, _, OE_State) ->
  corba:handle_call('CosEventChannelAdmin_ProxyPullConsumer_impl', disconnect_pull_consumer, [], OE_State, OE_Context, OE_THIS, false);



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
    corba:handle_info('CosEventChannelAdmin_ProxyPullConsumer_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosEventChannelAdmin_ProxyPullConsumer_impl', OldVsn, State, Extra).

