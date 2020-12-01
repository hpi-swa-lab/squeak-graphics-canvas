Class {
	#name : #GLTInteger2DArrayImage,
	#superclass : #GLTImage,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTInteger2DArrayImage class >> declarators [

	^ #('iimage2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTInteger2DArrayImage class >> enum [

	^ GL_INT_IMAGE_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTInteger2DArrayImage class >> enumName [

	^ 'INT_IMAGE_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:48'
}
GLTInteger2DArrayImage class >> squeakName [

	^ 'Integer2DArrayImage'
]
