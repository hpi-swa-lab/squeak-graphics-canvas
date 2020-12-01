Class {
	#name : #GLTUnsignedIntegerCubeImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerCubeImage class >> declarators [

	^ #('uimageCube')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerCubeImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerCubeImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerCubeImage class >> squeakName [

	^ 'UnsignedIntegerCubeImage'
]
