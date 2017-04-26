// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// +build !gccgo

#include "textflag.h"

//
// System call support for AMD64, DragonFly
//

// Just jump to package syscall's implementation for all these functions.
// The runtime may know about them.

TEXT	·Syscall(SB),NOSPLIT,$0-64
	JMP	syscall·Syscall(SB)

TEXT	·Syscall6(SB),NOSPLIT,$0-88
	JMP	syscall·Syscall6(SB)

TEXT	·Syscall9(SB),NOSPLIT,$0-112
	JMP	syscall·Syscall9(SB)

TEXT ·RawSyscall(SB),NOSPLIT,$0-64
	JMP	syscall·RawSyscall(SB)

TEXT	·RawSyscall6(SB),NOSPLIT,$0-88
	JMP	syscall·RawSyscall6(SB)