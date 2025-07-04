%% %CopyrightBegin%
%%
%% SPDX-License-Identifier: Apache-2.0
%%
%% Copyright Ericsson AB 1996-2025. All Rights Reserved.
%%
%% %CopyrightEnd%
{application, ftp,
 [{description, "FTP client"},
  {vsn, "1.2.4"},
  {registered, []},
  {mod, { ftp_app, []}},
  {applications,
   [kernel,
    stdlib
   ]},
  {env,[]},
  {modules, [
             ftp,
             ftp_app,
             ftp_progress,
             ftp_internal,
             ftp_response,
             ftp_sup
            ]},
  {runtime_dependencies, ["erts-7.0","stdlib-3.5","kernel-6.0","ssl-10.2","runtime_tools-1.15.1"]}
 ]}.
