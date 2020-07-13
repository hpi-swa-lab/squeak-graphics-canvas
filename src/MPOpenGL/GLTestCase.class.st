Class {
	#name : #GLTestCase,
	#superclass : #TestCase,
	#instVars : [
		'gl'
	],
	#pools : [
		'AnObsoleteOpenGLConstants',
		'GLConstants'
	],
	#category : #'MPOpenGL-Test'
}

{ #category : #testing }
GLTestCase class >> isAbstract [
	"Override to true if a TestCase subclass is Abstract and should not have
	TestCase instances built from it"

	^self name = #GLTestCase
]

{ #category : #reference }
GLTestCase >> glVersion [
	^GL4_6
]

{ #category : #'before each' }
GLTestCase >> setUp [
	super setUp.
	gl := self glVersion new.
]

{ #category : #'after each' }
GLTestCase >> tearDown [
	super tearDown.
]
