Class {
	#name : #GLTUnsignedIntegerCubeMapArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerCubeMapArrayImage class >> declarators [

	^ #('uimageCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerCubeMapArrayImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerCubeMapArrayImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerCubeMapArrayImage class >> squeakName [

	^ 'UnsignedIntegerCubeMapArrayImage'
]
