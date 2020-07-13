field definition
fields
	"
	self defineFields.
	"
	^ #(
		(thunkp		'void*')
		(stackPtr		'intptr_t*')	"was: char*"
		(intRegArgs		'intptr_t*')	"was: long* or int*"
		(floatRegArgs	'double*')
		(nil				'void*')		"was: savedCStackPointer"
		(nil				'void*')		"was: savedCFramePointer"
		(rvs				'FFICallbackResult')
	)
	
"
typedef struct {
    void *thunkp;
    char *stackptr;
    long *intRegArgs;
    double *floatRegArgs;
    void *savedCStackPointer;
    void *savedCFramePointer;
    union {
                            intptr_t vallong;
                            struct { int low, high; } valleint64;
                            struct { int high, low; } valbeint64;
                            double valflt64;
                            struct { void *addr; intptr_t size; } valstruct;
                        }   rvs;
	void *savedPrimFunctionPointer;
	jmp_buf	trampoline;
	jmp_buf	savedReenterInterpreter;
 } VMCallbackContext;
"