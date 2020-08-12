Class {
	#name : #'GL3_1',
	#superclass : #'GL3_0',
	#category : #'MPOpenGL-Versions'
}

{ #category : #version }
GL3_1 class >> majorVersion [

	^ 3
]

{ #category : #version }
GL3_1 class >> minorVersion [

	^ 1
]

{ #category : #commands }
GL3_1 >> glCopyBufferSubData: readTarget with: writeTarget with: readOffset with: writeOffset with: size [

	<apicall: void 'glCopyBufferSubData' (GLenum GLenum GLintptr GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glDrawArraysInstanced: mode with: first with: count with: instancecount [

	<apicall: void 'glDrawArraysInstanced' (GLenum GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glDrawElementsInstanced: mode with: count with: type with: indices with: instancecount [

	<apicall: void 'glDrawElementsInstanced' (GLenum GLsizei GLenum void* GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glGetActiveUniformBlockName: program with: uniformBlockIndex with: bufSize with: length with: uniformBlockName [

	<apicall: void 'glGetActiveUniformBlockName' (GLuint GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glGetActiveUniformBlockiv: program with: uniformBlockIndex with: pname with: params [

	<apicall: void 'glGetActiveUniformBlockiv' (GLuint GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glGetActiveUniformName: program with: uniformIndex with: bufSize with: length with: uniformName [

	<apicall: void 'glGetActiveUniformName' (GLuint GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glGetActiveUniformsiv: program with: uniformCount with: uniformIndices with: pname with: params [

	<apicall: void 'glGetActiveUniformsiv' (GLuint GLsizei GLuint* GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glGetUniformBlockIndex: program with: uniformBlockName [

	<apicall: GLuint 'glGetUniformBlockIndex' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glGetUniformIndices: program with: uniformCount with: uniformNames with: uniformIndices [

	<apicall: void 'glGetUniformIndices' (GLuint GLsizei GLchar** GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glPrimitiveRestartIndex: index [

	<apicall: void 'glPrimitiveRestartIndex' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glTexBuffer: target with: internalformat with: buffer [

	<apicall: void 'glTexBuffer' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_1 >> glUniformBlockBinding: program with: uniformBlockIndex with: uniformBlockBinding [

	<apicall: void 'glUniformBlockBinding' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]
