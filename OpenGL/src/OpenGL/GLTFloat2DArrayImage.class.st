Class {
	#name : #GLTFloat2DArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DArrayImage class >> declarators [

	^ #('image2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DArrayImage class >> enum [

	^ GL_IMAGE_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DArrayImage class >> enumName [

	^ 'IMAGE_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DArrayImage class >> squeakName [

	^ 'Float2DArrayImage'
]
