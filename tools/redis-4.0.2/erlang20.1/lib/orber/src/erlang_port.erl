%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: erlang_port
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/ic/include/erlang.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(erlang_port).
-ic_compiled("4_4_2").


-include("erlang.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:erlang/port:1.0","port",
                   [{"node",{tk_string,256}},
                    {"id",tk_ulong},
                    {"creation",tk_ulong}]}.

%% returns id
id() -> "IDL:erlang/port:1.0".

%% returns name
name() -> "erlang_port".



