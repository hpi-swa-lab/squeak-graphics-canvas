Class {
	#name : #GLSLInteger2DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DImage class >> declarators [

	^ #('iimage2D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DImage class >> enum [

	^ GL_INT_IMAGE_2D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DImage class >> enumName [

	^ 'INT_IMAGE_2D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DImage class >> squeakName [

	^ 'Integer2DImage'
]
