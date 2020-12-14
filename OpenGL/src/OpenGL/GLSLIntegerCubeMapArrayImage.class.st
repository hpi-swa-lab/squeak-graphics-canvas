Class {
	#name : #GLSLIntegerCubeMapArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerCubeMapArrayImage class >> declarators [

	^ #('iimageCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerCubeMapArrayImage class >> enum [

	^ GL_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerCubeMapArrayImage class >> enumName [

	^ 'INT_IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerCubeMapArrayImage class >> squeakName [

	^ 'IntegerCubeMapArrayImage'
]
