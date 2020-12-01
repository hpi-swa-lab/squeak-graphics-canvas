Class {
	#name : #GLTIntegerBufferImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerBufferImage class >> declarators [

	^ #('iimageBuffer')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerBufferImage class >> enum [

	^ GL_INT_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerBufferImage class >> enumName [

	^ 'INT_IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerBufferImage class >> squeakName [

	^ 'IntegerBufferImage'
]
