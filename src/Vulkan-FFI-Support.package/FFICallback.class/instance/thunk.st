accessing
thunk

"	self flag: #debugging.
	^ FFICallbackMemory new
		externalPointer: thunk getHandle;
		yourself"
	^ thunk