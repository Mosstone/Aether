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


# Name of the library where the ethread implementation is located
ETHR_LIB_NAME=ethread

# Command-line defines to use when compiling
ETHR_DEFS=-DUSE_THREADS  -D_THREAD_SAFE -D_REENTRANT -DPOSIX_THREADS -D_POSIX_THREAD_SAFE_FUNCTIONS -D_GNU_SOURCE

# Libraries to link with when linking
ETHR_LIBS=-lethread -lerts_internal_r -lpthread  -lrt

# Extra libraries to link with. The same as ETHR_LIBS except that the
# ethread library itself is not included.
ETHR_X_LIBS=-lpthread  -lrt

# The name of the thread library which the ethread library is based on.
ETHR_THR_LIB_BASE=pthread

# ----------------------------------------------------------------------
