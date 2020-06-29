usage
buildFor: gl
	"call instance creation of gl programm class with recipe"
	^self programClass
		newFor: gl
		shaders: (OrderedCollection
				with: (VertexShader code: self vertexShader)
				with: (FragmentShader code: self fragmentShader))