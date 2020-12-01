Class {
	#name : #GLTFloat2DMultisampleArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DMultisampleArrayImage class >> declarators [

	^ #('image2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DMultisampleArrayImage class >> enum [

	^ GL_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DMultisampleArrayImage class >> enumName [

	^ 'IMAGE_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat2DMultisampleArrayImage class >> squeakName [

	^ 'Float2DMultisampleArrayImage'
]
