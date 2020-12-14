Extension { #name : #GLLibrary }

{
	#category : #'*OpenGL-Wrappers-implementations',
	#timestamp : 'stlu 12/14/2020 14:06'
}
GLLibrary >> initializeWrapperImplementations: implementations [

	self flag: #todo. "move into correct apis and versions"
	implementations programInterfaceQuery: GLDirectProgramInterfaceQueryImp new.
	implementations uniformSetter: GLUniformDirectStateAccessImp new
]

{
	#category : #'*OpenGL-Wrappers-implementations',
	#timestamp : 'stlu 12/13/2020 15:38'
}
GLLibrary >> programInterfaceQueryImplementation [

	^ self wrapperImplementations programInterfaceQuery
]

{
	#category : #'*OpenGL-Wrappers-implementations',
	#timestamp : 'stlu 12/13/2020 17:09'
}
GLLibrary >> uniformSetterImplementation [

	^ self wrapperImplementations uniformSetter
]

{
	#category : #'*OpenGL-Wrappers-implementations',
	#timestamp : 'stlu 12/13/2020 15:38'
}
GLLibrary >> wrapperImplementations [

	^ context wrapperImplementations
]
