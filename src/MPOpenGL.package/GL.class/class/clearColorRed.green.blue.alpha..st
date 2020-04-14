as yet unclassified
clearColorRed: red green: green blue: blue alpha: alpha
	<apicall: void 'glClearColor' (float float float float) module: 'libGL.so'>
	^self externalCallFailed