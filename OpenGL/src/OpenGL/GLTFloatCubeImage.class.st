Class {
	#name : #GLTFloatCubeImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatCubeImage class >> declarators [

	^ #('imageCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatCubeImage class >> enum [

	^ GL_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatCubeImage class >> enumName [

	^ 'IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatCubeImage class >> squeakName [

	^ 'FloatCubeImage'
]
