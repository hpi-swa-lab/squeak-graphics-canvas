Class {
	#name : #GLTFloatCubeImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatCubeImage class >> declarators [

	^ #('imageCube')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatCubeImage class >> enum [

	^ GL_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatCubeImage class >> enumName [

	^ 'IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatCubeImage class >> squeakName [

	^ 'FloatCubeImage'
]
