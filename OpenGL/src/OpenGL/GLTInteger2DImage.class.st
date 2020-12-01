Class {
	#name : #GLTInteger2DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DImage class >> declarators [

	^ #('iimage2D')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DImage class >> enum [

	^ GL_INT_IMAGE_2D
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DImage class >> enumName [

	^ 'INT_IMAGE_2D'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger2DImage class >> squeakName [

	^ 'Integer2DImage'
]
