Class {
	#name : #GLTFloat1DArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat1DArrayImage class >> declarators [

	^ #('image1DArray')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat1DArrayImage class >> enum [

	^ GL_IMAGE_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat1DArrayImage class >> enumName [

	^ 'IMAGE_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat1DArrayImage class >> squeakName [

	^ 'Float1DArrayImage'
]
