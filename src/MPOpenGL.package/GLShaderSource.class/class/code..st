instance creation
code: aString
	| instance |
	instance := self new.
	instance code: aString.
	^instance