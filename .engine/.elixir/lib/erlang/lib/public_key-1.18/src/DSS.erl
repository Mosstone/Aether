%% Generated by the Erlang ASN.1 BER compiler. Version: 5.4
%% Purpose: Encoding and decoding of the types in DSS.

-module('DSS').
-moduledoc false.
-compile(nowarn_unused_vars).
-dialyzer(no_improper_lists).
-dialyzer(no_match).
-include("DSS.hrl").
-asn1_info([{vsn,'5.4'},
            {module,'DSS'},
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
enc_DSAPrivateKey/2
]).

-export([
dec_DSAPrivateKey/2
]).

-export([info/0]).

-export([encode/2,decode/2]).

encoding_rule() -> ber.

maps() -> false.

bit_string_format() -> bitstring.

legacy_erlang_types() -> false.

encode(Type, Data) ->
try iolist_to_binary(element(1, encode_disp(Type, Data))) of
  Bytes ->
    {ok,Bytes}
  catch
    Class:Exception:Stk when Class =:= error; Class =:= exit ->
      case Exception of
        {error,{asn1,Reason}} ->
          {error,{asn1,{Reason,Stk}}};
        Reason ->
         {error,{asn1,{Reason,Stk}}}
      end
end.


decode(Type, Data) ->
try
   Result = decode_disp(Type, element(1, ber_decode_nif(Data))),
   {ok,Result}
  catch
    Class:Exception:Stk when Class =:= error; Class =:= exit ->
      case Exception of
        {error,{asn1,Reason}} ->
          {error,{asn1,{Reason,Stk}}};
        Reason ->
         {error,{asn1,{Reason,Stk}}}
      end
end.

encode_disp('DSAPrivateKey', Data) -> enc_DSAPrivateKey(Data);
encode_disp(Type, _Data) -> exit({error,{asn1,{undefined_type,Type}}}).

decode_disp('DSAPrivateKey', Data) -> dec_DSAPrivateKey(Data);
decode_disp(Type, _Data) -> exit({error,{asn1,{undefined_type,Type}}}).

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


%%================================
%%  DSAPrivateKey
%%================================
enc_DSAPrivateKey(Val) ->
    enc_DSAPrivateKey(Val, [<<48>>]).

enc_DSAPrivateKey(Val, TagIn) ->
{_,Cindex1,Cindex2,Cindex3,Cindex4,Cindex5,Cindex6} = Val,

%%-------------------------------------------------
%% attribute version(1) with type INTEGER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_integer(Cindex1, [<<2>>]),

%%-------------------------------------------------
%% attribute p(2) with type INTEGER
%%-------------------------------------------------
   {EncBytes2,EncLen2} = encode_integer(Cindex2, [<<2>>]),

%%-------------------------------------------------
%% attribute q(3) with type INTEGER
%%-------------------------------------------------
   {EncBytes3,EncLen3} = encode_integer(Cindex3, [<<2>>]),

%%-------------------------------------------------
%% attribute g(4) with type INTEGER
%%-------------------------------------------------
   {EncBytes4,EncLen4} = encode_integer(Cindex4, [<<2>>]),

%%-------------------------------------------------
%% attribute y(5) with type INTEGER
%%-------------------------------------------------
   {EncBytes5,EncLen5} = encode_integer(Cindex5, [<<2>>]),

%%-------------------------------------------------
%% attribute x(6) with type INTEGER
%%-------------------------------------------------
   {EncBytes6,EncLen6} = encode_integer(Cindex6, [<<2>>]),

   BytesSoFar = [EncBytes1, EncBytes2, EncBytes3, EncBytes4, EncBytes5, EncBytes6],
LenSoFar = EncLen1 + EncLen2 + EncLen3 + EncLen4 + EncLen5 + EncLen6,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_DSAPrivateKey(Tlv) ->
   dec_DSAPrivateKey(Tlv, [16]).

dec_DSAPrivateKey(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute version(1) with type INTEGER
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_integer(V1, [2]),

%%-------------------------------------------------
%% attribute p(2) with type INTEGER
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = decode_integer(V2, [2]),

%%-------------------------------------------------
%% attribute q(3) with type INTEGER
%%-------------------------------------------------
[V3|Tlv4] = Tlv3, 
Term3 = decode_integer(V3, [2]),

%%-------------------------------------------------
%% attribute g(4) with type INTEGER
%%-------------------------------------------------
[V4|Tlv5] = Tlv4, 
Term4 = decode_integer(V4, [2]),

%%-------------------------------------------------
%% attribute y(5) with type INTEGER
%%-------------------------------------------------
[V5|Tlv6] = Tlv5, 
Term5 = decode_integer(V5, [2]),

%%-------------------------------------------------
%% attribute x(6) with type INTEGER
%%-------------------------------------------------
[V6|Tlv7] = Tlv6, 
Term6 = decode_integer(V6, [2]),

case Tlv7 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv7}}}) % extra fields not allowed
end,
Res1 = {'DSAPrivateKey',Term1,Term2,Term3,Term4,Term5,Term6},
Res1.

%%%
%%% Run-time functions.
%%%

'dialyzer-suppressions'(Arg) ->
    ok.

ber_decode_nif(B) ->
    asn1rt_nif:decode_ber_tlv(B).

decode_integer(Tlv, TagIn) ->
    Bin = match_tags(Tlv, TagIn),
    Len = byte_size(Bin),
    <<Int:Len/signed-unit:8>> = Bin,
    Int.

encode_integer(Val) ->
    Bytes =
        if
            Val >= 0 ->
                encode_integer_pos(Val, []);
            true ->
                encode_integer_neg(Val, [])
        end,
    {Bytes, length(Bytes)}.

encode_integer(Val, Tag) when is_integer(Val) ->
    encode_tags(Tag, encode_integer(Val));
encode_integer(Val, _Tag) ->
    exit({error, {asn1, {encode_integer, Val}}}).

encode_integer_neg(-1, [B1 | _T] = L) when B1 > 127 ->
    L;
encode_integer_neg(N, Acc) ->
    encode_integer_neg(N bsr 8, [N band 255 | Acc]).

encode_integer_pos(0, [B | _Acc] = L) when B < 128 ->
    L;
encode_integer_pos(N, Acc) ->
    encode_integer_pos(N bsr 8, [N band 255 | Acc]).

encode_length(L) when L =< 127 ->
    {[L], 1};
encode_length(L) ->
    Oct = minimum_octets(L),
    Len = length(Oct),
    if
        Len =< 126 ->
            {[128 bor Len | Oct], Len + 1};
        true ->
            exit({error, {asn1, too_long_length_oct, Len}})
    end.

encode_tags(TagIn, {BytesSoFar, LenSoFar}) ->
    encode_tags(TagIn, BytesSoFar, LenSoFar).

encode_tags([Tag | Trest], BytesSoFar, LenSoFar) ->
    {Bytes2, L2} = encode_length(LenSoFar),
    encode_tags(Trest,
                [Tag, Bytes2 | BytesSoFar],
                LenSoFar + byte_size(Tag) + L2);
encode_tags([], BytesSoFar, LenSoFar) ->
    {BytesSoFar, LenSoFar}.

match_tags({T, V}, [T]) ->
    V;
match_tags({T, V}, [T | Tt]) ->
    match_tags(V, Tt);
match_tags([{T, V}], [T | Tt]) ->
    match_tags(V, Tt);
match_tags([{T, _V} | _] = Vlist, [T]) ->
    Vlist;
match_tags(Tlv, []) ->
    Tlv;
match_tags({Tag, _V} = Tlv, [T | _Tt]) ->
    exit({error, {asn1, {wrong_tag, {{expected, T}, {got, Tag, Tlv}}}}}).

minimum_octets(0, Acc) ->
    Acc;
minimum_octets(Val, Acc) ->
    minimum_octets(Val bsr 8, [Val band 255 | Acc]).

minimum_octets(Val) ->
    minimum_octets(Val, []).
