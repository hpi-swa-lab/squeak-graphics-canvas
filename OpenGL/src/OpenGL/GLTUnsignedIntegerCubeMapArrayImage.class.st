Class {
	#name : #GLTUnsignedIntegerCubeMapArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerCubeMapArrayImage class >> declarators [

	^ #('uimageCubeArray')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerCubeMapArrayImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerCubeMapArrayImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerCubeMapArrayImage class >> squeakName [

	^ 'UnsignedIntegerCubeMapArrayImage'
]
