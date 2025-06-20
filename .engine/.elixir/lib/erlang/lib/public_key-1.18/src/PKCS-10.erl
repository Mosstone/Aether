%% Generated by the Erlang ASN.1 BER compiler. Version: 5.4
%% Purpose: Encoding and decoding of the types in PKCS-10.

-module('PKCS-10').
-moduledoc false.
-compile(nowarn_unused_vars).
-dialyzer(no_improper_lists).
-dialyzer(no_match).
-include("PKCS-10.hrl").
-asn1_info([{vsn,'5.4'},
            {module,'PKCS-10'},
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
enc_CertificationRequestInfo/2,
enc_CertificationRequest/2
]).

-export([
dec_CertificationRequestInfo/2,
dec_CertificationRequest/2
]).

-export([
getenc_PKInfoAlgorithms/1,
getenc_CRIAttributes/1,
getenc_SignatureAlgorithms/1,
getenc_internal_object_set_argument_8/1,
getenc_internal_object_set_argument_6/1,
getenc_internal_object_set_argument_5/1,
getenc_internal_object_set_argument_4/1,
getenc_internal_object_set_argument_2/1
]).

-export([
getdec_PKInfoAlgorithms/1,
getdec_CRIAttributes/1,
getdec_SignatureAlgorithms/1,
getdec_internal_object_set_argument_8/1,
getdec_internal_object_set_argument_6/1,
getdec_internal_object_set_argument_5/1,
getdec_internal_object_set_argument_4/1,
getdec_internal_object_set_argument_2/1
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

encode_disp('CertificationRequestInfo', Data) -> enc_CertificationRequestInfo(Data);
encode_disp('CertificationRequest', Data) -> enc_CertificationRequest(Data);
encode_disp(Type, _Data) -> exit({error,{asn1,{undefined_type,Type}}}).

decode_disp('CertificationRequestInfo', Data) -> dec_CertificationRequestInfo(Data);
decode_disp('CertificationRequest', Data) -> dec_CertificationRequest(Data);
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
%%  CertificationRequestInfo
%%================================
enc_CertificationRequestInfo(Val) ->
    enc_CertificationRequestInfo(Val, [<<48>>]).

enc_CertificationRequestInfo(Val, TagIn) ->
{_,Cindex1,Cindex2,Cindex3,Cindex4} = Val,

%%-------------------------------------------------
%% attribute version(1) with type INTEGER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_integer(Cindex1, [{v1,0}], [<<2>>]),

%%-------------------------------------------------
%% attribute subject(2)   External PKIX1Explicit-2009:Name
%%-------------------------------------------------
   {EncBytes2,EncLen2} = 'PKIX1Explicit-2009':'enc_Name'(Cindex2, []),

%%-------------------------------------------------
%% attribute subjectPKInfo(3) with type SEQUENCE
%%-------------------------------------------------
   {EncBytes3,EncLen3} = 'enc_CertificationRequestInfo_subjectPKInfo'(Cindex3, [<<48>>]),

%%-------------------------------------------------
%% attribute attributes(4) with type SET OF
%%-------------------------------------------------
   {EncBytes4,EncLen4} = 'enc_CertificationRequestInfo_attributes'(Cindex4, [<<160>>]),

   BytesSoFar = [EncBytes1, EncBytes2, EncBytes3, EncBytes4],
LenSoFar = EncLen1 + EncLen2 + EncLen3 + EncLen4,
encode_tags(TagIn, BytesSoFar, LenSoFar).



%%================================
%%  CertificationRequestInfo_subjectPKInfo
%%================================
enc_CertificationRequestInfo_subjectPKInfo(Val, TagIn) ->
   {_,Cindex1,Cindex2} = Val,

%%-------------------------------------------------
%% attribute algorithm(1) with type SEQUENCE
%%-------------------------------------------------
   {EncBytes1,EncLen1} = 'enc_CertificationRequestInfo_subjectPKInfo_algorithm'(Cindex1, [<<48>>]),

%%-------------------------------------------------
%% attribute subjectPublicKey(2) with type BIT STRING
%%-------------------------------------------------
   {EncBytes2,EncLen2} = encode_unnamed_bit_string(Cindex2, [<<3>>]),

   BytesSoFar = [EncBytes1, EncBytes2],
LenSoFar = EncLen1 + EncLen2,
encode_tags(TagIn, BytesSoFar, LenSoFar).



%%================================
%%  CertificationRequestInfo_subjectPKInfo_algorithm
%%================================
enc_CertificationRequestInfo_subjectPKInfo_algorithm(Val, TagIn) ->
   {_,Cindex1,Cindex2} = Val,
Objalgorithm = 
   'PKCS-10':'getenc_internal_object_set_argument_4'(                                   Cindex1),

%%-------------------------------------------------
%% attribute algorithm(1) with type OBJECT IDENTIFIER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_object_identifier(Cindex1, [<<6>>]),

%%-------------------------------------------------
%% attribute parameters(2) with type typefieldParams OPTIONAL
%%-------------------------------------------------
   {EncBytes2,EncLen2} =  case Cindex2 of
         asn1_NOVALUE -> {<<>>,0};
         _ ->
            {TmpBytes2,_ } = Objalgorithm('Params', Cindex2, []),
   encode_open_type(TmpBytes2, [])
       end,

   BytesSoFar = [EncBytes1, EncBytes2],
LenSoFar = EncLen1 + EncLen2,
encode_tags(TagIn, BytesSoFar, LenSoFar).



%%================================
%%  CertificationRequestInfo_attributes
%%================================
enc_CertificationRequestInfo_attributes(Val, TagIn) ->
      {EncBytes,EncLen} = 'enc_CertificationRequestInfo_attributes_components'(Val,[],0),
   encode_tags(TagIn, EncBytes, EncLen).

'enc_CertificationRequestInfo_attributes_components'([], AccBytes, AccLen) -> 
   {dynamicsort_SETOF(AccBytes),AccLen};

'enc_CertificationRequestInfo_attributes_components'([H|T],AccBytes, AccLen) ->
   {EncBytes,EncLen} = 'enc_CertificationRequestInfo_attributes_Attribute'(H, [<<48>>]),
   'enc_CertificationRequestInfo_attributes_components'(T,[EncBytes|AccBytes], AccLen + EncLen).




%%================================
%%  CertificationRequestInfo_attributes_Attribute
%%================================
enc_CertificationRequestInfo_attributes_Attribute(Val, TagIn) ->
   {_,Cindex1,Cindex2} = Val,
Objtype = 
   'PKCS-10':'getenc_internal_object_set_argument_6'(                                   Cindex1),

%%-------------------------------------------------
%% attribute type(1) with type OBJECT IDENTIFIER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_object_identifier(Cindex1, [<<6>>]),

%%-------------------------------------------------
%% attribute values(2) with type SET OF
%%-------------------------------------------------
   {EncBytes2,EncLen2} = 'enc_CertificationRequestInfo_attributes_Attribute_values'(Cindex2, [<<49>>], Objtype),

   BytesSoFar = [EncBytes1, EncBytes2],
LenSoFar = EncLen1 + EncLen2,
encode_tags(TagIn, BytesSoFar, LenSoFar).



%%================================
%%  CertificationRequestInfo_attributes_Attribute_values
%%================================
enc_CertificationRequestInfo_attributes_Attribute_values(Val, TagIn, ObjFun) ->
      {EncBytes,EncLen} = 'enc_CertificationRequestInfo_attributes_Attribute_values_components'(Val, ObjFun,[],0),
   encode_tags(TagIn, EncBytes, EncLen).

'enc_CertificationRequestInfo_attributes_Attribute_values_components'([], _, AccBytes, AccLen) -> 
   {dynamicsort_SETOF(AccBytes),AccLen};

'enc_CertificationRequestInfo_attributes_Attribute_values_components'([H|T], ObjFun,AccBytes, AccLen) ->
   {TmpBytes,_} = ObjFun('Type', H, []),
   {EncBytes,EncLen} = encode_open_type(TmpBytes, [])
,
   'enc_CertificationRequestInfo_attributes_Attribute_values_components'(T, ObjFun,[EncBytes|AccBytes], AccLen + EncLen).



dec_CertificationRequestInfo(Tlv) ->
   dec_CertificationRequestInfo(Tlv, [16]).

dec_CertificationRequestInfo(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute version(1) with type INTEGER
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = begin
Val1 = decode_integer(V1, [2]),
number2name(Val1, [{v1,0}])
end
,

%%-------------------------------------------------
%% attribute subject(2)   External PKIX1Explicit-2009:Name
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = 'PKIX1Explicit-2009':'dec_Name'(V2, []),

%%-------------------------------------------------
%% attribute subjectPKInfo(3) with type SEQUENCE
%%-------------------------------------------------
[V3|Tlv4] = Tlv3, 
Term3 = 'dec_CertificationRequestInfo_subjectPKInfo'(V3, [16]),

%%-------------------------------------------------
%% attribute attributes(4) with type SET OF
%%-------------------------------------------------
[V4|Tlv5] = Tlv4, 
Term4 = 'dec_CertificationRequestInfo_attributes'(V4, [131072]),

case Tlv5 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv5}}}) % extra fields not allowed
end,
Res1 = {'CertificationRequestInfo',Term1,Term2,Term3,Term4},
Res1.
'dec_CertificationRequestInfo_subjectPKInfo'(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute algorithm(1) with type SEQUENCE
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = 'dec_CertificationRequestInfo_subjectPKInfo_algorithm'(V1, [16]),

%%-------------------------------------------------
%% attribute subjectPublicKey(2) with type BIT STRING
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = decode_native_bit_string(V2, [3]),

case Tlv3 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv3}}}) % extra fields not allowed
end,
Res1 = {'CertificationRequestInfo_subjectPKInfo',Term1,Term2},
Res1.
'dec_CertificationRequestInfo_subjectPKInfo_algorithm'(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute algorithm(1) with type OBJECT IDENTIFIER
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_object_identifier(V1, [6]),

%%-------------------------------------------------
%% attribute parameters(2) with type typefieldParams OPTIONAL
%%-------------------------------------------------
{Tmpterm1,Tlv3} = case Tlv2 of
[V2|TempTlv3] ->
    {decode_open_type(V2, []), TempTlv3};
    _ ->
        { asn1_NOVALUE, Tlv2}
end,

DecObjalgorithmTerm1 =
   'PKCS-10':'getdec_internal_object_set_argument_4'(Term1),
Term2 = 
   case Tmpterm1 of
      asn1_NOVALUE ->asn1_NOVALUE;
      _ ->
         case (catch DecObjalgorithmTerm1('Params', Tmpterm1, [])) of
            {'EXIT', Reason1} ->
               exit({'Type not compatible with table constraint',Reason1});
            Tmpterm2 ->
               Tmpterm2
         end
   end,

case Tlv3 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv3}}}) % extra fields not allowed
end,
Res1 = {'CertificationRequestInfo_subjectPKInfo_algorithm',Term1,Term2},
Res1.
'dec_CertificationRequestInfo_attributes'(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),
['dec_CertificationRequestInfo_attributes_Attribute'(V1, [16]) || V1 <- Tlv1].


'dec_CertificationRequestInfo_attributes_Attribute'(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute type(1) with type OBJECT IDENTIFIER
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_object_identifier(V1, [6]),
ObjFun = 'PKCS-10':'getdec_internal_object_set_argument_6'(Term1),

%%-------------------------------------------------
%% attribute values(2) with type SET OF
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = 'dec_CertificationRequestInfo_attributes_Attribute_values'(V2, [17], ObjFun),

case Tlv3 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv3}}}) % extra fields not allowed
end,
Res1 = {'Attribute',Term1,Term2},
Res1.
'dec_CertificationRequestInfo_attributes_Attribute_values'(Tlv, TagIn, ObjFun) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),
[
      begin
         Tmptlv1 = decode_open_type(V1, []),
         case (catch ObjFun('Type', Tmptlv1, [])) of
            {'EXIT',Reason1} ->
               exit({'Type not compatible with table constraint', Reason1});
            Tmpterm1 ->
               Tmpterm1
         end
      end
 || V1 <- Tlv1].




%%================================
%%  CertificationRequest
%%================================
enc_CertificationRequest(Val) ->
    enc_CertificationRequest(Val, [<<48>>]).

enc_CertificationRequest(Val, TagIn) ->
{_,Cindex1,Cindex2,Cindex3} = Val,

%%-------------------------------------------------
%% attribute certificationRequestInfo(1)   External PKCS-10:CertificationRequestInfo
%%-------------------------------------------------
   {EncBytes1,EncLen1} = 'enc_CertificationRequestInfo'(Cindex1, [<<48>>]),

%%-------------------------------------------------
%% attribute signatureAlgorithm(2) with type SEQUENCE
%%-------------------------------------------------
   {EncBytes2,EncLen2} = 'enc_CertificationRequest_signatureAlgorithm'(Cindex2, [<<48>>]),

%%-------------------------------------------------
%% attribute signature(3) with type BIT STRING
%%-------------------------------------------------
   {EncBytes3,EncLen3} = encode_unnamed_bit_string(Cindex3, [<<3>>]),

   BytesSoFar = [EncBytes1, EncBytes2, EncBytes3],
LenSoFar = EncLen1 + EncLen2 + EncLen3,
encode_tags(TagIn, BytesSoFar, LenSoFar).



%%================================
%%  CertificationRequest_signatureAlgorithm
%%================================
enc_CertificationRequest_signatureAlgorithm(Val, TagIn) ->
   {_,Cindex1,Cindex2} = Val,
Objalgorithm = 
   'PKCS-10':'getenc_internal_object_set_argument_8'(                                   Cindex1),

%%-------------------------------------------------
%% attribute algorithm(1) with type OBJECT IDENTIFIER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_object_identifier(Cindex1, [<<6>>]),

%%-------------------------------------------------
%% attribute parameters(2) with type typefieldParams OPTIONAL
%%-------------------------------------------------
   {EncBytes2,EncLen2} =  case Cindex2 of
         asn1_NOVALUE -> {<<>>,0};
         _ ->
            {TmpBytes2,_ } = Objalgorithm('Params', Cindex2, []),
   encode_open_type(TmpBytes2, [])
       end,

   BytesSoFar = [EncBytes1, EncBytes2],
LenSoFar = EncLen1 + EncLen2,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_CertificationRequest(Tlv) ->
   dec_CertificationRequest(Tlv, [16]).

dec_CertificationRequest(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute certificationRequestInfo(1)   External PKCS-10:CertificationRequestInfo
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = 'dec_CertificationRequestInfo'(V1, [16]),

%%-------------------------------------------------
%% attribute signatureAlgorithm(2) with type SEQUENCE
%%-------------------------------------------------
[V2|Tlv3] = Tlv2, 
Term2 = 'dec_CertificationRequest_signatureAlgorithm'(V2, [16]),

%%-------------------------------------------------
%% attribute signature(3) with type BIT STRING
%%-------------------------------------------------
[V3|Tlv4] = Tlv3, 
Term3 = decode_native_bit_string(V3, [3]),

case Tlv4 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv4}}}) % extra fields not allowed
end,
Res1 = {'CertificationRequest',Term1,Term2,Term3},
Res1.
'dec_CertificationRequest_signatureAlgorithm'(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute algorithm(1) with type OBJECT IDENTIFIER
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_object_identifier(V1, [6]),

%%-------------------------------------------------
%% attribute parameters(2) with type typefieldParams OPTIONAL
%%-------------------------------------------------
{Tmpterm1,Tlv3} = case Tlv2 of
[V2|TempTlv3] ->
    {decode_open_type(V2, []), TempTlv3};
    _ ->
        { asn1_NOVALUE, Tlv2}
end,

DecObjalgorithmTerm1 =
   'PKCS-10':'getdec_internal_object_set_argument_8'(Term1),
Term2 = 
   case Tmpterm1 of
      asn1_NOVALUE ->asn1_NOVALUE;
      _ ->
         case (catch DecObjalgorithmTerm1('Params', Tmpterm1, [])) of
            {'EXIT', Reason1} ->
               exit({'Type not compatible with table constraint',Reason1});
            Tmpterm2 ->
               Tmpterm2
         end
   end,

case Tlv3 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv3}}}) % extra fields not allowed
end,
Res1 = {'CertificationRequest_signatureAlgorithm',Term1,Term2},
Res1.



%%================================
%%  PKInfoAlgorithms
%%================================
getenc_PKInfoAlgorithms(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_PKInfoAlgorithms(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.





%%================================
%%  CRIAttributes
%%================================
getenc_CRIAttributes(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_CRIAttributes(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.





%%================================
%%  SignatureAlgorithms
%%================================
getenc_SignatureAlgorithms(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_SignatureAlgorithms(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.





%%================================
%%  internal_object_set_argument_8
%%================================
getenc_internal_object_set_argument_8(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_internal_object_set_argument_8(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.





%%================================
%%  internal_object_set_argument_6
%%================================
getenc_internal_object_set_argument_6(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_internal_object_set_argument_6(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.





%%================================
%%  internal_object_set_argument_5
%%================================
getenc_internal_object_set_argument_5(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_internal_object_set_argument_5(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.





%%================================
%%  internal_object_set_argument_4
%%================================
getenc_internal_object_set_argument_4(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_internal_object_set_argument_4(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.





%%================================
%%  internal_object_set_argument_2
%%================================
getenc_internal_object_set_argument_2(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_internal_object_set_argument_2(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.



%%%
%%% Run-time functions.
%%%

'dialyzer-suppressions'(Arg) ->
    ok.

ber_decode_nif(B) ->
    asn1rt_nif:decode_ber_tlv(B).

ber_encode([Tlv]) ->
    ber_encode(Tlv);
ber_encode(Tlv) when is_binary(Tlv) ->
    Tlv;
ber_encode(Tlv) ->
    asn1rt_nif:encode_ber_tlv(Tlv).

collect_parts(TlvList) ->
    collect_parts(TlvList, []).

collect_parts([{_, L} | Rest], Acc) when is_list(L) ->
    collect_parts(Rest, [collect_parts(L) | Acc]);
collect_parts([{3, <<Unused,Bits/binary>>} | Rest], _Acc) ->
    collect_parts_bit(Rest, [Bits], Unused);
collect_parts([{_T, V} | Rest], Acc) ->
    collect_parts(Rest, [V | Acc]);
collect_parts([], Acc) ->
    list_to_binary(lists:reverse(Acc)).

collect_parts_bit([{3, <<Unused,Bits/binary>>} | Rest], Acc, Uacc) ->
    collect_parts_bit(Rest, [Bits | Acc], Unused + Uacc);
collect_parts_bit([], Acc, Uacc) ->
    list_to_binary([Uacc | lists:reverse(Acc)]).

dec_subidentifiers(<<>>, _Av, Al) ->
    lists:reverse(Al);
dec_subidentifiers(<<1:1,H:7,T/binary>>, Av, Al) ->
    dec_subidentifiers(T, Av bsl 7 + H, Al);
dec_subidentifiers(<<H,T/binary>>, Av, Al) ->
    dec_subidentifiers(T, 0, [Av bsl 7 + H | Al]).

decode_integer(Tlv, TagIn) ->
    Bin = match_tags(Tlv, TagIn),
    Len = byte_size(Bin),
    <<Int:Len/signed-unit:8>> = Bin,
    Int.

decode_native_bit_string(Buffer, Tags) ->
    case match_and_collect(Buffer, Tags) of
        <<0>> ->
            <<>>;
        <<Unused,Bits/binary>> ->
            Size = bit_size(Bits) - Unused,
            <<Val:Size/bitstring,_:Unused/bitstring>> = Bits,
            Val
    end.

decode_object_identifier(Tlv, Tags) ->
    Val = match_tags(Tlv, Tags),
    [AddedObjVal | ObjVals] = dec_subidentifiers(Val, 0, []),
    {Val1, Val2} =
        if
            AddedObjVal < 40 ->
                {0, AddedObjVal};
            AddedObjVal < 80 ->
                {1, AddedObjVal - 40};
            true ->
                {2, AddedObjVal - 80}
        end,
    list_to_tuple([Val1, Val2 | ObjVals]).

decode_open_type(Tlv, TagIn) ->
    case match_tags(Tlv, TagIn) of
        Bin when is_binary(Bin) ->
            {InnerTlv, _} = ber_decode_nif(Bin),
            InnerTlv;
        TlvBytes ->
            TlvBytes
    end.

dynamicsort_SETOF(ListOfEncVal) ->
    BinL =
        lists:map(fun(L) when is_list(L) ->
                         list_to_binary(L);
                     (B) ->
                         B
                  end,
                  ListOfEncVal),
    lists:sort(BinL).

e_object_identifier({'OBJECT IDENTIFIER', V}) ->
    e_object_identifier(V);
e_object_identifier(V) when is_tuple(V) ->
    e_object_identifier(tuple_to_list(V));
e_object_identifier([E1, E2 | Tail]) ->
    Head = 40 * E1 + E2,
    {H, Lh} = mk_object_val(Head),
    {R, Lr} = lists:mapfoldl(fun enc_obj_id_tail/2, 0, Tail),
    {[H | R], Lh + Lr}.

enc_obj_id_tail(H, Len) ->
    {B, L} = mk_object_val(H),
    {B, Len + L}.

encode_integer(Val) ->
    Bytes =
        if
            Val >= 0 ->
                encode_integer_pos(Val, []);
            true ->
                encode_integer_neg(Val, [])
        end,
    {Bytes, length(Bytes)}.

encode_integer(Val, NamedNumberList, Tag) when is_atom(Val) ->
    case lists:keyfind(Val, 1, NamedNumberList) of
        {_, NewVal} ->
            encode_tags(Tag, encode_integer(NewVal));
        _ ->
            exit({error, {asn1, {encode_integer_namednumber, Val}}})
    end;
encode_integer(Val, _NamedNumberList, Tag) ->
    encode_tags(Tag, encode_integer(Val)).

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

encode_object_identifier(Val, TagIn) ->
    encode_tags(TagIn, e_object_identifier(Val)).

encode_open_type(Val, T) when is_list(Val) ->
    encode_open_type(list_to_binary(Val), T);
encode_open_type(Val, Tag) ->
    encode_tags(Tag, Val, byte_size(Val)).

encode_tags(TagIn, {BytesSoFar, LenSoFar}) ->
    encode_tags(TagIn, BytesSoFar, LenSoFar).

encode_tags([Tag | Trest], BytesSoFar, LenSoFar) ->
    {Bytes2, L2} = encode_length(LenSoFar),
    encode_tags(Trest,
                [Tag, Bytes2 | BytesSoFar],
                LenSoFar + byte_size(Tag) + L2);
encode_tags([], BytesSoFar, LenSoFar) ->
    {BytesSoFar, LenSoFar}.

encode_unnamed_bit_string(Bits, TagIn) ->
    Unused = (8 - bit_size(Bits) band 7) band 7,
    Bin = <<Unused,Bits/bitstring,0:Unused>>,
    encode_tags(TagIn, Bin, byte_size(Bin)).

match_and_collect(Tlv, TagsIn) ->
    Val = match_tags(Tlv, TagsIn),
    case Val of
        [_ | _] = PartList ->
            collect_parts(PartList);
        Bin when is_binary(Bin) ->
            Bin
    end.

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

mk_object_val(0, Ack, Len) ->
    {Ack, Len};
mk_object_val(Val, Ack, Len) ->
    mk_object_val(Val bsr 7, [Val band 127 bor 128 | Ack], Len + 1).

mk_object_val(Val) when Val =< 127 ->
    {[255 band Val], 1};
mk_object_val(Val) ->
    mk_object_val(Val bsr 7, [Val band 127], 1).

number2name(Int, NamedNumberList) ->
    case lists:keyfind(Int, 2, NamedNumberList) of
        {NamedVal, _} ->
            NamedVal;
        _ ->
            Int
    end.
