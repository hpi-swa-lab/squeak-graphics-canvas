Class {
	#name : #GLSLUnsignedInteger2DRectImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DRectImage class >> declarators [

	^ #('uimage2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DRectImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DRectImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DRectImage class >> squeakName [

	^ 'UnsignedInteger2DRectImage'
]
