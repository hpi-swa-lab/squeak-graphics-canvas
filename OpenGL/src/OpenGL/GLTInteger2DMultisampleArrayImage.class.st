Class {
	#name : #GLTInteger2DMultisampleArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DMultisampleArrayImage class >> declarators [

	^ #('iimage2DMSArray')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DMultisampleArrayImage class >> enum [

	^ GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DMultisampleArrayImage class >> enumName [

	^ 'INT_IMAGE_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DMultisampleArrayImage class >> squeakName [

	^ 'Integer2DMultisampleArrayImage'
]
