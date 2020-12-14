Class {
	#name : #GLSLInteger1DArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger1DArrayImage class >> declarators [

	^ #('iimage1DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger1DArrayImage class >> enum [

	^ GL_INT_IMAGE_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger1DArrayImage class >> enumName [

	^ 'INT_IMAGE_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger1DArrayImage class >> squeakName [

	^ 'Integer1DArrayImage'
]
