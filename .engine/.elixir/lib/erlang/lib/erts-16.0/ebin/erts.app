%%
%% %CopyrightBegin%
%%
%% SPDX-License-Identifier: Apache-2.0
%%
%% Copyright Ericsson AB 2013-2025. All Rights Reserved.
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
{application, erts, [
	{description, "ERTS  CXC 138 10"},
	{vsn, "16.0"},
	{modules, [
		%% preloaded
		erlang,
		erl_prim_loader,
		erts_internal,
		init,
		erl_init,
		erts_code_purger,
                erts_trace_cleaner,
		prim_buffer,
		prim_eval,
		prim_file,
		prim_inet,
		prim_zip,
                atomics,
                counters,
                persistent_term,
		prim_net, prim_socket, socket_registry,
		zlib
	    ]},
	{registered, []},
	{applications, []},
	{env, []},
	{runtime_dependencies, ["stdlib-4.1", "kernel-9.0", "sasl-3.3"]}
    ]}.

%% vim: ft=erlang
