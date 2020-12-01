Class {
	#name : #GLTIntegerCubeImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerCubeImage class >> declarators [

	^ #('iimageCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerCubeImage class >> enum [

	^ GL_INT_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerCubeImage class >> enumName [

	^ 'INT_IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerCubeImage class >> squeakName [

	^ 'IntegerCubeImage'
]
