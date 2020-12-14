Class {
	#name : #GLSLFloat2DMultisampleArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DMultisampleArrayImage class >> declarators [

	^ #('image2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DMultisampleArrayImage class >> enum [

	^ GL_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DMultisampleArrayImage class >> enumName [

	^ 'IMAGE_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DMultisampleArrayImage class >> squeakName [

	^ 'Float2DMultisampleArrayImage'
]
