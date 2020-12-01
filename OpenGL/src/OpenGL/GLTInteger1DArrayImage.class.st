Class {
	#name : #GLTInteger1DArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger1DArrayImage class >> declarators [

	^ #('iimage1DArray')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger1DArrayImage class >> enum [

	^ GL_INT_IMAGE_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger1DArrayImage class >> enumName [

	^ 'INT_IMAGE_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger1DArrayImage class >> squeakName [

	^ 'Integer1DArrayImage'
]
