Class {
	#name : #GLTUnsignedInteger1DArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger1DArrayImage class >> declarators [

	^ #('uimage1DArray')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger1DArrayImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger1DArrayImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger1DArrayImage class >> squeakName [

	^ 'UnsignedInteger1DArrayImage'
]
