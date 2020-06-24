initialization
release

	ogl ~= #glSuspended ifTrue: [ogl destroy].
	super release