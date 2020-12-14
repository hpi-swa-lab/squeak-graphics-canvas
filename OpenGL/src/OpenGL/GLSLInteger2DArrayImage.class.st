Class {
	#name : #GLSLInteger2DArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DArrayImage class >> declarators [

	^ #('iimage2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DArrayImage class >> enum [

	^ GL_INT_IMAGE_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DArrayImage class >> enumName [

	^ 'INT_IMAGE_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger2DArrayImage class >> squeakName [

	^ 'Integer2DArrayImage'
]
