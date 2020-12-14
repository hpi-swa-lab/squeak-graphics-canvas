Class {
	#name : #GLSLInteger3DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger3DImage class >> declarators [

	^ #('iimage3D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger3DImage class >> enum [

	^ GL_INT_IMAGE_3D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger3DImage class >> enumName [

	^ 'INT_IMAGE_3D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLInteger3DImage class >> squeakName [

	^ 'Integer3DImage'
]
