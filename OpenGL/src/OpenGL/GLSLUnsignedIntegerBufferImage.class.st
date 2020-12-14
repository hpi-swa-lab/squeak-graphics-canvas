Class {
	#name : #GLSLUnsignedIntegerBufferImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerBufferImage class >> declarators [

	^ #('uimageBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerBufferImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerBufferImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerBufferImage class >> squeakName [

	^ 'UnsignedIntegerBufferImage'
]
