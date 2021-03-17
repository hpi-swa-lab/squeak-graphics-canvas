Class {
	#name : #GLObjectImps,
	#superclass : #Object,
	#instVars : [
		'programInterfaceQuery',
		'uniformSetter',
		'vertexArrayImp'
	],
	#category : #'OpenGL-Core',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 3/17/2021 23:04'
}
GLObjectImps class >> current [

	^ GL context objectImps
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/13/2020 15:33'
}
GLObjectImps class >> forLibrary: glLibrary [

	| inst |
	inst := self new.
	glLibrary initializeWrapperImplementations: inst.
	^ inst
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 14:59'
}
GLObjectImps >> programInterfaceQuery [

	^ programInterfaceQuery
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 14:59'
}
GLObjectImps >> programInterfaceQuery: anObject [

	programInterfaceQuery := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 17:10'
}
GLObjectImps >> uniformSetter [

	^ uniformSetter
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 17:10'
}
GLObjectImps >> uniformSetter: anObject [

	uniformSetter := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/17/2021 12:34'
}
GLObjectImps >> vertexArrayImp [

	^ vertexArrayImp
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/17/2021 12:34'
}
GLObjectImps >> vertexArrayImp: anObject [

	vertexArrayImp := anObject
]
