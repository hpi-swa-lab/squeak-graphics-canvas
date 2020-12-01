Class {
	#name : #GLTIntegerCubeMapArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerCubeMapArrayImage class >> declarators [

	^ #('iimageCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerCubeMapArrayImage class >> enum [

	^ GL_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerCubeMapArrayImage class >> enumName [

	^ 'INT_IMAGE_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerCubeMapArrayImage class >> squeakName [

	^ 'IntegerCubeMapArrayImage'
]
