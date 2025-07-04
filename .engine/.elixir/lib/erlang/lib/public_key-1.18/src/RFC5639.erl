%% Generated by the Erlang ASN.1 BER compiler. Version: 5.4
%% Purpose: Encoding and decoding of the types in RFC5639.

-module('RFC5639').
-moduledoc false.
-compile(nowarn_unused_vars).
-dialyzer(no_improper_lists).
-dialyzer(no_match).
-include("RFC5639.hrl").
-asn1_info([{vsn,'5.4'},
            {module,'RFC5639'},
            {options,[{i,"/home/conda/feedstock_root/build_artifacts/erlang_1747854900811/work/lib/public_key/asn1/../src"},
 warnings,ber,errors,
 {cwd,"/home/conda/feedstock_root/build_artifacts/erlang_1747854900811/work/lib/public_key/asn1"},
 {outdir,"/home/conda/feedstock_root/build_artifacts/erlang_1747854900811/work/lib/public_key/asn1/../src"},
 der,noobj,asn1config,
 {i,"."},
 {i,"/home/conda/feedstock_root/build_artifacts/erlang_1747854900811/work/lib/public_key/asn1"}]}]).

-export([encoding_rule/0,maps/0,bit_string_format/0,
         legacy_erlang_types/0]).
-export(['dialyzer-suppressions'/1]).
-export([
ecStdCurvesAndGeneration/0,
ellipticCurveRFC5639/0,
versionOne/0,
brainpoolP160r1/0,
brainpoolP160t1/0,
brainpoolP192r1/0,
brainpoolP192t1/0,
brainpoolP224r1/0,
brainpoolP224t1/0,
brainpoolP256r1/0,
brainpoolP256t1/0,
brainpoolP320r1/0,
brainpoolP320t1/0,
brainpoolP384r1/0,
brainpoolP384t1/0,
brainpoolP512r1/0,
brainpoolP512t1/0
]).

-export([info/0]).

encoding_rule() -> ber.

maps() -> false.

bit_string_format() -> bitstring.

legacy_erlang_types() -> false.

info() ->
   case ?MODULE:module_info(attributes) of
     Attributes when is_list(Attributes) ->
       case lists:keyfind(asn1_info, 1, Attributes) of
         {_,Info} when is_list(Info) ->
           Info;
         _ ->
           []
       end;
     _ ->
       []
   end.
ecStdCurvesAndGeneration() ->
{1,3,36,3,3,2,8}.

ellipticCurveRFC5639() ->
{1,3,36,3,3,2,8,1}.

versionOne() ->
{1,3,36,3,3,2,8,1,1}.

brainpoolP160r1() ->
{1,3,36,3,3,2,8,1,1,1}.

brainpoolP160t1() ->
{1,3,36,3,3,2,8,1,1,2}.

brainpoolP192r1() ->
{1,3,36,3,3,2,8,1,1,3}.

brainpoolP192t1() ->
{1,3,36,3,3,2,8,1,1,4}.

brainpoolP224r1() ->
{1,3,36,3,3,2,8,1,1,5}.

brainpoolP224t1() ->
{1,3,36,3,3,2,8,1,1,6}.

brainpoolP256r1() ->
{1,3,36,3,3,2,8,1,1,7}.

brainpoolP256t1() ->
{1,3,36,3,3,2,8,1,1,8}.

brainpoolP320r1() ->
{1,3,36,3,3,2,8,1,1,9}.

brainpoolP320t1() ->
{1,3,36,3,3,2,8,1,1,10}.

brainpoolP384r1() ->
{1,3,36,3,3,2,8,1,1,11}.

brainpoolP384t1() ->
{1,3,36,3,3,2,8,1,1,12}.

brainpoolP512r1() ->
{1,3,36,3,3,2,8,1,1,13}.

brainpoolP512t1() ->
{1,3,36,3,3,2,8,1,1,14}.


%%%
%%% Run-time functions.
%%%

'dialyzer-suppressions'(Arg) ->
    ok.
