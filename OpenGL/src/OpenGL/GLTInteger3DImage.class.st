Class {
	#name : #GLTInteger3DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger3DImage class >> declarators [

	^ #('iimage3D')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger3DImage class >> enum [

	^ GL_INT_IMAGE_3D
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger3DImage class >> enumName [

	^ 'INT_IMAGE_3D'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTInteger3DImage class >> squeakName [

	^ 'Integer3DImage'
]
