Class {
	#name : #GLTFloatCubeMapArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatCubeMapArrayImage class >> declarators [

	^ #('imageCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatCubeMapArrayImage class >> enum [

	^ GL_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatCubeMapArrayImage class >> enumName [

	^ 'IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatCubeMapArrayImage class >> squeakName [

	^ 'FloatCubeMapArrayImage'
]
