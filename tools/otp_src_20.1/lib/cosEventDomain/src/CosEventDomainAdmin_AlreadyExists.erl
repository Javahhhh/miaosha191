%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosEventDomainAdmin_AlreadyExists
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_opu_o.2017-09-25_21/otp_src_20/lib/cosEventDomain/src/CosEventDomainAdmin.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosEventDomainAdmin_AlreadyExists').
-ic_compiled("4_4_2").


-include("CosEventDomainAdmin.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_except,"IDL:omg.org/CosEventDomainAdmin/AlreadyExists:1.0",
                   "AlreadyExists",[]}.

%% returns id
id() -> "IDL:omg.org/CosEventDomainAdmin/AlreadyExists:1.0".

%% returns name
name() -> "CosEventDomainAdmin_AlreadyExists".



