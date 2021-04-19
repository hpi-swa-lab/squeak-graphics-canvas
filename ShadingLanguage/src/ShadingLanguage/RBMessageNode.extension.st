Extension { #name : #RBMessageNode }

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'stlu 12/2/2020 02:53'
}
RBMessageNode >> mapping [

	^ self propertyAt: #mapping
]

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'stlu 12/2/2020 02:54'
}
RBMessageNode >> mapping: aMapping [

	^ self propertyAt: #mapping put: aMapping
]
