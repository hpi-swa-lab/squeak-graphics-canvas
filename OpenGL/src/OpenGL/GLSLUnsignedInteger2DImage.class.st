Class {
	#name : #GLSLUnsignedInteger2DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DImage class >> declarators [

	^ #('uimage2D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DImage class >> squeakName [

	^ 'UnsignedInteger2DImage'
]
