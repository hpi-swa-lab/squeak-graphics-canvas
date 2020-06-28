Class {
	#name : #GLRenderBufferTest,
	#superclass : #TestCase,
	#instVars : [
		'gl',
		'renderBuffer'
	],
	#pools : [
		'GLConstants',
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Test'
}

{ #category : #references }
GLRenderBufferTest >> glVersion [
	^GL4_6

]

{ #category : #references }
GLRenderBufferTest >> renderBufferClass [
	^GLRenderBuffer
	
]

{ #category : #'before each' }
GLRenderBufferTest >> setUp [
	super setUp.
	gl := self glVersion new.
	renderBuffer := self renderBufferClass newFor: gl.
]

{ #category : #'after each' }
GLRenderBufferTest >> tearDown [
	super tearDown.
	renderBuffer delete
	
	
]

{ #category : #tests }
GLRenderBufferTest >> testDimensionsAreRectangle [
	"given"
	"when"
	renderBuffer
		dimensions: (1 @ 4 extent: 2 @ 6).
	"then"
	self
		assert: renderBuffer height
		equals: 6
		description: 'Height cannot read from Rectangle'.
	self
		assert: renderBuffer width
		equals: 2
		description: 'Width cannot read from Rectangle'
]

{ #category : #tests }
GLRenderBufferTest >> testDimensionsByPoint [
	"given"
	"when"
	renderBuffer
		dimensions: 5@6.
	"then"
	self
		assert: renderBuffer height
		equals: 6
		description: 'Height cannot read from Point'.
	self
		assert: renderBuffer width
		equals: 5
		description: 'Width cannot read from Point'
]

{ #category : #tests }
GLRenderBufferTest >> testMultisampleRenderbufferFlag [
	| before |
	"given"
	"when"
	before := renderBuffer isMultisampleRenderBuffer.
	renderBuffer samples: 2.
	"then"
	self assert: before not.
	self assert: renderBuffer isMultisampleRenderBuffer
]

{ #category : #tests }
GLRenderBufferTest >> testNewFor [
	| buffer |
	"given"
	"when"
	buffer := self renderBufferClass newFor: gl.
	"then"
	self assert: (buffer gl) equals: gl description: 'GL Versions are the same'.
	"tear down"
	buffer delete.
]

{ #category : #tests }
GLRenderBufferTest >> testWidthAndHeightInitialize [
	"given"
	"when"
	"then"
	self assert: (renderBuffer height) equals: 0 description: 'Height not 0 if not provided'.
	self assert: (renderBuffer width) equals: 0 description: 'Width not 0 if not provided'.
]

{ #category : #tests }
GLRenderBufferTest >> testWidthAndHeightSetting [
	"given"
	"when"
	renderBuffer height: 1.
	renderBuffer width: 2.
	"then"
	self assert: (renderBuffer height) equals: 1 description: 'Height cannot be set'.
	self assert: (renderBuffer width) equals: 2 description: 'Width cannot be set'.
]
