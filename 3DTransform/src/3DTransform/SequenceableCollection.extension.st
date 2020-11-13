Extension { #name : #SequenceableCollection }

{
	#category : #'*3DTransform',
	#timestamp : 'stlu 11/13/2020 18:20'
}
SequenceableCollection >> asVectorColor [
	
	^ VectorColor new copyFrom: self.
]
