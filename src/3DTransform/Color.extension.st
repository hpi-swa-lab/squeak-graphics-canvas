Extension { #name : #Color }

{ #category : #'*3DTransform' }
Color >> asVectorColor [
	"Convert the receiver into a color"
	^VectorColor new loadFrom: self
]
