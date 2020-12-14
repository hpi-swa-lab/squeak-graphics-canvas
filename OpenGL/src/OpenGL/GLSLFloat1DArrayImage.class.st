Class {
	#name : #GLSLFloat1DArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat1DArrayImage class >> declarators [

	^ #('image1DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat1DArrayImage class >> enum [

	^ GL_IMAGE_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat1DArrayImage class >> enumName [

	^ 'IMAGE_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat1DArrayImage class >> squeakName [

	^ 'Float1DArrayImage'
]
