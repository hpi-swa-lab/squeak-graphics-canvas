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
	#timestamp : 'stlu 12/16/2020 18:57'
}
GLProgramInput class >> interfaceEnum [

	^ GL_PROGRAM_INPUT
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/14/2020 16:17'
}
GLProgramInput >> initializeProperties: aWordArray [

	location := aWordArray second.
	type := GLSLType numElements: aWordArray fourth enum: aWordArray third
]

{
	#category : #testing,
	#timestamp : 'stlu 12/16/2020 18:46'
}
GLProgramInput >> isInput [

	^ true
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 18:46'
}
GLProgramInput >> location [

	^ location
]

{
	#category : #printing,
	#timestamp : 'stlu 12/16/2020 18:25'
}
GLProgramInput >> printOn: aStream [

	aStream
		print: location;
		nextPutAll: ': uniform ';
		nextPutAll: type declarator;
		space;
		nextPutAll: name
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 18:46'
}
GLProgramInput >> type [

	^ type
]
