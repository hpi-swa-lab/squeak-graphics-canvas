Class {
	#name : #GLTFloat2DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat2DImage class >> declarators [

	^ #('image2D')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat2DImage class >> enum [

	^ GL_IMAGE_2D
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat2DImage class >> enumName [

	^ 'IMAGE_2D'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat2DImage class >> squeakName [

	^ 'Float2DImage'
]
