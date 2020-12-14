Class {
	#name : #GLProgramResources,
	#superclass : #Object,
	#instVars : [
		'program',
		'uniforms',
		'inputs'
	],
	#category : #'OpenGL-Wrappers-Programs',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/13/2020 15:28'
}
GLProgramResources class >> program: aProgram [

	^ self new
		initializeWithProgram: aProgram;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:43'
}
GLProgramResources >> atomicCounterBuffers [

	self notYetImplemented
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:45'
}
GLProgramResources >> bufferVariables [

	self notYetImplemented
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/13/2020 15:56'
}
GLProgramResources >> initializeWithProgram: aProgram [

	| impl |
	program := aProgram.
	impl := GL programInterfaceQueryImplementation.
	uniforms := impl getUniforms: program.
	inputs := impl getInputs: program
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:42'
}
GLProgramResources >> inputs [

	^ inputs
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/13/2020 15:45'
}
GLProgramResources >> materializeUniforms [

	uniforms := GL programInterfaceQueryImplementation getUniforms: program
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 14:57'
}
GLProgramResources >> outputs [

	self notYetImplemented
]

{
	#category : #printing,
	#timestamp : 'stlu 12/13/2020 15:48'
}
GLProgramResources >> printOn: aStream [

	super printOn: aStream
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:42'
}
GLProgramResources >> program [

	^ program
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:45'
}
GLProgramResources >> shaderStorageBlocks [

	self notYetImplemented
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:43'
}
GLProgramResources >> subroutineUniforms [

	self notYetImplemented
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:43'
}
GLProgramResources >> subroutines [

	self notYetImplemented
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:45'
}
GLProgramResources >> transformFeedbackBuffers [

	self notYetImplemented
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:44'
}
GLProgramResources >> transformFeedbackVaryings [

	self notYetImplemented
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:43'
}
GLProgramResources >> uniformBlocks [

	self notYetImplemented
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 15:26'
}
GLProgramResources >> uniformNamed: aString [

	^ uniforms at: aString
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 19:42'
}
GLProgramResources >> uniforms [

	^ uniforms
]
