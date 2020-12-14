Class {
	#name : #GLSLFloatBufferImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatBufferImage class >> declarators [

	^ #('imageBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatBufferImage class >> enum [

	^ GL_IMAGE_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatBufferImage class >> enumName [

	^ 'IMAGE_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatBufferImage class >> squeakName [

	^ 'FloatBufferImage'
]
