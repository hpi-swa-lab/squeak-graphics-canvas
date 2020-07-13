Class {
	#name : #'GL2_1',
	#superclass : #'GL2_0',
	#category : #'MPOpenGL-Versions'
}

{ #category : #commands }
GL2_1 >> glUniformMatrix2x3fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2x3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_1 >> glUniformMatrix2x4fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2x4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_1 >> glUniformMatrix3x2fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3x2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_1 >> glUniformMatrix3x4fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3x4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_1 >> glUniformMatrix4x2fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4x2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_1 >> glUniformMatrix4x3fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4x3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #version }
GL2_1 >> majorVersion [

	^ 2
]

{ #category : #version }
GL2_1 >> minorVersion [

	^ 1
]
