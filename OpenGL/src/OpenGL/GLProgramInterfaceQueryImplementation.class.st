Class {
	#name : #GLProgramInterfaceQueryImplementation,
	#superclass : #Object,
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-Wrappers-Programs',
	#commentStamp : ''
}

{
	#category : #inputs,
	#timestamp : 'stlu 12/14/2020 13:04'
}
GLProgramInterfaceQueryImplementation >> getInputs: aProgram [

	self subclassResponsibility
]

{
	#category : #uniforms,
	#timestamp : 'stlu 12/14/2020 13:04'
}
GLProgramInterfaceQueryImplementation >> getUniforms: aProgram [

	self subclassResponsibility
]
