Class {
	#name : #GLTFloat2DMultisampleImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat2DMultisampleImage class >> declarators [

	^ #('image2DMS')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat2DMultisampleImage class >> enum [

	^ GL_IMAGE_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat2DMultisampleImage class >> enumName [

	^ 'IMAGE_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat2DMultisampleImage class >> squeakName [

	^ 'Float2DMultisampleImage'
]
