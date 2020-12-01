Class {
	#name : #GLTUnsignedInteger2DMultisampleImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DMultisampleImage class >> declarators [

	^ #('uimage2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DMultisampleImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DMultisampleImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DMultisampleImage class >> squeakName [

	^ 'UnsignedInteger2DMultisampleImage'
]
