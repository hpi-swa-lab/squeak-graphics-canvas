Class {
	#name : #GLTFloatCubeMapArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatCubeMapArrayImage class >> declarators [

	^ #('imageCubeArray')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatCubeMapArrayImage class >> enum [

	^ GL_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatCubeMapArrayImage class >> enumName [

	^ 'IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatCubeMapArrayImage class >> squeakName [

	^ 'FloatCubeMapArrayImage'
]
