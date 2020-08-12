Class {
	#name : #'GL4_6',
	#superclass : #'GL4_5',
	#category : #'MPOpenGL-Versions'
}

{ #category : #version }
GL4_6 class >> majorVersion [

	^ 4
]

{ #category : #version }
GL4_6 class >> minorVersion [

	^ 6
]

{ #category : #commands }
GL4_6 >> glMultiDrawArraysIndirectCount: mode with: indirect with: drawcount with: maxdrawcount with: stride [

	<apicall: void 'glMultiDrawArraysIndirectCount' (GLenum void* GLintptr GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_6 >> glMultiDrawElementsIndirectCount: mode with: type with: indirect with: drawcount with: maxdrawcount with: stride [

	<apicall: void 'glMultiDrawElementsIndirectCount' (GLenum GLenum void* GLintptr GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_6 >> glPolygonOffsetClamp: factor with: units with: clamp [

	<apicall: void 'glPolygonOffsetClamp' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_6 >> glSpecializeShader: shader with: pEntryPoint with: numSpecializationConstants with: pConstantIndex with: pConstantValue [

	<apicall: void 'glSpecializeShader' (GLuint GLchar* GLuint GLuint* GLuint*)>
	^ self externalCallFailed
]
