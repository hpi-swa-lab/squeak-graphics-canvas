Class {
	#name : #GLSLFloat1DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat1DImage class >> declarators [

	^ #('image1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat1DImage class >> enum [

	^ GL_IMAGE_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat1DImage class >> enumName [

	^ 'IMAGE_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat1DImage class >> squeakName [

	^ 'Float1DImage'
]
