Class {
	#name : #GLSLFloat2DArrayImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DArrayImage class >> declarators [

	^ #('image2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DArrayImage class >> enum [

	^ GL_IMAGE_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DArrayImage class >> enumName [

	^ 'IMAGE_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DArrayImage class >> squeakName [

	^ 'Float2DArrayImage'
]
