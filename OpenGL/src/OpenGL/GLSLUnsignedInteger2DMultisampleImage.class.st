Class {
	#name : #GLSLUnsignedInteger2DMultisampleImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DMultisampleImage class >> declarators [

	^ #('uimage2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DMultisampleImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DMultisampleImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DMultisampleImage class >> squeakName [

	^ 'UnsignedInteger2DMultisampleImage'
]
