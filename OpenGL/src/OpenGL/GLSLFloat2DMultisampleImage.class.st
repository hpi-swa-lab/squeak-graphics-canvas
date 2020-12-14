Class {
	#name : #GLSLFloat2DMultisampleImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DMultisampleImage class >> declarators [

	^ #('image2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DMultisampleImage class >> enum [

	^ GL_IMAGE_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DMultisampleImage class >> enumName [

	^ 'IMAGE_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DMultisampleImage class >> squeakName [

	^ 'Float2DMultisampleImage'
]
