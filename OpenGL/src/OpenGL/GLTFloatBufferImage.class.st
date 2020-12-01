Class {
	#name : #GLTFloatBufferImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatBufferImage class >> declarators [

	^ #('imageBuffer')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatBufferImage class >> enum [

	^ GL_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatBufferImage class >> enumName [

	^ 'IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatBufferImage class >> squeakName [

	^ 'FloatBufferImage'
]
