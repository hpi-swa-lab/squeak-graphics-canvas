Class {
	#name : #GLTFloatBufferImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatBufferImage class >> declarators [

	^ #('imageBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatBufferImage class >> enum [

	^ GL_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatBufferImage class >> enumName [

	^ 'IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloatBufferImage class >> squeakName [

	^ 'FloatBufferImage'
]
