Class {
	#name : #GLTIntegerCubeImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerCubeImage class >> declarators [

	^ #('iimageCube')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerCubeImage class >> enum [

	^ GL_INT_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerCubeImage class >> enumName [

	^ 'INT_IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerCubeImage class >> squeakName [

	^ 'IntegerCubeImage'
]
