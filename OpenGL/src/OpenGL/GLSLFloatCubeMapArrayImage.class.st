Class {
	#name : #GLSLFloatCubeMapArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatCubeMapArrayImage class >> declarators [

	^ #('imageCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatCubeMapArrayImage class >> enum [

	^ GL_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatCubeMapArrayImage class >> enumName [

	^ 'IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatCubeMapArrayImage class >> squeakName [

	^ 'FloatCubeMapArrayImage'
]
