Class {
	#name : #GLSLFloat3DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat3DImage class >> declarators [

	^ #('image3D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat3DImage class >> enum [

	^ GL_IMAGE_3D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat3DImage class >> enumName [

	^ 'IMAGE_3D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloat3DImage class >> squeakName [

	^ 'Float3DImage'
]
