Extension { #name : #SequenceableCollection }

{ #category : #'*3DTransform' }
SequenceableCollection >> asVectorColor [
	
	^ VectorColor new copyFrom: self.
]
