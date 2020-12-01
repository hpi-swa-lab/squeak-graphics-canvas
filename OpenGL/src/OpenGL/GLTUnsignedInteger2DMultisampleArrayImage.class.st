Class {
	#name : #GLTUnsignedInteger2DMultisampleArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger2DMultisampleArrayImage class >> declarators [

	^ #('uimage2DMSArray')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger2DMultisampleArrayImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger2DMultisampleArrayImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger2DMultisampleArrayImage class >> squeakName [

	^ 'UnsignedInteger2DMultisampleArrayImage'
]
