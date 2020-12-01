Extension { #name : #RBProgramNode }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 13:56'
}
RBProgramNode >> type [
	^ self propertyAt: #type
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 13:57'
}
RBProgramNode >> type: aGLSLType [
	^ self propertyAt: #type put: aGLSLType
]
