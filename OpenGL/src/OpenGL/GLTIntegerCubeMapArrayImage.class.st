Class {
	#name : #GLTIntegerCubeMapArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerCubeMapArrayImage class >> declarators [

	^ #('iimageCubeArray')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerCubeMapArrayImage class >> enum [

	^ GL_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerCubeMapArrayImage class >> enumName [

	^ 'INT_IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerCubeMapArrayImage class >> squeakName [

	^ 'IntegerCubeMapArrayImage'
]
