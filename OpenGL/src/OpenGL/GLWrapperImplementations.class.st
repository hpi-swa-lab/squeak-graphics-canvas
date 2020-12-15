Class {
	#name : #GLWrapperImplementations,
	#superclass : #Object,
	#instVars : [
		'programInterfaceQuery',
		'uniformSetter'
	],
	#category : #'OpenGL-Context',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/13/2020 15:33'
}
GLWrapperImplementations class >> forLibrary: glLibrary [

	| inst |
	inst := self new.
	glLibrary initializeWrapperImplementations: inst.
	^ inst
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 14:59'
}
GLWrapperImplementations >> programInterfaceQuery [

	^ programInterfaceQuery
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 14:59'
}
GLWrapperImplementations >> programInterfaceQuery: anObject [

	programInterfaceQuery := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 17:10'
}
GLWrapperImplementations >> uniformSetter [

	^ uniformSetter
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/13/2020 17:10'
}
GLWrapperImplementations >> uniformSetter: anObject [

	uniformSetter := anObject
]
