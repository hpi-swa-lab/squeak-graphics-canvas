Class {
	#name : #GLSLInteger2DMultisampleImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DMultisampleImage class >> declarators [

	^ #('iimage2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DMultisampleImage class >> enum [

	^ GL_INT_IMAGE_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DMultisampleImage class >> enumName [

	^ 'INT_IMAGE_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DMultisampleImage class >> squeakName [

	^ 'Integer2DMultisampleImage'
]
