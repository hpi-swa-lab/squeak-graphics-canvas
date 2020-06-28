Class {
	#name : #OGLShaderManager,
	#superclass : #Object,
	#instVars : [
		'ogl',
		'programObjects'
	],
	#pools : [
		'GLExtConstants',
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Shaders'
}

{ #category : #'as yet unclassified' }
OGLShaderManager >> fetchShader: shaderName [
	^ programObjects at: shaderName ifAbsent: [ nil ].
]

{ #category : #'as yet unclassified' }
OGLShaderManager >> fetchShader: vertexShaderPath fragment: fragmentShaderPath [
	^ programObjects at: (vertexShaderPath, fragmentShaderPath) ifAbsent: [ nil ].
]

{ #category : #initialize }
OGLShaderManager >> initialize: gl [
	ogl := gl.
	programObjects := Dictionary new.
]

{ #category : #accessing }
OGLShaderManager >> programObjects [
	^ programObjects
]
