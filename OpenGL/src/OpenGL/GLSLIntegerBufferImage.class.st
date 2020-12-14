Class {
	#name : #GLSLIntegerBufferImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerBufferImage class >> declarators [

	^ #('iimageBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerBufferImage class >> enum [

	^ GL_INT_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerBufferImage class >> enumName [

	^ 'INT_IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerBufferImage class >> squeakName [

	^ 'IntegerBufferImage'
]
