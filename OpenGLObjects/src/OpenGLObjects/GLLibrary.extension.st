Extension { #name : #GLLibrary }

{
	#category : #'*OpenGLObjects-implementations',
	#timestamp : 'stlu 3/17/2021 12:35'
}
GLLibrary >> initializeWrapperImplementations: implementations [

	self flag: #todo. "move into correct apis and versions"
	self flag: #todo. "rename away from 'wrapper'"
	implementations programInterfaceQuery: GLDirectProgramInterfaceQueryImp new.
	implementations uniformSetter: GLUniformDirectStateAccessImp new.
	implementations vertexArrayImp: GLVertexArrayDirectStateAccessImp new.
]

{
	#category : #'*OpenGLObjects-implementations',
	#timestamp : 'stlu 12/13/2020 15:38'
}
GLLibrary >> programInterfaceQueryImplementation [

	^ self wrapperImplementations programInterfaceQuery
]

{
	#category : #'*OpenGLObjects-implementations',
	#timestamp : 'stlu 12/13/2020 17:09'
}
GLLibrary >> uniformSetterImplementation [

	^ self wrapperImplementations uniformSetter
]

{
	#category : #'*OpenGLObjects-implementations',
	#timestamp : 'stlu 12/13/2020 15:38'
}
GLLibrary >> wrapperImplementations [

	^ context wrapperImplementations
]
