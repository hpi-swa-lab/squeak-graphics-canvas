Class {
	#name : #GLTUnsignedInteger2DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger2DImage class >> declarators [

	^ #('uimage2D')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger2DImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger2DImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger2DImage class >> squeakName [

	^ 'UnsignedInteger2DImage'
]
