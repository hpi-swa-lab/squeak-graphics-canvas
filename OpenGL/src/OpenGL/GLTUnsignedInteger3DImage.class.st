Class {
	#name : #GLTUnsignedInteger3DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger3DImage class >> declarators [

	^ #('uimage3D')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger3DImage class >> enum [

	^ GL_UNSIGNED_INT_IMAGE_3D
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger3DImage class >> enumName [

	^ 'UNSIGNED_INT_IMAGE_3D'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedInteger3DImage class >> squeakName [

	^ 'UnsignedInteger3DImage'
]
