Class {
	#name : #GLSLUnsignedInteger2DArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DArrayImage class >> declarators [

	^ #('uimage2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DArrayImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DArrayImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DArrayImage class >> squeakName [

	^ 'UnsignedInteger2DArrayImage'
]
