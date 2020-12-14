Class {
	#name : #GLSLUnsignedInteger2DMultisampleArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DMultisampleArrayImage class >> declarators [

	^ #('uimage2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DMultisampleArrayImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DMultisampleArrayImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger2DMultisampleArrayImage class >> squeakName [

	^ 'UnsignedInteger2DMultisampleArrayImage'
]
