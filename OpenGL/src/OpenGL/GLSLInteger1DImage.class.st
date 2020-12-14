Class {
	#name : #GLSLInteger1DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger1DImage class >> declarators [

	^ #('iimage1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger1DImage class >> enum [

	^ GL_INT_IMAGE_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger1DImage class >> enumName [

	^ 'INT_IMAGE_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger1DImage class >> squeakName [

	^ 'Integer1DImage'
]
