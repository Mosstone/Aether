%%
%% %CopyrightBegin%
%%
%% SPDX-License-Identifier: Apache-2.0
%%
%% Copyright Ericsson AB 1999-2025. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%
%%

{application, megaco,
 [{description, "Megaco/H.248 protocol"},
  {vsn, "4.8"},
  {modules,
   [	
	megaco,
	megaco_ber_encoder,
	megaco_ber_media_gateway_control_v1,
	megaco_ber_media_gateway_control_v2,
	megaco_ber_media_gateway_control_v3,
	megaco_binary_encoder,
	megaco_binary_encoder_lib,
	megaco_binary_name_resolver_v1,
	megaco_binary_name_resolver_v2,
	megaco_binary_name_resolver_v3,
	megaco_binary_term_id,
	megaco_binary_term_id_gen,
	megaco_binary_transformer_v1,
	megaco_binary_transformer_v2,
	megaco_binary_transformer_v3,
	megaco_compact_text_encoder,
	megaco_compact_text_encoder_v1,
	megaco_compact_text_encoder_v2,
	megaco_compact_text_encoder_v3,
	megaco_config,
	megaco_config_misc,
	megaco_digit_map,
	megaco_encoder,
	megaco_edist_compress,
	megaco_erl_dist_encoder,
	megaco_erl_dist_encoder_mc,
	megaco_filter,
	megaco_flex_scanner,
	megaco_flex_scanner_handler,
	megaco_messenger,
	megaco_messenger_misc,
	megaco_misc_sup,
	megaco_monitor,
	megaco_per_encoder,
	megaco_per_media_gateway_control_v1,
	megaco_per_media_gateway_control_v2,
	megaco_per_media_gateway_control_v3,
	megaco_pretty_text_encoder,
	megaco_pretty_text_encoder_v1,
	megaco_pretty_text_encoder_v2,
	megaco_pretty_text_encoder_v3,
	megaco_sdp,
	megaco_stats,
	megaco_sup,
	megaco_tcp,
	megaco_tcp_accept,
	megaco_tcp_accept_sup,
	megaco_tcp_connection,
	megaco_tcp_connection_sup,
	megaco_tcp_sup,
	megaco_text_mini_decoder,
	megaco_text_mini_parser,
	megaco_text_parser_v1,
	megaco_text_parser_v2,
	megaco_text_parser_v3,
	megaco_text_scanner,
	megaco_timer,
	megaco_trans_sender,
	megaco_trans_sup,
	megaco_transport,
	megaco_udp,
	megaco_udp_server,
	megaco_udp_sup,
	megaco_user,
	megaco_user_default
       ]},
  {registered, [megaco_config, megaco_monitor, 
                megaco_trans_sup, megaco_misc_sup, megaco_sup]},
  {applications, [stdlib, kernel]},
  {env, []},
  {mod, {megaco_sup, []}},
  {runtime_dependencies, ["stdlib-2.5","runtime_tools-1.8.14","kernel-8.0",
			  "et-1.5","erts-12.0","debugger-4.0",
			  "asn1-3.0"]}
 ]}.


