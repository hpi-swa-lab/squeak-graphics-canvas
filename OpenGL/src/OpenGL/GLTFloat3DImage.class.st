Class {
	#name : #GLTFloat3DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat3DImage class >> declarators [

	^ #('image3D')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat3DImage class >> enum [

	^ GL_IMAGE_3D
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat3DImage class >> enumName [

	^ 'IMAGE_3D'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloat3DImage class >> squeakName [

	^ 'Float3DImage'
]
