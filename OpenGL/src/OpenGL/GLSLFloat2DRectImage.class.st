Class {
	#name : #GLSLFloat2DRectImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DRectImage class >> declarators [

	^ #('image2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DRectImage class >> enum [

	^ GL_IMAGE_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DRectImage class >> enumName [

	^ 'IMAGE_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DRectImage class >> squeakName [

	^ 'Float2DRectImage'
]
