%% This is an -*- erlang -*- file.
%%
%% %CopyrightBegin%
%%
%% SPDX-License-Identifier: Apache-2.0
%%
%% Copyright Ericsson AB 2002-2025. All Rights Reserved.
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

{application, et,
 [{description, "Event Tracer"},
  {vsn, "1.7.2"},
  {modules,
   [
    et,
    et_collector,
    et_selector,
    et_viewer,
    et_wx_contents_viewer,
    et_wx_viewer
   ]},
  {registered, [et_collector]},
  {applications, [stdlib, kernel, runtime_tools]},
  {optional_applications, [wx, runtime_tools]},
  {env, []},
  {runtime_dependencies, ["wx-1.2","stdlib-3.4","runtime_tools-1.10",
			  "kernel-5.3","erts-9.0"]}
 ]}.
