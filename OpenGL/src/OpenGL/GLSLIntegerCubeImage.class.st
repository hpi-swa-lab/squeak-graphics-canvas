Class {
	#name : #GLSLIntegerCubeImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerCubeImage class >> declarators [

	^ #('iimageCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerCubeImage class >> enum [

	^ GL_INT_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerCubeImage class >> enumName [

	^ 'INT_IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLIntegerCubeImage class >> squeakName [

	^ 'IntegerCubeImage'
]
