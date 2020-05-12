instance creation
newFor: openGlInterface
	| instance |
	instance := self new.
	instance gl: openGlInterface.
	^instance