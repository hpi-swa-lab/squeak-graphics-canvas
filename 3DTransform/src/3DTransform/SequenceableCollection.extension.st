Extension { #name : #SequenceableCollection }

{
	#category : #'*3DTransform',
	#timestamp : ''
}
SequenceableCollection >> asVectorColor [
	
	^ VectorColor new copyFrom: self.
]
