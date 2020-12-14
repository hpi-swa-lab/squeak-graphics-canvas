Class {
	#name : #GLSLInteger2DRectImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DRectImage class >> declarators [

	^ #('iimage2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DRectImage class >> enum [

	^ GL_INT_IMAGE_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DRectImage class >> enumName [

	^ 'INT_IMAGE_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DRectImage class >> squeakName [

	^ 'Integer2DRectImage'
]
