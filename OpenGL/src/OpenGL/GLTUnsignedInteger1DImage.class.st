Class {
	#name : #GLTUnsignedInteger1DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger1DImage class >> declarators [

	^ #('uimage1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger1DImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger1DImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger1DImage class >> squeakName [

	^ 'UnsignedInteger1DImage'
]
