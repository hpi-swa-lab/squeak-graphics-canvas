instance creation
signature: signature "<String>" message: message "<MessageSend> ^<FFICallback>"
	^ self new
		setMessage: message
		signature: signature