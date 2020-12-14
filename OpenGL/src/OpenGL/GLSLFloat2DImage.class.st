Class {
	#name : #GLSLFloat2DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DImage class >> declarators [

	^ #('image2D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DImage class >> enum [

	^ GL_IMAGE_2D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DImage class >> enumName [

	^ 'IMAGE_2D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat2DImage class >> squeakName [

	^ 'Float2DImage'
]
