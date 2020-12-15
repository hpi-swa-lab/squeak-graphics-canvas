Class {
	#name : #GLTexture,
	#superclass : #GLObject,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:54'
}
GLTexture class >> allocate: n in: anIntegerArray [

	GL genTextures: n with: anIntegerArray
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 19:37'
}
GLTexture class >> bindID: id to: target [

	GL bindTexture: target with: id
]

{
	#category : #testing,
	#timestamp : 'stlu 12/14/2020 12:13'
}
GLTexture >> isAllocated [

	^ GL isTexture: id
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:16'
}
GLTexture >> isTexture [

	^ true
]
