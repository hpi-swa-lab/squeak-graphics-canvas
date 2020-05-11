primitive
setInputMode: anExternalData with: anInteger with: anInteger2 
	<apicall: void* 'glfwSetInputMode' (void* long long) module: 'libglfw'>
	^self externalCallFailed