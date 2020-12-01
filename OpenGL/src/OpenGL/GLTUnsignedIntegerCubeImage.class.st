Class {
	#name : #GLTUnsignedIntegerCubeImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerCubeImage class >> declarators [

	^ #('uimageCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerCubeImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerCubeImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerCubeImage class >> squeakName [

	^ 'UnsignedIntegerCubeImage'
]
