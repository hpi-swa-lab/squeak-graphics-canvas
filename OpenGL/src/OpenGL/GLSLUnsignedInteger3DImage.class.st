Class {
	#name : #GLSLUnsignedInteger3DImage,
	#superclass : #GLSLImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger3DImage class >> declarators [

	^ #('uimage3D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger3DImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_3D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger3DImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_3D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:44'
}
GLSLUnsignedInteger3DImage class >> squeakName [

	^ 'UnsignedInteger3DImage'
]
