Class {
	#name : #GLTInteger1DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger1DImage class >> declarators [

	^ #('iimage1D')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger1DImage class >> enum [

	^ GL_INT_IMAGE_1D
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger1DImage class >> enumName [

	^ 'INT_IMAGE_1D'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger1DImage class >> squeakName [

	^ 'Integer1DImage'
]
