Class {
	#name : #GLTFloat2DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DImage class >> declarators [

	^ #('image2D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DImage class >> enum [

	^ GL_IMAGE_2D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DImage class >> enumName [

	^ 'IMAGE_2D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DImage class >> squeakName [

	^ 'Float2DImage'
]
