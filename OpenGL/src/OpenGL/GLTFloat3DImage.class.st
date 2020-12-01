Class {
	#name : #GLTFloat3DImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat3DImage class >> declarators [

	^ #('image3D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat3DImage class >> enum [

	^ GL_IMAGE_3D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat3DImage class >> enumName [

	^ 'IMAGE_3D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTFloat3DImage class >> squeakName [

	^ 'Float3DImage'
]
