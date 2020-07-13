instance creation
signature: signature "<String>" block: aBlock "<BlockClosure> ^<FFICallback>"
	^ self new
		setBlock: aBlock
		signature: signature