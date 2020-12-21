Extension { #name : #RBProgramNode }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/21/2020 13:15'
}
RBProgramNode >> type [
	^ self propertyAt: #type ifAbsent: [nil]
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 13:57'
}
RBProgramNode >> type: aGLSLType [
	^ self propertyAt: #type put: aGLSLType
]
