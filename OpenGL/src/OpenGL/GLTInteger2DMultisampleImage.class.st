Class {
	#name : #GLTInteger2DMultisampleImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTInteger2DMultisampleImage class >> declarators [

	^ #('iimage2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTInteger2DMultisampleImage class >> enum [

	^ GL_INT_IMAGE_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTInteger2DMultisampleImage class >> enumName [

	^ 'INT_IMAGE_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTInteger2DMultisampleImage class >> squeakName [

	^ 'Integer2DMultisampleImage'
]
