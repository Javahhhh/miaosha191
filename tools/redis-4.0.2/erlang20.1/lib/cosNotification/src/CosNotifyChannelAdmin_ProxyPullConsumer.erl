%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotifyChannelAdmin_ProxyPullConsumer
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosNotification/src/CosNotifyChannelAdmin.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotifyChannelAdmin_ProxyPullConsumer').
-ic_compiled("4_4_2").


%% Interface functions
-export([connect_any_pull_supplier/2, connect_any_pull_supplier/3, suspend_connection/1]).
-export([suspend_connection/2, resume_connection/1, resume_connection/2]).

%% Exports from "CosNotifyChannelAdmin::ProxyConsumer"
-export(['_get_MyType'/1, '_get_MyType'/2, '_get_MyAdmin'/1]).
-export(['_get_MyAdmin'/2, obtain_subscription_types/2, obtain_subscription_types/3]).
-export([validate_event_qos/2, validate_event_qos/3]).

%% Exports from "CosNotification::QoSAdmin"
-export([get_qos/1, get_qos/2, set_qos/2]).
-export([set_qos/3, validate_qos/2, validate_qos/3]).

%% Exports from "CosNotifyFilter::FilterAdmin"
-export([add_filter/2, add_filter/3, remove_filter/2]).
-export([remove_filter/3, get_filter/2, get_filter/3]).
-export([get_all_filters/1, get_all_filters/2, remove_all_filters/1]).
-export([remove_all_filters/2]).

%% Exports from "CosNotifyComm::PullConsumer"

%% Exports from "CosNotifyComm::NotifyPublish"
-export([offer_change/3, offer_change/4]).

%% Exports from "CosEventComm::PullConsumer"
-export([disconnect_pull_consumer/1, disconnect_pull_consumer/2]).

%% Exports from "CosEventChannelAdmin::ProxyPullConsumer"
-export([connect_pull_supplier/2, connect_pull_supplier/3]).

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



%%%% Operation: connect_any_pull_supplier
%% 
%%   Returns: RetVal
%%   Raises:  CosEventChannelAdmin::AlreadyConnected, CosEventChannelAdmin::TypeError
%%
connect_any_pull_supplier(OE_THIS, Pull_supplier) ->
    corba:call(OE_THIS, connect_any_pull_supplier, [Pull_supplier], ?MODULE).

connect_any_pull_supplier(OE_THIS, OE_Options, Pull_supplier) ->
    corba:call(OE_THIS, connect_any_pull_supplier, [Pull_supplier], ?MODULE, OE_Options).

%%%% Operation: suspend_connection
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyChannelAdmin::ConnectionAlreadyInactive, CosNotifyChannelAdmin::NotConnected
%%
suspend_connection(OE_THIS) ->
    corba:call(OE_THIS, suspend_connection, [], ?MODULE).

suspend_connection(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, suspend_connection, [], ?MODULE, OE_Options).

%%%% Operation: resume_connection
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyChannelAdmin::ConnectionAlreadyActive, CosNotifyChannelAdmin::NotConnected
%%
resume_connection(OE_THIS) ->
    corba:call(OE_THIS, resume_connection, [], ?MODULE).

resume_connection(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, resume_connection, [], ?MODULE, OE_Options).

%%%% Operation: '_get_MyType'
%% 
%%   Returns: RetVal
%%
'_get_MyType'(OE_THIS) ->
    corba:call(OE_THIS, '_get_MyType', [], ?MODULE).

'_get_MyType'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_MyType', [], ?MODULE, OE_Options).

%%%% Operation: '_get_MyAdmin'
%% 
%%   Returns: RetVal
%%
'_get_MyAdmin'(OE_THIS) ->
    corba:call(OE_THIS, '_get_MyAdmin', [], ?MODULE).

'_get_MyAdmin'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_MyAdmin', [], ?MODULE, OE_Options).

%%%% Operation: obtain_subscription_types
%% 
%%   Returns: RetVal
%%
obtain_subscription_types(OE_THIS, Mode) ->
    corba:call(OE_THIS, obtain_subscription_types, [Mode], ?MODULE).

obtain_subscription_types(OE_THIS, OE_Options, Mode) ->
    corba:call(OE_THIS, obtain_subscription_types, [Mode], ?MODULE, OE_Options).

%%%% Operation: validate_event_qos
%% 
%%   Returns: RetVal, Available_qos
%%   Raises:  CosNotification::UnsupportedQoS
%%
validate_event_qos(OE_THIS, Required_qos) ->
    corba:call(OE_THIS, validate_event_qos, [Required_qos], ?MODULE).

validate_event_qos(OE_THIS, OE_Options, Required_qos) ->
    corba:call(OE_THIS, validate_event_qos, [Required_qos], ?MODULE, OE_Options).

%%%% Operation: get_qos
%% 
%%   Returns: RetVal
%%
get_qos(OE_THIS) ->
    corba:call(OE_THIS, get_qos, [], ?MODULE).

get_qos(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_qos, [], ?MODULE, OE_Options).

%%%% Operation: set_qos
%% 
%%   Returns: RetVal
%%   Raises:  CosNotification::UnsupportedQoS
%%
set_qos(OE_THIS, Qos) ->
    corba:call(OE_THIS, set_qos, [Qos], ?MODULE).

set_qos(OE_THIS, OE_Options, Qos) ->
    corba:call(OE_THIS, set_qos, [Qos], ?MODULE, OE_Options).

%%%% Operation: validate_qos
%% 
%%   Returns: RetVal, Available_qos
%%   Raises:  CosNotification::UnsupportedQoS
%%
validate_qos(OE_THIS, Required_qos) ->
    corba:call(OE_THIS, validate_qos, [Required_qos], ?MODULE).

validate_qos(OE_THIS, OE_Options, Required_qos) ->
    corba:call(OE_THIS, validate_qos, [Required_qos], ?MODULE, OE_Options).

%%%% Operation: add_filter
%% 
%%   Returns: RetVal
%%
add_filter(OE_THIS, New_filter) ->
    corba:call(OE_THIS, add_filter, [New_filter], ?MODULE).

add_filter(OE_THIS, OE_Options, New_filter) ->
    corba:call(OE_THIS, add_filter, [New_filter], ?MODULE, OE_Options).

%%%% Operation: remove_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
remove_filter(OE_THIS, Filter) ->
    corba:call(OE_THIS, remove_filter, [Filter], ?MODULE).

remove_filter(OE_THIS, OE_Options, Filter) ->
    corba:call(OE_THIS, remove_filter, [Filter], ?MODULE, OE_Options).

%%%% Operation: get_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
get_filter(OE_THIS, Filter) ->
    corba:call(OE_THIS, get_filter, [Filter], ?MODULE).

get_filter(OE_THIS, OE_Options, Filter) ->
    corba:call(OE_THIS, get_filter, [Filter], ?MODULE, OE_Options).

%%%% Operation: get_all_filters
%% 
%%   Returns: RetVal
%%
get_all_filters(OE_THIS) ->
    corba:call(OE_THIS, get_all_filters, [], ?MODULE).

get_all_filters(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_all_filters, [], ?MODULE, OE_Options).

%%%% Operation: remove_all_filters
%% 
%%   Returns: RetVal
%%
remove_all_filters(OE_THIS) ->
    corba:call(OE_THIS, remove_all_filters, [], ?MODULE).

remove_all_filters(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, remove_all_filters, [], ?MODULE, OE_Options).

%%%% Operation: offer_change
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyComm::InvalidEventType
%%
offer_change(OE_THIS, Added, Removed) ->
    corba:call(OE_THIS, offer_change, [Added, Removed], ?MODULE).

offer_change(OE_THIS, OE_Options, Added, Removed) ->
    corba:call(OE_THIS, offer_change, [Added, Removed], ?MODULE, OE_Options).

%%%% Operation: disconnect_pull_consumer
%% 
%%   Returns: RetVal
%%
disconnect_pull_consumer(OE_THIS) ->
    corba:call(OE_THIS, disconnect_pull_consumer, [], ?MODULE).

disconnect_pull_consumer(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, disconnect_pull_consumer, [], ?MODULE, OE_Options).

%%%% Operation: connect_pull_supplier
%% 
%%   Returns: RetVal
%%   Raises:  CosEventChannelAdmin::AlreadyConnected, CosEventChannelAdmin::TypeError
%%
connect_pull_supplier(OE_THIS, Pull_supplier) ->
    corba:call(OE_THIS, connect_pull_supplier, [Pull_supplier], ?MODULE).

connect_pull_supplier(OE_THIS, OE_Options, Pull_supplier) ->
    corba:call(OE_THIS, connect_pull_supplier, [Pull_supplier], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosNotifyChannelAdmin/ProxyPullConsumer:1.0") -> true;
oe_is_a("IDL:omg.org/CosNotifyChannelAdmin/ProxyConsumer:1.0") -> true;
oe_is_a("IDL:omg.org/CosNotification/QoSAdmin:1.0") -> true;
oe_is_a("IDL:omg.org/CosNotifyFilter/FilterAdmin:1.0") -> true;
oe_is_a("IDL:omg.org/CosNotifyComm/PullConsumer:1.0") -> true;
oe_is_a("IDL:omg.org/CosNotifyComm/NotifyPublish:1.0") -> true;
oe_is_a("IDL:omg.org/CosEventComm/PullConsumer:1.0") -> true;
oe_is_a("IDL:omg.org/CosEventChannelAdmin/ProxyPullConsumer:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(connect_any_pull_supplier) -> 
	{tk_void,[{tk_objref,"IDL:omg.org/CosEventComm/PullSupplier:1.0",
                             "PullSupplier"}],
                 []};
oe_tc(suspend_connection) -> 
	{tk_void,[],[]};
oe_tc(resume_connection) -> 
	{tk_void,[],[]};
oe_tc('_get_MyType') -> 'CosNotifyChannelAdmin_ProxyConsumer':oe_tc('_get_MyType');
oe_tc('_get_MyAdmin') -> 'CosNotifyChannelAdmin_ProxyConsumer':oe_tc('_get_MyAdmin');
oe_tc(obtain_subscription_types) -> 'CosNotifyChannelAdmin_ProxyConsumer':oe_tc(obtain_subscription_types);
oe_tc(validate_event_qos) -> 'CosNotifyChannelAdmin_ProxyConsumer':oe_tc(validate_event_qos);
oe_tc(get_qos) -> 'CosNotification_QoSAdmin':oe_tc(get_qos);
oe_tc(set_qos) -> 'CosNotification_QoSAdmin':oe_tc(set_qos);
oe_tc(validate_qos) -> 'CosNotification_QoSAdmin':oe_tc(validate_qos);
oe_tc(add_filter) -> 'CosNotifyFilter_FilterAdmin':oe_tc(add_filter);
oe_tc(remove_filter) -> 'CosNotifyFilter_FilterAdmin':oe_tc(remove_filter);
oe_tc(get_filter) -> 'CosNotifyFilter_FilterAdmin':oe_tc(get_filter);
oe_tc(get_all_filters) -> 'CosNotifyFilter_FilterAdmin':oe_tc(get_all_filters);
oe_tc(remove_all_filters) -> 'CosNotifyFilter_FilterAdmin':oe_tc(remove_all_filters);
oe_tc(offer_change) -> 'CosNotifyComm_NotifyPublish':oe_tc(offer_change);
oe_tc(disconnect_pull_consumer) -> 'CosEventComm_PullConsumer':oe_tc(disconnect_pull_consumer);
oe_tc(connect_pull_supplier) -> 'CosEventChannelAdmin_ProxyPullConsumer':oe_tc(connect_pull_supplier);
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"connect_pull_supplier", 'CosEventChannelAdmin_ProxyPullConsumer':oe_tc(connect_pull_supplier)},
	{"disconnect_pull_consumer", 'CosEventComm_PullConsumer':oe_tc(disconnect_pull_consumer)},
	{"offer_change", 'CosNotifyComm_NotifyPublish':oe_tc(offer_change)},
	{"remove_all_filters", 'CosNotifyFilter_FilterAdmin':oe_tc(remove_all_filters)},
	{"get_all_filters", 'CosNotifyFilter_FilterAdmin':oe_tc(get_all_filters)},
	{"get_filter", 'CosNotifyFilter_FilterAdmin':oe_tc(get_filter)},
	{"remove_filter", 'CosNotifyFilter_FilterAdmin':oe_tc(remove_filter)},
	{"add_filter", 'CosNotifyFilter_FilterAdmin':oe_tc(add_filter)},
	{"validate_qos", 'CosNotification_QoSAdmin':oe_tc(validate_qos)},
	{"set_qos", 'CosNotification_QoSAdmin':oe_tc(set_qos)},
	{"get_qos", 'CosNotification_QoSAdmin':oe_tc(get_qos)},
	{"validate_event_qos", 'CosNotifyChannelAdmin_ProxyConsumer':oe_tc(validate_event_qos)},
	{"obtain_subscription_types", 'CosNotifyChannelAdmin_ProxyConsumer':oe_tc(obtain_subscription_types)},
	{"_get_MyAdmin", 'CosNotifyChannelAdmin_ProxyConsumer':oe_tc('_get_MyAdmin')},
	{"_get_MyType", 'CosNotifyChannelAdmin_ProxyConsumer':oe_tc('_get_MyType')},
	{"resume_connection", oe_tc(resume_connection)},
	{"suspend_connection", oe_tc(suspend_connection)},
	{"connect_any_pull_supplier", oe_tc(connect_any_pull_supplier)}].




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
    "IDL:omg.org/CosNotifyChannelAdmin/ProxyPullConsumer:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ProxyPullConsumer:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ProxyPullConsumer:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ProxyPullConsumer:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ProxyPullConsumer:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ProxyPullConsumer:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyChannelAdmin/ProxyPullConsumer:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('PullerConsumer_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('PullerConsumer_impl', Reason, State).


%%%% Operation: connect_any_pull_supplier
%% 
%%   Returns: RetVal
%%   Raises:  CosEventChannelAdmin::AlreadyConnected, CosEventChannelAdmin::TypeError
%%
handle_call({OE_THIS, OE_Context, connect_any_pull_supplier, [Pull_supplier]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', connect_any_pull_supplier, [Pull_supplier], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: suspend_connection
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyChannelAdmin::ConnectionAlreadyInactive, CosNotifyChannelAdmin::NotConnected
%%
handle_call({OE_THIS, OE_Context, suspend_connection, []}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', suspend_connection, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: resume_connection
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyChannelAdmin::ConnectionAlreadyActive, CosNotifyChannelAdmin::NotConnected
%%
handle_call({OE_THIS, OE_Context, resume_connection, []}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', resume_connection, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_get_MyType'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_MyType', []}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', '_get_MyType', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: '_get_MyAdmin'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_MyAdmin', []}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', '_get_MyAdmin', [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: obtain_subscription_types
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, obtain_subscription_types, [Mode]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', obtain_subscription_types, [Mode], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: validate_event_qos
%% 
%%   Returns: RetVal, Available_qos
%%   Raises:  CosNotification::UnsupportedQoS
%%
handle_call({OE_THIS, OE_Context, validate_event_qos, [Required_qos]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', validate_event_qos, [Required_qos], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: get_qos
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_qos, []}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', get_qos, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: set_qos
%% 
%%   Returns: RetVal
%%   Raises:  CosNotification::UnsupportedQoS
%%
handle_call({OE_THIS, OE_Context, set_qos, [Qos]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', set_qos, [Qos], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: validate_qos
%% 
%%   Returns: RetVal, Available_qos
%%   Raises:  CosNotification::UnsupportedQoS
%%
handle_call({OE_THIS, OE_Context, validate_qos, [Required_qos]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', validate_qos, [Required_qos], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: add_filter
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, add_filter, [New_filter]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', add_filter, [New_filter], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: remove_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
handle_call({OE_THIS, OE_Context, remove_filter, [Filter]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', remove_filter, [Filter], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: get_filter
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::FilterNotFound
%%
handle_call({OE_THIS, OE_Context, get_filter, [Filter]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', get_filter, [Filter], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: get_all_filters
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_all_filters, []}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', get_all_filters, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: remove_all_filters
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, remove_all_filters, []}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', remove_all_filters, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: offer_change
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyComm::InvalidEventType
%%
handle_call({OE_THIS, OE_Context, offer_change, [Added, Removed]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', offer_change, [Added, Removed], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: disconnect_pull_consumer
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, disconnect_pull_consumer, []}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', disconnect_pull_consumer, [], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: connect_pull_supplier
%% 
%%   Returns: RetVal
%%   Raises:  CosEventChannelAdmin::AlreadyConnected, CosEventChannelAdmin::TypeError
%%
handle_call({OE_THIS, OE_Context, connect_pull_supplier, [Pull_supplier]}, OE_From, OE_State) ->
  corba:handle_call('PullerConsumer_impl', connect_pull_supplier, [Pull_supplier], OE_State, OE_Context, OE_THIS, OE_From);



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
    corba:handle_info('PullerConsumer_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('PullerConsumer_impl', OldVsn, State, Extra).

