Class {
	#name : #GLTUnsignedIntegerBufferImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerBufferImage class >> declarators [

	^ #('uimageBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerBufferImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerBufferImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTUnsignedIntegerBufferImage class >> squeakName [

	^ 'UnsignedIntegerBufferImage'
]
