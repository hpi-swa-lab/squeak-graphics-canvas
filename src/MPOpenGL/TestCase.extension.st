Extension { #name : #TestCase }

{ #category : #'*MPOpenGL-Test' }
TestCase >> assert: aBlock throws: aThrowableClass [
	self assert: aBlock throws: aThrowableClass description: aThrowableClass asString, ' was not thrown in block'
]

{ #category : #'*MPOpenGL-Test' }
TestCase >> assert: aBlock throws: aThrowableClass description: aString [
	aBlock on: aThrowableClass do: [:sig | "terminate method" ^true].
	self fail: aString
]
