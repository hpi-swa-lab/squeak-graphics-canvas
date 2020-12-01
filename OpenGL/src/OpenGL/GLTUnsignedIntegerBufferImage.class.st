Class {
	#name : #GLTUnsignedIntegerBufferImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerBufferImage class >> declarators [

	^ #('uimageBuffer')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerBufferImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerBufferImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerBufferImage class >> squeakName [

	^ 'UnsignedIntegerBufferImage'
]
