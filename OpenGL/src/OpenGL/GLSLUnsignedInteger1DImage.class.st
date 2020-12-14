Class {
	#name : #GLSLUnsignedInteger1DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger1DImage class >> declarators [

	^ #('uimage1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger1DImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger1DImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger1DImage class >> squeakName [

	^ 'UnsignedInteger1DImage'
]
