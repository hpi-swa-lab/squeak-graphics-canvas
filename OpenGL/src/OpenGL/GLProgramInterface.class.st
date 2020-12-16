Class {
	#name : #GLProgramInterface,
	#superclass : #Object,
	#instVars : [
		'variables',
		'nameToVariable',
		'program',
		'interface'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-Wrappers-Programs',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/16/2020 21:04'
}
GLProgramInterface class >> program: aProgram interface: aProgramResourceClass [

	^ self new
		initializeWithProgram: aProgram interface: aProgramResourceClass;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 21:07'
}
GLProgramInterface >> atIndex: index [

	^ variables at: index
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 21:07'
}
GLProgramInterface >> atName: aString [

	^ nameToVariable at: aString
]

{
	#category : #'error handling',
	#timestamp : 'stlu 12/16/2020 21:16'
}
GLProgramInterface >> doesNotUnderstand: aMessage [

	aMessage numArgs = 0 ifTrue: [
		^ self atName: aMessage selector].
	(aMessage numArgs = 1 and: [aMessage selector isBinary not]) ifTrue: [
		(self atName: aMessage selector allButLast) value: aMessage argument.
		^ self].
	^ super doesNotUnderstand: aMessage
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/16/2020 21:14'
}
GLProgramInterface >> initializeWithProgram: aProgram interface: aProgramResourceClass [

	program := aProgram.
	interface := aProgramResourceClass.
	
	variables := interface allInProgram: program.
	nameToVariable := Dictionary new: variables size.
	variables do: [:var |
		nameToVariable at: var name put: var]
]
