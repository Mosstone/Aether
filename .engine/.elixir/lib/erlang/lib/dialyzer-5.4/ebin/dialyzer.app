%% This is an -*- erlang -*- file.
%%
%% %CopyrightBegin%
%%
%% SPDX-License-Identifier: Apache-2.0
%%
%% Copyright Ericsson AB 2006-2025. All Rights Reserved.
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

{application, dialyzer,
 [{description, "DIscrepancy AnaLYZer of ERlang programs, version 5.4"},
  {vsn, "5.4"},
  {modules, [cerl_prettypr,
	     dialyzer,
	     dialyzer_analysis_callgraph,
	     dialyzer_behaviours,
	     dialyzer_callgraph,
	     dialyzer_typegraph,
	     dialyzer_cl,
	     dialyzer_cl_parse,
             dialyzer_clean_core,
	     dialyzer_codeserver,
	     dialyzer_contracts,
	     dialyzer_coordinator,
	     dialyzer_dataflow,
	     dialyzer_dep,
	     dialyzer_dot,
	     dialyzer_incremental,
	     dialyzer_options,
	     dialyzer_plt,
	     dialyzer_cplt,
	     dialyzer_iplt,
	     dialyzer_succ_typings,
	     dialyzer_typesig,
	     dialyzer_utils,
             dialyzer_timing,
             dialyzer_worker,
             erl_bif_types,
             erl_types,
             typer,
             typer_core]},
  {registered, []},
  {applications, [compiler, kernel, stdlib]},
  {env, []},
  {runtime_dependencies, ["syntax_tools-2.0","stdlib-5.0",
			  "kernel-8.0","erts-12.0",
			  "compiler-8.0"]}]}.
