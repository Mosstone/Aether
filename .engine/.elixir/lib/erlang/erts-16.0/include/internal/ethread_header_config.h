/* include/internal/x86_64-conda-linux-gnu/ethread_header_config.h.  Generated from ethread_header_config.h.in by configure.  */
/*
 * %CopyrightBegin%
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Copyright Ericsson AB 2004-2025. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * %CopyrightEnd%
 */

/* Define to the size of pointers */
#define ETHR_SIZEOF_PTR 8

/* Define to the size of int */
#define ETHR_SIZEOF_INT 4

/* Define to the size of long */
#define ETHR_SIZEOF_LONG 8

/* Define to the size of long long */
#define ETHR_SIZEOF_LONG_LONG 8

/* Define to the size of __int64 */
#define ETHR_SIZEOF___INT64 0

/* Define to the size of __int128_t */
#define ETHR_SIZEOF___INT128_T 16

/* Define if bigendian */
/* #undef ETHR_BIGENDIAN */

/* Define if you want to disable native ethread implementations */
/* #undef ETHR_DISABLE_NATIVE_IMPLS */

/* Define if you have win32 threads */
/* #undef ETHR_WIN32_THREADS */

/* Define if you have pthreads */
#define ETHR_PTHREADS 1

/* Define if you need the <nptl/pthread.h> header file. */
/* #undef ETHR_NEED_NPTL_PTHREAD_H */

/* Define if you have the <pthread.h> header file. */
#define ETHR_HAVE_PTHREAD_H 1

/* Define if the pthread.h header file is in pthread/mit directory. */
/* #undef ETHR_HAVE_MIT_PTHREAD_H */

/* Define if you have the pthread_spin_lock function. */
#define ETHR_HAVE_PTHREAD_SPIN_LOCK 1

/* Define if you want to force usage of pthread rwlocks */
/* #undef ETHR_FORCE_PTHREAD_RWLOCK */

/* Define if you have the pthread_rwlockattr_setkind_np() function. */
#define ETHR_HAVE_PTHREAD_RWLOCKATTR_SETKIND_NP 1

/* Define if you have the PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP rwlock
   attribute. */
#define ETHR_HAVE_PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP 1

/* Define if you have a linux futex implementation. */
#define ETHR_HAVE_LINUX_FUTEX 1

/* Define if x86/x86_64 out of order instructions should be synchronized */
/* #undef ETHR_X86_OUT_OF_ORDER */

/* Define if you have the powerpc lwsync instruction */
/* #undef ETHR_PPC_HAVE_LWSYNC */

/* Define if you do not have the powerpc lwsync instruction */
/* #undef ETHR_PPC_HAVE_NO_LWSYNC */

/* Define if only run in Sparc TSO mode */
/* #undef ETHR_SPARC_TSO */

/* Define if only run in Sparc PSO, or TSO mode */
/* #undef ETHR_SPARC_PSO */

/* Define if run in Sparc RMO, PSO, or TSO mode */
/* #undef ETHR_SPARC_RMO */

/* Define as a boolean indicating whether you have a gcc compatible compiler
   capable of generating the ARM 'dmb sy' instruction, and are compiling for
   an ARM processor with ARM DMB instruction support, or not */
#define ETHR_HAVE_GCC_ASM_ARM_DMB_INSTRUCTION 0

/* Define as a boolean indicating whether you have a gcc compatible compiler
   capable of generating the ARM 'dmb ld' instruction, and are compiling for
   an ARM processor with ARM DMB instruction support, or not */
#define ETHR_HAVE_GCC_ASM_ARM_DMB_LD_INSTRUCTION 0

/* Define as a boolean indicating whether you have a gcc compatible compiler
   capable of generating the ARM 'dmb st' instruction, and are compiling for
   an ARM processor with ARM DMB instruction support, or not */
#define ETHR_HAVE_GCC_ASM_ARM_DMB_ST_INSTRUCTION 0

/* Define as a boolean indicating whether you have a gcc compatible compiler
   capable of generating the ARM 'isb sy' instruction, and are compiling for
   an ARM processor with ARM ISB instruction support, or not */
#define ETHR_HAVE_GCC_ASM_ARM_ISB_SY_INSTRUCTION 0

/* Define as a bitmask corresponding to the word sizes that
   __sync_synchronize() can handle on your system */
#define ETHR_HAVE___sync_synchronize ~0

/* Define as a bitmask corresponding to the word sizes that
   __sync_add_and_fetch() can handle on your system */
#define ETHR_HAVE___sync_add_and_fetch 28

/* Define as a bitmask corresponding to the word sizes that
   __sync_fetch_and_and() can handle on your system */
#define ETHR_HAVE___sync_fetch_and_and 28

/* Define as a bitmask corresponding to the word sizes that
   __sync_fetch_and_or() can handle on your system */
#define ETHR_HAVE___sync_fetch_and_or 28

/* Define as a bitmask corresponding to the word sizes that
   __sync_val_compare_and_swap() can handle on your system */
#define ETHR_HAVE___sync_val_compare_and_swap 28

/* Define as a boolean indicating whether you have a gcc __atomic builtins or
   not */
#define ETHR_HAVE_GCC___ATOMIC_BUILTINS 1

/* Define as a boolean indicating whether you trust gcc's __atomic_* builtins
   memory barrier implementations, or not */
#define ETHR_TRUST_GCC_ATOMIC_BUILTINS_MEMORY_BARRIERS 0

/* Define as a bitmask corresponding to the word sizes that __atomic_store_n()
   can handle on your system */
#define ETHR_HAVE___atomic_store_n 12

/* Define as a bitmask corresponding to the word sizes that __atomic_load_n()
   can handle on your system */
#define ETHR_HAVE___atomic_load_n 12

/* Define as a bitmask corresponding to the word sizes that
   __atomic_add_fetch() can handle on your system */
#define ETHR_HAVE___atomic_add_fetch 12

/* Define as a bitmask corresponding to the word sizes that
   __atomic_fetch_and() can handle on your system */
#define ETHR_HAVE___atomic_fetch_and 12

/* Define as a bitmask corresponding to the word sizes that
   __atomic_fetch_or() can handle on your system */
#define ETHR_HAVE___atomic_fetch_or 12

/* Define as a bitmask corresponding to the word sizes that
   __atomic_compare_exchange_n() can handle on your system */
#define ETHR_HAVE___atomic_compare_exchange_n 12

/* Define if you prefer gcc native ethread implementations */
/* #undef ETHR_PREFER_GCC_NATIVE_IMPLS */

/* Define if you have the <sched.h> header file. */
#define ETHR_HAVE_SCHED_H 1

/* Define if you have the sched_yield() function. */
#define ETHR_HAVE_SCHED_YIELD 1

/* Define if you have the pthread_yield() function. */
#define ETHR_HAVE_PTHREAD_YIELD 1

/* Define if pthread_yield() returns an int. */
#define ETHR_PTHREAD_YIELD_RET_INT 1

/* Define if sched_yield() returns an int. */
#define ETHR_SCHED_YIELD_RET_INT 1

/* Define if you use a gcc that supports -msse2 and understand sse2 specific asm statements */
/* #undef ETHR_GCC_HAVE_SSE2_ASM_SUPPORT */

/* Define if you use a gcc that supports the double word cmpxchg instruction */
#define ETHR_GCC_HAVE_DW_CMPXCHG_ASM_SUPPORT 1

/* Define if gcc won't let you clobber ebx with cmpxchg8b and position
   independent code */
/* #undef ETHR_CMPXCHG8B_PIC_NO_CLOBBER_EBX */

/* Define if you get a register shortage with cmpxchg8b and position independent code */
/* #undef ETHR_CMPXCHG8B_REGISTER_SHORTAGE */

/* Define if you have the pthread_rwlockattr_setkind_np() function. */
#define ETHR_HAVE_PTHREAD_RWLOCKATTR_SETKIND_NP 1

/* Define if you have the PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP rwlock
   attribute. */
#define ETHR_HAVE_PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP 1

/* Define if you have gcc atomic operations */
/* #undef ETHR_HAVE_GCC_ATOMIC_OPS */

/* Define if you prefer gcc native ethread implementations */
/* #undef ETHR_PREFER_GCC_NATIVE_IMPLS */

/* Define if you have libatomic_ops atomic operations */
/* #undef ETHR_HAVE_LIBATOMIC_OPS */

/* Define if you prefer libatomic_ops native ethread implementations */
/* #undef ETHR_PREFER_LIBATOMIC_OPS_NATIVE_IMPLS */

/* Define to the size of AO_t if libatomic_ops is used */
/* #undef ETHR_SIZEOF_AO_T */

/* Define if you have _InterlockedAnd() */
/* #undef ETHR_HAVE__INTERLOCKEDAND */

/* Define if you have _InterlockedAnd64() */
/* #undef ETHR_HAVE__INTERLOCKEDAND64 */

/* Define if you have _InterlockedCompareExchange() */
/* #undef ETHR_HAVE__INTERLOCKEDCOMPAREEXCHANGE */

/* Define if you have _InterlockedCompareExchange64() */
/* #undef ETHR_HAVE__INTERLOCKEDCOMPAREEXCHANGE64 */

/* Define if you have _InterlockedCompareExchange64_acq() */
/* #undef ETHR_HAVE__INTERLOCKEDCOMPAREEXCHANGE64_ACQ */

/* Define if you have _InterlockedCompareExchange64_rel() */
/* #undef ETHR_HAVE__INTERLOCKEDCOMPAREEXCHANGE64_REL */

/* Define if you have _InterlockedCompareExchange_acq() */
/* #undef ETHR_HAVE__INTERLOCKEDCOMPAREEXCHANGE_ACQ */

/* Define if you have _InterlockedCompareExchange_rel() */
/* #undef ETHR_HAVE__INTERLOCKEDCOMPAREEXCHANGE_REL */

/* Define if you have _InterlockedDecrement() */
/* #undef ETHR_HAVE__INTERLOCKEDDECREMENT */

/* Define if you have _InterlockedDecrement64() */
/* #undef ETHR_HAVE__INTERLOCKEDDECREMENT64 */

/* Define if you have _InterlockedDecrement64_rel() */
/* #undef ETHR_HAVE__INTERLOCKEDDECREMENT64_REL */

/* Define if you have _InterlockedDecrement_rel() */
/* #undef ETHR_HAVE__INTERLOCKEDDECREMENT_REL */

/* Define if you have _InterlockedExchange() */
/* #undef ETHR_HAVE__INTERLOCKEDEXCHANGE */

/* Define if you have _InterlockedExchange64() */
/* #undef ETHR_HAVE__INTERLOCKEDEXCHANGE64 */

/* Define if you have _InterlockedExchangeAdd() */
/* #undef ETHR_HAVE__INTERLOCKEDEXCHANGEADD */

/* Define if you have _InterlockedExchangeAdd64() */
/* #undef ETHR_HAVE__INTERLOCKEDEXCHANGEADD64 */

/* Define if you have _InterlockedExchangeAdd64_acq() */
/* #undef ETHR_HAVE__INTERLOCKEDEXCHANGEADD64_ACQ */

/* Define if you have _InterlockedExchangeAdd_acq() */
/* #undef ETHR_HAVE__INTERLOCKEDEXCHANGEADD_ACQ */

/* Define if you have _InterlockedIncrement() */
/* #undef ETHR_HAVE__INTERLOCKEDINCREMENT */

/* Define if you have _InterlockedIncrement64() */
/* #undef ETHR_HAVE__INTERLOCKEDINCREMENT64 */

/* Define if you have _InterlockedIncrement64_acq() */
/* #undef ETHR_HAVE__INTERLOCKEDINCREMENT64_ACQ */

/* Define if you have _InterlockedIncrement_acq() */
/* #undef ETHR_HAVE__INTERLOCKEDINCREMENT_ACQ */

/* Define if you have _InterlockedOr() */
/* #undef ETHR_HAVE__INTERLOCKEDOR */

/* Define if you have _InterlockedOr64() */
/* #undef ETHR_HAVE__INTERLOCKEDOR64 */

/* Define if you want to turn on extra sanity checking in the ethread library */
/* #undef ETHR_XCHK */

/* Assumed cache-line size (in bytes) */
#define ASSUMED_CACHE_LINE_SIZE 64

/* Define if you have a clock_gettime() with a monotonic clock */
#define ETHR_HAVE_CLOCK_GETTIME_MONOTONIC 1

/* Define if you have a monotonic gethrtime() */
/* #undef ETHR_HAVE_GETHRTIME */

/* Define if you have a mach clock_get_time() with a monotonic clock */
/* #undef ETHR_HAVE_MACH_CLOCK_GET_TIME */

/* Define to the monotonic clock id to use */
#define ETHR_MONOTONIC_CLOCK_ID CLOCK_MONOTONIC

/* Define if pthread_cond_timedwait() can be used with a monotonic clock */
#define ETHR_HAVE_PTHREAD_COND_TIMEDWAIT_MONOTONIC 1

/* Number of bits in a file offset, on hosts where this is settable. */
/* #undef _FILE_OFFSET_BITS */

/* Define to 1 on platforms where this makes off_t a 64-bit type. */
/* #undef _LARGE_FILES */

/* Number of bits in time_t, on hosts where this is settable. */
/* #undef _TIME_BITS */

/* Define to 1 on platforms where this makes time_t a 64-bit type. */
/* #undef __MINGW_USE_VC2005_COMPAT */

