Class {
	#name : #KhrCommandDefinition,
	#superclass : #KhrDefinition,
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 12:16'
}
KhrCommandDefinition >> acceptVisitor: aVisitor [

	^ aVisitor visitCommandDefinition: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/22/2021 12:23'
}
KhrCommandDefinition >> targets: registry [

	^ registry commands
]
