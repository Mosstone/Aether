%%% This is an -*- erlang -*- file.
%% %CopyrightBegin%
%%
%% SPDX-License-Identifier: Apache-2.0
%%
%% Copyright Ericsson AB 1996-2025. All Rights Reserved.
%%
%% %CopyrightEnd%

{application, ssh,
 [{description, "SSH-2 for Erlang/OTP"},
  {vsn, "5.3"},
  {modules, [ssh,
	     ssh_app,
	     ssh_acceptor,
	     ssh_acceptor_sup,
             ssh_options,
	     ssh_agent,
	     ssh_auth,
	     ssh_message,
	     ssh_bits,
	     ssh_channel_sup,
	     ssh_cli,
	     ssh_client_channel,
             ssh_client_key_api,
	     ssh_channel,
	     ssh_connection,
	     ssh_connection_handler,
             ssh_fsm_kexinit,
             ssh_fsm_userauth_client,
             ssh_fsm_userauth_server,
	     ssh_daemon_channel,
	     ssh_dbg,
             ssh_lib,
             ssh_lsocket_sup,
             ssh_lsocket,
	     ssh_shell,
	     ssh_io,
	     ssh_info,
	     ssh_file,
	     ssh_no_io,
	     ssh_server_channel,
             ssh_server_key_api,
	     ssh_sftp,
	     ssh_sftpd,
	     ssh_sftpd_file,
	     ssh_sftpd_file_api,
	     ssh_connection_sup,
             ssh_tcpip_forward_client,
             ssh_tcpip_forward_srv,
             ssh_tcpip_forward_acceptor_sup,
             ssh_tcpip_forward_acceptor,
	     ssh_system_sup,
	     ssh_transport,
	     ssh_xfer]},
  {registered, []},
  {applications, [kernel, stdlib, crypto, public_key]},
  {env, [{filter_modules, [
                           ssh_acceptor_sup,
                           ssh_acceptor,
                           ssh_channel_sup,
                           ssh_connection_handler,
                           ssh_connection_sup,
                           ssh_system_sup
                          ]},
         {default_filter, rm} %% rm | filter
        ]},
  {mod, {ssh_app, []}},
  {runtime_dependencies, [
			  "crypto-5.0",
			  "erts-14.0",
			  "kernel-10.3",
			  "public_key-1.6.1",
                          "stdlib-6.0","stdlib-5.0",
                          "runtime_tools-1.15.1"
			 ]}]}.
