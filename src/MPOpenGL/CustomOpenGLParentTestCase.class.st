Class {
	#name : #CustomOpenGLParentTestCase,
	#superclass : #TestCase,
	#instVars : [
		'ogl'
	],
	#category : 'MPOpenGL-Test'
}

{ #category : #testing }
CustomOpenGLParentTestCase class >> isAbstract [ 
	^self name = #CustomOpenGLParentTestCase 
]

{ #category : #'OpenGL global check' }
CustomOpenGLParentTestCase >> checkOpenGLVersion [ 
	| version versionString |
	version := ogl glGetString: ogl GL_VERSION.
	versionString := version fromCString.
	self assert: (versionString beginsWith: '3.3').
]

{ #category : #'after each' }
CustomOpenGLParentTestCase >> setUp [
	self setUpWindow  
]

{ #category : #'after each' }
CustomOpenGLParentTestCase >> setUpWindow [ 
	self subclassResponsibility 
]

{ #category : #'before each' }
CustomOpenGLParentTestCase >> tearDown [
	self tearDownWindow 
]

{ #category : #'before each' }
CustomOpenGLParentTestCase >> tearDownWindow [ 
	self subclassResponsibility 
]

{ #category : #testing }
CustomOpenGLParentTestCase >> testOpenGLVersion [
	self checkOpenGLVersion 
]
