#
# %CopyrightBegin%
#
# SPDX-License-Identifier: Apache-2.0
#
# Copyright Ericsson AB 2004-2025. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# %CopyrightEnd%
#

# ----------------------------------------------------------------------

# Have the ei and erl_interface libs been compiled for threads?
EI_THREADS=true

# Threads flags
THR_DEFS= -D_THREAD_SAFE -D_REENTRANT -DPOSIX_THREADS -D_POSIX_THREAD_SAFE_FUNCTIONS

# Threads libs
THR_LIBS=-lpthread

EI_LDFLAGS=-Wl,--no-copy-dt-needed-entries -Wl,--as-needed -Wl,-z,now -Wl,-z,relro -Wl,-z,noexecstack -fstack-protector-strong -m64 -Wl,-O2 -Wl,--sort-common -Wl,--as-needed -Wl,-z,relro -Wl,-z,now -Wl,--disable-new-dtags -Wl,--gc-sections -Wl,--allow-shlib-undefined -Wl,-rpath,/home/conda/feedstock_root/build_artifacts/erlang_1747854900811/_h_env_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac/lib -Wl,-rpath-link,/home/conda/feedstock_root/build_artifacts/erlang_1747854900811/_h_env_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac/lib -L/home/conda/feedstock_root/build_artifacts/erlang_1747854900811/_h_env_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac/lib

# ----------------------------------------------------------------------
