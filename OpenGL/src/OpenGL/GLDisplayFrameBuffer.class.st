Class {
	#name : #GLDisplayFrameBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Buffers'
}

{ #category : #binding }
GLDisplayFrameBuffer >> bind: anID [
	"bind a framebuffer to a framebuffer target"
	GL glBindFramebuffer: GL_FRAMEBUFFER with: anID
]

{ #category : #binding }
GLDisplayFrameBuffer >> bindingEnum [
	"note: there is also GL_READ_FRAMEBUFFER_BINDING which we ignore completely"
	^ GL_DRAW_FRAMEBUFFER_BINDING
]

{ #category : #initialization }
GLDisplayFrameBuffer >> initialize [

	super initialize.
	id := GL_NONE
]
