Extension { #name : #Float32Array }

{
	#category : #'*OpenGL',
	#timestamp : ''
}
Float32Array >> putAtUniform: location [

	self size caseOf: {
		[2] -> [GL uniform2f: location with: self first with: self second].
		[3] -> [GL uniform3f: location with: self first with: self second with: self third].
		[4] -> [GL uniform4f: location with: self first with: self second with: self third with: self fourth]
	}
]
