Extension { #name : #GLLibrary }

{
	#category : #'*OpenGLObjects-implementations',
	#timestamp : 'stlu 3/15/2021 16:13'
}
GLLibrary >> initializeWrapperImplementations: implementations [

	self flag: #todo. "move into correct apis and versions"
	self flag: #todo. "rename away from 'wrapper'"
	implementations programInterfaceQuery: GLDirectProgramInterfaceQueryImp new.
	implementations uniformSetter: GLUniformDirectStateAccessImp new
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
