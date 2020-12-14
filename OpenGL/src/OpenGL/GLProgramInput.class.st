Class {
	#name : #GLProgramInput,
	#superclass : #GLProgramResource,
	#instVars : [
		'location',
		'type'
	],
	#category : #'OpenGL-Wrappers-Programs',
	#commentStamp : ''
}

{
	#category : #querying,
	#timestamp : 'stlu 12/13/2020 16:08'
}
GLProgramInput class >> getPropertiesToQuery [

	^ {
		GL_NAME_LENGTH .
		GL_LOCATION .
		GL_TYPE .
		GL_ARRAY_SIZE .
	}
]

{
	#category : #querying,
	#timestamp : 'stlu 12/13/2020 14:27'
}
GLProgramInput class >> interface [

	^ GL_PROGRAM_INPUT
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/13/2020 15:52'
}
GLProgramInput >> initializeProperties: aWordArray [

	location := aWordArray second.
	type := GLType enum: aWordArray third size: aWordArray fourth
]
