Class {
	#name : #GLTIntegerBufferImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerBufferImage class >> declarators [

	^ #('iimageBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerBufferImage class >> enum [

	^ GL_INT_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerBufferImage class >> enumName [

	^ 'INT_IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTIntegerBufferImage class >> squeakName [

	^ 'IntegerBufferImage'
]
