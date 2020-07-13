initialization - thunk prepare
init__ccall_IA32
	<abi: 'IA32'> <init>
	"Initialize the receiver with a __ccall thunk.  The thunk calls thunkEntry in the IA32ABI plugin,
	 whose source is in platforms/Cross/plugins/IA32ABI/x64win64abicc.c.  thunkEntry is the entry point
	 for Callbacks. The objective of the thunk is to call thunkEntry with all arguments to the call of the
	 thunk (registers and stack) as well as a pointer to the thunk itself.  thunkEntry is as follows:

		long
		thunkEntry(void *thunkp, sqIntptr_t *stackp)

	thunkEntry then collects the various arguments (thunk, stack pointer) in a VMCallbackContext and
	invokes the callback via invokeCallbackContext:."

	"thunk:		push   %esp				0x54							0xa1905454
	 thunk+01:	push   %esp				0x54
	 thunk+02:	nop   						0x90
	 thunk+03:	mov    $thunkEntry,%eax	0xb8 0x00 0x00 0x00 0x00	0x00000000 - entry
	 thunk+08:	nop   						0x90							0x68909090
	 thunk+09:	nop   						0x90
	 thunk+10:	nop   						0x90
	 thunk+11:	push   $thunk				0x68 0x00 0x00 0x00 0x00	0x00000000 - thunk
	 thunk+16:	call   *%eax					0xff 0xd0						0xc483d0ff
	 thunk+18:	add    $0xC,%esp			0x83 0xc4 0x0C				0x9090c30C
	 thunk+21:	ret							0xc3
	 thunk+22:	nop							0x90
	 thunk+23:	nop							0x90"
	thunk getHandle
		unsignedLongAt:  1 put: 16rB8905454;
		shortPointerAt: 5 put: self thunkEntryAddress;
		unsignedLongAt:  9 put: 16r68909090;
		shortPointerAt: 13 put: thunk getHandle;
		unsignedLongAt: 17 put: 16rC483D0FF;
		unsignedLongAt: 21 put: 16r9090C30C