Class {
	#name : #GLSLFloatCubeImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatCubeImage class >> declarators [

	^ #('imageCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatCubeImage class >> enum [

	^ GL_IMAGE_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatCubeImage class >> enumName [

	^ 'IMAGE_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLFloatCubeImage class >> squeakName [

	^ 'FloatCubeImage'
]
