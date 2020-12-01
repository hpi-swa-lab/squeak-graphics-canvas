Extension { #name : #Color }

{
	#category : #'*3DTransform',
	#timestamp : ''
}
Color >> asVectorColor [
	"Convert the receiver into a color"
	^VectorColor new loadFrom: self
]
