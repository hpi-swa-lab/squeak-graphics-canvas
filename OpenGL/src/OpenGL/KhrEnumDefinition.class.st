Class {
	#name : #KhrEnumDefinition,
	#superclass : #KhrDefinition,
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 12:17'
}
KhrEnumDefinition >> acceptVisitor: aVisitor [

	^ aVisitor visitEnumDefinition: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/22/2021 12:23'
}
KhrEnumDefinition >> targets: registry [

	^ registry enums
]
