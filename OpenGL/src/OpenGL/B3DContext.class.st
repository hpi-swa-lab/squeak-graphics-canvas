Class {
	#name : #B3DContext,
	#superclass : #GLContext,
	#instVars : [
		'renderer'
	],
	#category : #'OpenGL-Context'
}

{ #category : #'instance creation' }
B3DContext class >> bounds: aRectangle [

	^ self renderer: (B3DRenderer bounds: aRectangle)
]

{ #category : #'instance creation' }
B3DContext class >> renderer: aRenderer [

	^ self basicNew
		renderer: aRenderer;
		initialize;
		yourself
]

{ #category : #activation }
B3DContext >> activate [

	renderer activate
]

{ #category : #activation }
B3DContext >> deactivate [

	renderer deactivate
]

{ #category : #'initialize-release' }
B3DContext >> destroy [

	super destroy.
	renderer destroy
]

{ #category : #'initialize-release' }
B3DContext >> endFrame [
	"do nothing"
]

{ #category : #'initialize-release' }
B3DContext >> initialize [

	api := #gl.
	super initialize
]

{ #category : #accessing }
B3DContext >> renderer [

	^ renderer
]

{ #category : #accessing }
B3DContext >> renderer: anObject [

	renderer := anObject
]

{ #category : #testing }
B3DContext >> shouldClose [

	^ false
]

{ #category : #'initialize-release' }
B3DContext >> swapBuffers [

	renderer swapBuffers
]
