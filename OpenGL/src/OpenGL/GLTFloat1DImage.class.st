Class {
	#name : #GLTFloat1DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat1DImage class >> declarators [

	^ #('image1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat1DImage class >> enum [

	^ GL_IMAGE_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat1DImage class >> enumName [

	^ 'IMAGE_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat1DImage class >> squeakName [

	^ 'Float1DImage'
]
