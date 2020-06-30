Class {
	#name : #RtWorldState,
	#superclass : #WorldState,
	#pools : [
		'OpenGLConstants'
	],
	#category : #'RenderThee-Project'
}

{ #category : #canvas }
RtWorldState >> canvas: aCanvas [

	canvas := aCanvas
]

{ #category : #'update cycle' }
RtWorldState >> checkIfUpdateNeeded [

	^ true
]

{ #category : #'update cycle' }
RtWorldState >> displayWorld: aWorld submorphs: submorphs [
	"Update this world's display."

	| deferredUpdateMode handsToDraw allDamage handDamageRects worldCanvas worldForm texture ogl |

	aWorld fullBounds. "send #ownerChanged to submorphs."
	submorphs do: [:m | m fullBounds].  "force re-layout if needed"
	self checkIfUpdateNeeded ifFalse: [^ self].  "display is already up-to-date"
	ogl := aWorld ogl.
	
	deferredUpdateMode := self doDeferredUpdatingFor: aWorld.
	deferredUpdateMode ifFalse: [self assuredCanvas].

	worldCanvas := FormCanvas extent: aWorld extent.
	self drawWorld: aWorld on: worldCanvas.
	worldForm := worldCanvas form.
	
	texture := OGLTexture new form: worldForm.
	ogl
		beginFrame;
		installTexture: texture;
		enableTexture: texture;
		glDisable: GLDepthTest;
		glDisable: GLLighting;
		glClearColor: 0.0 with: 0.0 with: 1.0 with: 1.0;
		glClear: GLColorBufferBit;
		checkForError.
	aWorld vao bind: ogl.
	ogl glBindBuffer: ogl GL_ARRAY_BUFFER with: aWorld vbo id.
	aWorld program
		use;
		vertexAttib: 0 value: aWorld vbo stride: 4 offset: 0;
		vertexAttib: 1 value: aWorld vbo stride: 4 offset: 2;
		uniform: 0 value: (Matrix4x4 withRotation: 90.0 around: 0@0@1).
	aWorld vbo draw: ogl GL_TRIANGLE_STRIP.
	ogl
		glDisable: GLBlend;
		endFrame;
		swapBuffers.
	
	handsToDraw := hands.
	handDamageRects := handsToDraw collect: [:h | h savePatchFrom: canvas].
	allDamage := handDamageRects.

	handsToDraw reverseDo: [:h | canvas fullDrawMorph: h].  "draw hands onto world canvas"

	canvas finish: allDamage.

	"quickly copy altered rects of canvas to Display:"
	deferredUpdateMode
		ifTrue: [self forceDamageToScreen: allDamage]
		ifFalse: [canvas showAt: aWorld viewBox origin invalidRects: allDamage].
	handsToDraw do: [:h | h restoreSavedPatchOn: canvas].  "restore world canvas under hands"
	Display deferUpdates: false; forceDisplayUpdate.
]

{ #category : #canvas }
RtWorldState >> doFullRepaint [

]

{ #category : #'update cycle' }
RtWorldState >> drawWorld: aWorld on: aCanvas [ 
	"Redraw the damaged areas of the given canvas and clear the damage list. Return a collection of the areas that
were redrawn."
	aCanvas fullDrawMorph: aWorld.
]

{ #category : #initialization }
RtWorldState >> initialize [

	hands := Array new.
	stepList := Heap sortBlock: self stepListSortBlock.
	lastStepTime := 0.
	lastAlarmTime := 0
]

{ #category : #canvas }
RtWorldState >> recordDamagedRect: damageRect [

	"should not be called"
]

{ #category : #canvas }
RtWorldState >> recordDamagedRect: damageRect from: aMorph [

	
]

{ #category : #canvas }
RtWorldState >> resetDamageRecorder [

	
]
