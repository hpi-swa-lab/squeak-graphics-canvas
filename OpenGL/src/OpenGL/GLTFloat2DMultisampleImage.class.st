Class {
	#name : #GLTFloat2DMultisampleImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DMultisampleImage class >> declarators [

	^ #('image2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DMultisampleImage class >> enum [

	^ GL_IMAGE_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DMultisampleImage class >> enumName [

	^ 'IMAGE_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DMultisampleImage class >> squeakName [

	^ 'Float2DMultisampleImage'
]
