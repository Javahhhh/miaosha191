%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: ETraP_Server
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('ETraP_Server').
-ic_compiled("4_4_2").


%% Interface functions

%% Exports from "CosTransactions::Coordinator"
-export([get_status/1, get_status/2, get_parent_status/1]).
-export([get_parent_status/2, get_top_level_status/1, get_top_level_status/2]).
-export([is_same_transaction/2, is_same_transaction/3, is_related_transaction/2]).
-export([is_related_transaction/3, is_ancestor_transaction/2, is_ancestor_transaction/3]).
-export([is_descendant_transaction/2, is_descendant_transaction/3, is_top_level_transaction/1]).
-export([is_top_level_transaction/2, hash_transaction/1, hash_transaction/2]).
-export([hash_top_level_tran/1, hash_top_level_tran/2, register_resource/2]).
-export([register_resource/3, register_subtran_aware/2, register_subtran_aware/3]).
-export([rollback_only/1, rollback_only/2, get_transaction_name/1]).
-export([get_transaction_name/2, create_subtransaction/1, create_subtransaction/2]).
-export([get_txcontext/1, get_txcontext/2]).

%% Exports from "CosTransactions::Resource"
-export([prepare/1, prepare/2, rollback/1]).
-export([rollback/2, commit/1, commit/2]).
-export([commit_one_phase/1, commit_one_phase/2, forget/1]).
-export([forget/2]).

%% Exports from "CosTransactions::RecoveryCoordinator"
-export([replay_completion/2, replay_completion/3]).

%% Exports from "CosTransactions::Control"
-export([get_terminator/1, get_terminator/2, get_coordinator/1]).
-export([get_coordinator/2]).

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



%%%% Operation: get_status
%% 
%%   Returns: RetVal
%%
get_status(OE_THIS) ->
    corba:call(OE_THIS, get_status, [], ?MODULE).

get_status(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_status, [], ?MODULE, OE_Options).

%%%% Operation: get_parent_status
%% 
%%   Returns: RetVal
%%
get_parent_status(OE_THIS) ->
    corba:call(OE_THIS, get_parent_status, [], ?MODULE).

get_parent_status(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_parent_status, [], ?MODULE, OE_Options).

%%%% Operation: get_top_level_status
%% 
%%   Returns: RetVal
%%
get_top_level_status(OE_THIS) ->
    corba:call(OE_THIS, get_top_level_status, [], ?MODULE).

get_top_level_status(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_top_level_status, [], ?MODULE, OE_Options).

%%%% Operation: is_same_transaction
%% 
%%   Returns: RetVal
%%
is_same_transaction(OE_THIS, Tc) ->
    corba:call(OE_THIS, is_same_transaction, [Tc], ?MODULE).

is_same_transaction(OE_THIS, OE_Options, Tc) ->
    corba:call(OE_THIS, is_same_transaction, [Tc], ?MODULE, OE_Options).

%%%% Operation: is_related_transaction
%% 
%%   Returns: RetVal
%%
is_related_transaction(OE_THIS, Tc) ->
    corba:call(OE_THIS, is_related_transaction, [Tc], ?MODULE).

is_related_transaction(OE_THIS, OE_Options, Tc) ->
    corba:call(OE_THIS, is_related_transaction, [Tc], ?MODULE, OE_Options).

%%%% Operation: is_ancestor_transaction
%% 
%%   Returns: RetVal
%%
is_ancestor_transaction(OE_THIS, Tc) ->
    corba:call(OE_THIS, is_ancestor_transaction, [Tc], ?MODULE).

is_ancestor_transaction(OE_THIS, OE_Options, Tc) ->
    corba:call(OE_THIS, is_ancestor_transaction, [Tc], ?MODULE, OE_Options).

%%%% Operation: is_descendant_transaction
%% 
%%   Returns: RetVal
%%
is_descendant_transaction(OE_THIS, Tc) ->
    corba:call(OE_THIS, is_descendant_transaction, [Tc], ?MODULE).

is_descendant_transaction(OE_THIS, OE_Options, Tc) ->
    corba:call(OE_THIS, is_descendant_transaction, [Tc], ?MODULE, OE_Options).

%%%% Operation: is_top_level_transaction
%% 
%%   Returns: RetVal
%%
is_top_level_transaction(OE_THIS) ->
    corba:call(OE_THIS, is_top_level_transaction, [], ?MODULE).

is_top_level_transaction(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, is_top_level_transaction, [], ?MODULE, OE_Options).

%%%% Operation: hash_transaction
%% 
%%   Returns: RetVal
%%
hash_transaction(OE_THIS) ->
    corba:call(OE_THIS, hash_transaction, [], ?MODULE).

hash_transaction(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, hash_transaction, [], ?MODULE, OE_Options).

%%%% Operation: hash_top_level_tran
%% 
%%   Returns: RetVal
%%
hash_top_level_tran(OE_THIS) ->
    corba:call(OE_THIS, hash_top_level_tran, [], ?MODULE).

hash_top_level_tran(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, hash_top_level_tran, [], ?MODULE, OE_Options).

%%%% Operation: register_resource
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Inactive
%%
register_resource(OE_THIS, R) ->
    corba:call(OE_THIS, register_resource, [R], ?MODULE).

register_resource(OE_THIS, OE_Options, R) ->
    corba:call(OE_THIS, register_resource, [R], ?MODULE, OE_Options).

%%%% Operation: register_subtran_aware
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Inactive, CosTransactions::NotSubtransaction
%%
register_subtran_aware(OE_THIS, R) ->
    corba:call(OE_THIS, register_subtran_aware, [R], ?MODULE).

register_subtran_aware(OE_THIS, OE_Options, R) ->
    corba:call(OE_THIS, register_subtran_aware, [R], ?MODULE, OE_Options).

%%%% Operation: rollback_only
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Inactive
%%
rollback_only(OE_THIS) ->
    corba:call(OE_THIS, rollback_only, [], ?MODULE).

rollback_only(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, rollback_only, [], ?MODULE, OE_Options).

%%%% Operation: get_transaction_name
%% 
%%   Returns: RetVal
%%
get_transaction_name(OE_THIS) ->
    corba:call(OE_THIS, get_transaction_name, [], ?MODULE).

get_transaction_name(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_transaction_name, [], ?MODULE, OE_Options).

%%%% Operation: create_subtransaction
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::SubtransactionsUnavailable, CosTransactions::Inactive
%%
create_subtransaction(OE_THIS) ->
    corba:call(OE_THIS, create_subtransaction, [], ?MODULE).

create_subtransaction(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, create_subtransaction, [], ?MODULE, OE_Options).

%%%% Operation: get_txcontext
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
get_txcontext(OE_THIS) ->
    corba:call(OE_THIS, get_txcontext, [], ?MODULE).

get_txcontext(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_txcontext, [], ?MODULE, OE_Options).

%%%% Operation: prepare
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
prepare(OE_THIS) ->
    corba:call(OE_THIS, prepare, [], ?MODULE).

prepare(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, prepare, [], ?MODULE, OE_Options).

%%%% Operation: rollback
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicCommit, CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
rollback(OE_THIS) ->
    corba:call(OE_THIS, rollback, [], ?MODULE).

rollback(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, rollback, [], ?MODULE, OE_Options).

%%%% Operation: commit
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::NotPrepared, CosTransactions::HeuristicRollback, CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
commit(OE_THIS) ->
    corba:call(OE_THIS, commit, [], ?MODULE).

commit(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, commit, [], ?MODULE, OE_Options).

%%%% Operation: commit_one_phase
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicHazard, CosTransactions::HeuristicRollback, CosTransactions::HeuristicMixed
%%
commit_one_phase(OE_THIS) ->
    corba:call(OE_THIS, commit_one_phase, [], ?MODULE).

commit_one_phase(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, commit_one_phase, [], ?MODULE, OE_Options).

%%%% Operation: forget
%% 
%%   Returns: RetVal
%%
forget(OE_THIS) ->
    corba:call(OE_THIS, forget, [], ?MODULE).

forget(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, forget, [], ?MODULE, OE_Options).

%%%% Operation: replay_completion
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::NotPrepared
%%
replay_completion(OE_THIS, R) ->
    corba:call(OE_THIS, replay_completion, [R], ?MODULE).

replay_completion(OE_THIS, OE_Options, R) ->
    corba:call(OE_THIS, replay_completion, [R], ?MODULE, OE_Options).

%%%% Operation: get_terminator
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
get_terminator(OE_THIS) ->
    corba:call(OE_THIS, get_terminator, [], ?MODULE).

get_terminator(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_terminator, [], ?MODULE, OE_Options).

%%%% Operation: get_coordinator
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
get_coordinator(OE_THIS) ->
    corba:call(OE_THIS, get_coordinator, [], ?MODULE).

get_coordinator(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_coordinator, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/ETraP/Server:1.0") -> true;
oe_is_a("IDL:omg.org/CosTransactions/Coordinator:1.0") -> true;
oe_is_a("IDL:omg.org/CosTransactions/Resource:1.0") -> true;
oe_is_a("IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0") -> true;
oe_is_a("IDL:omg.org/CosTransactions/Control:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(get_status) -> 'CosTransactions_Coordinator':oe_tc(get_status);
oe_tc(get_parent_status) -> 'CosTransactions_Coordinator':oe_tc(get_parent_status);
oe_tc(get_top_level_status) -> 'CosTransactions_Coordinator':oe_tc(get_top_level_status);
oe_tc(is_same_transaction) -> 'CosTransactions_Coordinator':oe_tc(is_same_transaction);
oe_tc(is_related_transaction) -> 'CosTransactions_Coordinator':oe_tc(is_related_transaction);
oe_tc(is_ancestor_transaction) -> 'CosTransactions_Coordinator':oe_tc(is_ancestor_transaction);
oe_tc(is_descendant_transaction) -> 'CosTransactions_Coordinator':oe_tc(is_descendant_transaction);
oe_tc(is_top_level_transaction) -> 'CosTransactions_Coordinator':oe_tc(is_top_level_transaction);
oe_tc(hash_transaction) -> 'CosTransactions_Coordinator':oe_tc(hash_transaction);
oe_tc(hash_top_level_tran) -> 'CosTransactions_Coordinator':oe_tc(hash_top_level_tran);
oe_tc(register_resource) -> 'CosTransactions_Coordinator':oe_tc(register_resource);
oe_tc(register_subtran_aware) -> 'CosTransactions_Coordinator':oe_tc(register_subtran_aware);
oe_tc(rollback_only) -> 'CosTransactions_Coordinator':oe_tc(rollback_only);
oe_tc(get_transaction_name) -> 'CosTransactions_Coordinator':oe_tc(get_transaction_name);
oe_tc(create_subtransaction) -> 'CosTransactions_Coordinator':oe_tc(create_subtransaction);
oe_tc(get_txcontext) -> 'CosTransactions_Coordinator':oe_tc(get_txcontext);
oe_tc(prepare) -> 'CosTransactions_Resource':oe_tc(prepare);
oe_tc(rollback) -> 'CosTransactions_Resource':oe_tc(rollback);
oe_tc(commit) -> 'CosTransactions_Resource':oe_tc(commit);
oe_tc(commit_one_phase) -> 'CosTransactions_Resource':oe_tc(commit_one_phase);
oe_tc(forget) -> 'CosTransactions_Resource':oe_tc(forget);
oe_tc(replay_completion) -> 'CosTransactions_RecoveryCoordinator':oe_tc(replay_completion);
oe_tc(get_terminator) -> 'CosTransactions_Control':oe_tc(get_terminator);
oe_tc(get_coordinator) -> 'CosTransactions_Control':oe_tc(get_coordinator);
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"get_coordinator", 'CosTransactions_Control':oe_tc(get_coordinator)},
	{"get_terminator", 'CosTransactions_Control':oe_tc(get_terminator)},
	{"replay_completion", 'CosTransactions_RecoveryCoordinator':oe_tc(replay_completion)},
	{"forget", 'CosTransactions_Resource':oe_tc(forget)},
	{"commit_one_phase", 'CosTransactions_Resource':oe_tc(commit_one_phase)},
	{"commit", 'CosTransactions_Resource':oe_tc(commit)},
	{"rollback", 'CosTransactions_Resource':oe_tc(rollback)},
	{"prepare", 'CosTransactions_Resource':oe_tc(prepare)},
	{"get_txcontext", 'CosTransactions_Coordinator':oe_tc(get_txcontext)},
	{"create_subtransaction", 'CosTransactions_Coordinator':oe_tc(create_subtransaction)},
	{"get_transaction_name", 'CosTransactions_Coordinator':oe_tc(get_transaction_name)},
	{"rollback_only", 'CosTransactions_Coordinator':oe_tc(rollback_only)},
	{"register_subtran_aware", 'CosTransactions_Coordinator':oe_tc(register_subtran_aware)},
	{"register_resource", 'CosTransactions_Coordinator':oe_tc(register_resource)},
	{"hash_top_level_tran", 'CosTransactions_Coordinator':oe_tc(hash_top_level_tran)},
	{"hash_transaction", 'CosTransactions_Coordinator':oe_tc(hash_transaction)},
	{"is_top_level_transaction", 'CosTransactions_Coordinator':oe_tc(is_top_level_transaction)},
	{"is_descendant_transaction", 'CosTransactions_Coordinator':oe_tc(is_descendant_transaction)},
	{"is_ancestor_transaction", 'CosTransactions_Coordinator':oe_tc(is_ancestor_transaction)},
	{"is_related_transaction", 'CosTransactions_Coordinator':oe_tc(is_related_transaction)},
	{"is_same_transaction", 'CosTransactions_Coordinator':oe_tc(is_same_transaction)},
	{"get_top_level_status", 'CosTransactions_Coordinator':oe_tc(get_top_level_status)},
	{"get_parent_status", 'CosTransactions_Coordinator':oe_tc(get_parent_status)},
	{"get_status", 'CosTransactions_Coordinator':oe_tc(get_status)}].




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
    "IDL:omg.org/ETraP/Server:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/ETraP/Server:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/ETraP/Server:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/ETraP/Server:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/ETraP/Server:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/ETraP/Server:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/ETraP/Server:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('ETraP_Server_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('ETraP_Server_impl', Reason, State).


%%%% Operation: get_status
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_status, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_status, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_parent_status
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_parent_status, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_parent_status, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_top_level_status
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_top_level_status, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_top_level_status, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: is_same_transaction
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, is_same_transaction, [Tc]}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', is_same_transaction, [Tc], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: is_related_transaction
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, is_related_transaction, [Tc]}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', is_related_transaction, [Tc], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: is_ancestor_transaction
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, is_ancestor_transaction, [Tc]}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', is_ancestor_transaction, [Tc], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: is_descendant_transaction
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, is_descendant_transaction, [Tc]}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', is_descendant_transaction, [Tc], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: is_top_level_transaction
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, is_top_level_transaction, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', is_top_level_transaction, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: hash_transaction
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, hash_transaction, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', hash_transaction, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: hash_top_level_tran
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, hash_top_level_tran, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', hash_top_level_tran, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: register_resource
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Inactive
%%
handle_call({OE_THIS, OE_Context, register_resource, [R]}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', register_resource, [R], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: register_subtran_aware
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Inactive, CosTransactions::NotSubtransaction
%%
handle_call({OE_THIS, OE_Context, register_subtran_aware, [R]}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', register_subtran_aware, [R], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: rollback_only
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Inactive
%%
handle_call({OE_THIS, OE_Context, rollback_only, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', rollback_only, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_transaction_name
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_transaction_name, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_transaction_name, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: create_subtransaction
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::SubtransactionsUnavailable, CosTransactions::Inactive
%%
handle_call({OE_THIS, OE_Context, create_subtransaction, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', create_subtransaction, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_txcontext
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
handle_call({OE_THIS, OE_Context, get_txcontext, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_txcontext, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: prepare
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
handle_call({OE_THIS, OE_Context, prepare, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', prepare, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: rollback
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicCommit, CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
handle_call({OE_THIS, OE_Context, rollback, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', rollback, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: commit
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::NotPrepared, CosTransactions::HeuristicRollback, CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
handle_call({OE_THIS, OE_Context, commit, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', commit, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: commit_one_phase
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicHazard, CosTransactions::HeuristicRollback, CosTransactions::HeuristicMixed
%%
handle_call({OE_THIS, OE_Context, commit_one_phase, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', commit_one_phase, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: forget
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, forget, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', forget, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: replay_completion
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::NotPrepared
%%
handle_call({OE_THIS, OE_Context, replay_completion, [R]}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', replay_completion, [R], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_terminator
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
handle_call({OE_THIS, OE_Context, get_terminator, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_terminator, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_coordinator
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::Unavailable
%%
handle_call({OE_THIS, OE_Context, get_coordinator, []}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', get_coordinator, [], OE_State, OE_Context, OE_THIS, false);



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
    corba:handle_info('ETraP_Server_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('ETraP_Server_impl', OldVsn, State, Extra).

