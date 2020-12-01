Class {
	#name : #GLTInteger2DRectImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DRectImage class >> declarators [

	^ #('iimage2DRect')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DRectImage class >> enum [

	^ GL_INT_IMAGE_2D_RECT
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DRectImage class >> enumName [

	^ 'INT_IMAGE_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DRectImage class >> squeakName [

	^ 'Integer2DRectImage'
]
