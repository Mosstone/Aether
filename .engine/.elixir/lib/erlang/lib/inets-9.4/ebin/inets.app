%% This is an -*- erlang -*- file.
%% %CopyrightBegin%
%%
%% SPDX-License-Identifier: Apache-2.0
%%
%% Copyright Ericsson AB 1997-2025. All Rights Reserved.
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

{application,inets,
 [{description, "INETS  CXC 138 49"},
  {vsn, "9.4"},
  {modules,[
            inets,
            inets_sup,
            inets_app,
	    inets_service,	                  
	    inets_trace,
            inets_lib,
            
            %% HTTP client:
            httpc, 
            httpc_handler,
	    httpc_handler_sup,	
            httpc_manager,
	    httpc_profile_sup,		
            httpc_request,
            httpc_response,     
            httpc_sup,
            httpc_cookie,                

            %% HTTP used by both client and server 
            http_chunk,
            http_request,
            http_response,      
            http_transport,
            http_util,  

            http_uri, %% Deprecated
            
            %% HTTP server:
            httpd,
            httpd_acceptor,
            httpd_acceptor_sup,
	    httpd_cgi,
	    httpd_connection_sup,
            httpd_conf,
	    httpd_custom,
	    httpd_custom_api,
	    httpd_esi,
            httpd_example,
	    httpd_file,
            httpd_instance_sup,
	    httpd_log,
            httpd_logger,
            httpd_manager,
            httpd_misc_sup,
            httpd_request,
            httpd_request_handler,
            httpd_response,
	    httpd_script_env,
            httpd_socket,
            httpd_sup,
            httpd_util,
            mod_actions,
            mod_alias,
            mod_auth,
            mod_auth_dets,
            mod_auth_mnesia,
            mod_auth_plain,
            mod_auth_server,
            mod_cgi,
            mod_dir,
            mod_disk_log,
            mod_esi,
            mod_get,
            mod_head,
            mod_log,
            mod_range,
            mod_responsecontrol,
            mod_security,
            mod_security_server,
            mod_trace
        ]},
  {registered,[inets_sup, httpc_manager]},
  %% If the "new" ssl is used then 'crypto' must be started before inets.
  {applications,[kernel,stdlib]},
  {mod,{inets_app,[]}},
  {runtime_dependencies,
   ["stdlib-6.0","stdlib-5.0","ssl-9.0","runtime_tools-1.8.14",
    "mnesia-4.12","kernel-9.0","erts-14.0", "public_key-1.13"]}
 ]}.
