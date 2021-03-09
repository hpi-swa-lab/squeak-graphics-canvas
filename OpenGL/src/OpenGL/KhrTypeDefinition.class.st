Class {
	#name : #KhrTypeDefinition,
	#superclass : #KhrDefinition,
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'stlu 2/22/2021 12:17'
}
KhrTypeDefinition >> acceptVisitor: aVisitor [

	^ aVisitor visitTypeDefinition: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/22/2021 12:24'
}
KhrTypeDefinition >> targets: registry [

	^ registry types
]
