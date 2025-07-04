%%
%% %CopyrightBegin%
%%
%% SPDX-License-Identifier: Apache-2.0
%%
%% Copyright Ericsson AB 1996-2025. All Rights Reserved.
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
{application, tools,
 [{description, "DEVTOOLS  CXC 138 16"},
  {vsn, "4.1.2"},
  {modules, [cover,
	     cprof,
	     eprof,
	     fprof,
	     tprof,
	     lcnt,
	     make,
	     tags,
	     xref,
	     xref_base,
	     xref_compiler,
	     xref_parser,
	     xref_reader,
	     xref_scanner,
	     xref_utils
	    ]
  },
  {registered, []},
  {applications, [kernel, stdlib]},
  {env, [{file_util_search_methods,[{"", ""}, {"ebin", "esrc"}, {"ebin", "src"}]}
	]
  },
  {runtime_dependencies, ["stdlib-6.0",
                          "runtime_tools-2.1",
			  "kernel-10.0",
                          "erts-15.0",
                          "compiler-8.5",
                          "erts-15.0"]}
 ]
}. 
