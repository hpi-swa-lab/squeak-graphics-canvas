Class {
	#name : #GLSLUnsignedIntegerCubeMapArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerCubeMapArrayImage class >> declarators [

	^ #('uimageCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerCubeMapArrayImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerCubeMapArrayImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerCubeMapArrayImage class >> squeakName [

	^ 'UnsignedIntegerCubeMapArrayImage'
]
