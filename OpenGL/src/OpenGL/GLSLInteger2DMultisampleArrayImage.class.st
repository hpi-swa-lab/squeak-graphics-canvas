Class {
	#name : #GLSLInteger2DMultisampleArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DMultisampleArrayImage class >> declarators [

	^ #('iimage2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DMultisampleArrayImage class >> enum [

	^ GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DMultisampleArrayImage class >> enumName [

	^ 'INT_IMAGE_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DMultisampleArrayImage class >> squeakName [

	^ 'Integer2DMultisampleArrayImage'
]
