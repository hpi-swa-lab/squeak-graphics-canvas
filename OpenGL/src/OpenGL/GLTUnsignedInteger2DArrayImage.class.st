Class {
	#name : #GLTUnsignedInteger2DArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DArrayImage class >> declarators [

	^ #('uimage2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DArrayImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DArrayImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedInteger2DArrayImage class >> squeakName [

	^ 'UnsignedInteger2DArrayImage'
]
