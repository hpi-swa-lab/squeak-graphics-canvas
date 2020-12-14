Class {
	#name : #GLSLUnsignedIntegerCubeImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerCubeImage class >> declarators [

	^ #('uimageCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerCubeImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerCubeImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedIntegerCubeImage class >> squeakName [

	^ 'UnsignedIntegerCubeImage'
]
