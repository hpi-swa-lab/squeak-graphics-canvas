Class {
	#name : #GLTFloat2DRectImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DRectImage class >> declarators [

	^ #('image2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DRectImage class >> enum [

	^ GL_IMAGE_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DRectImage class >> enumName [

	^ 'IMAGE_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DRectImage class >> squeakName [

	^ 'Float2DRectImage'
]
