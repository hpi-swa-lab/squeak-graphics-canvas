Class {
	#name : #GLTUnsignedInteger2DRectImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DRectImage class >> declarators [

	^ #('uimage2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DRectImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DRectImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DRectImage class >> squeakName [

	^ 'UnsignedInteger2DRectImage'
]
