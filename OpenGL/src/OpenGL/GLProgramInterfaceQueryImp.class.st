Class {
	#name : #GLProgramInterfaceQueryImp,
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
GLProgramInterfaceQueryImp >> getInputs: aProgram [

	self subclassResponsibility
]

{
	#category : #uniforms,
	#timestamp : 'stlu 12/14/2020 13:04'
}
GLProgramInterfaceQueryImp >> getUniforms: aProgram [

	self subclassResponsibility
]