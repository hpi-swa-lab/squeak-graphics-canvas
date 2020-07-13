initialization - thunk prepare
init__ccall_X64Win64
	<abi: 'X64Win64'> <init>
	"Initialize the receiver with a __ccall thunk.  The thunk calls thunkEntry in the IA32ABI plugin,
	 whose source is in platforms/Cross/plugins/IA32ABI/x64win64abicc.c.  thunkEntry is the entry point
	 for Callbacks. The objective of the thunk is to call thunkEntry with all arguments to the call of the
	 thunk (registers and stack) as well as a pointer to the thunk itself.  thunkEntry is as follows:

		long long
		thunkEntry(long long rcx, long long rdx,
		      		long long r8, long long r9,
					void *thunkp, sqIntptr_t *stackp)

	thunkEntry then collects the various arguments (thunk, integer register arguments, stack pointer)
	in a VMCallbackContext and invokes the callback via invokeCallbackContext:."

	"thunk+0x0:	pushq  %rsp							54
	 thunk+0x1:	pushq  %rsp							54
	 thunk+0x4:	movabsq $thunk, %rax					48 b8 b0..b7 eight bytes of thunk address a.k.a. addressField
	 thunk+0xc:	pushq  %rax							50
	 thunk+0xd:	subq   $0x20, %rsp						48 83 c4 e0 (this is addq -20 since the immediate is signed extended)
	 thunk+0x11:	movabsq $thunkEntry, %rax			48 b8 b0..b7 eight bytes of the thunkEntry address
	 thunk+0x1b:	callq  *%rax							ff d0
	 thunk+0x1d:	addq   $0x38, %rsp					48 83 c4 38
	 thunk+0x21:	retq									c3
	 thunk+0x22:	nop										90
	 thunk+0x23:	nop										90"
	thunk getHandle
		unsignedLongAt:		  1 put: 16rb8485454;
		longPointerAt: 			  5 put: thunk getHandle;
		unsignedLongAt:		13 put: 16rc4834850; 
		unsignedLongAt:		17 put: 16r00b848e0; "00 is the first byte of the 64-bit constant the movabsq/0x48 opcode moves"
		longPointerAt:			20 put: self thunkEntryAddress;
		unsignedByteAt:		28 put: 16rff;
		unsignedLongAt:		29 put: 16rc48348d0;
		unsignedLongAt:		33 put: 16r9090c338.