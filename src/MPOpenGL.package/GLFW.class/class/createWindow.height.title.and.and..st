primitive
createWindow: anInteger height: anInteger2 title: aString and: anUndefinedObject and: anUndefinedObject5 
	<apicall: void* 'glfwCreateWindow' (long long char* void* void*) module: 'libglfw'>
	^self externalCallFailed