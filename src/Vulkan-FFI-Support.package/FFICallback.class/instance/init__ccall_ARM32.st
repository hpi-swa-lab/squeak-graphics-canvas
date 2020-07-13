initialization - thunk prepare
init__ccall_ARM32
	<abi: 'ARM32'> <init>
	"Initialize the receiver with a __ccall thunk.  The thunk calls thunkEntry in the IA32ABI plugin,
	 whose source is in platforms/Cross/plugins/IA32ABI/arm32abicc.c.  thunkEntry is the entry point
	 for Callbacks. The objective of the thunk is to call thunkEntry with all arguments to the call of the
	 thunk (registers and stack) as well as a pointer to the thunk itself.  thunkEntry is as follows:
	
		long long
		thunkEntry(long r0, long r1, long r2, long r3,
		            double d0, double d1, double d2, double d3,
		            double d4, double d5, double d6, double d7,
		            void *thunkpPlus16, sqIntptr_t *stackp)

	thunkEntry then collects the various arguments (thunk, integer register arguments, floating-point
	register arguments, stack pointer) in a VMCallbackContext and invokes the callback via invokeCallbackContext:."

	"0x0 <thunk+0>:		mov     r12, sp			; 0xe1a0c00d
 	 0x4 <thunk+4>:		sub     sp, sp, #16		; 0xe24dd010
 	 0x8 <thunk+8>:		str     pc, [sp, #0]		; 0xe58df000 N.B. passes thunk+16; thunkEntry compensates
 	 0xc <thunk+12>:		str     r12, [sp,#4]		; 0xe58dc004
 	 0x10 <thunk+16>:	str     lr, [sp, #12]		; 0xe58de00c
 	 0x14 <thunk+20>:	ldr     r12, [pc, #8]		; 0xe59fc008
 	 0x18 <thunk+24>:	blx     r12				; 0xe12fff3c
 	 0x1c <thunk+28>:	add     sp, sp, #12		; 0xe28dd00c
 	 0x20 <thunk+32>:	ldr     pc, [sp], #4!		; 0xe49df004 ; pop     {pc}
 	 0x24 <thunk+36>:     .word thunkEntry"
	self flag: #hidden. "mt: How is the thunk's handle stored to lookup this instance upon callback later?"
	thunk getHandle
		unsignedLongAt:   1 put: 16re1a0c00d;
		unsignedLongAt:   5 put: 16re24dd010;
		unsignedLongAt:   9 put: 16re58df000;
		unsignedLongAt: 13 put: 16re58dc004;
		unsignedLongAt: 17 put: 16re58de00c;
		unsignedLongAt: 21 put: 16re59fc008;
		unsignedLongAt: 25 put: 16re12fff3c;
		unsignedLongAt: 29 put: 16re28dd00c;
		unsignedLongAt: 33 put: 16re49df004;
		shortPointerAt: 37 put: self thunkEntryAddress.