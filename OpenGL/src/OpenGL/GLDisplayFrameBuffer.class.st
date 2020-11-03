Class {
	#name : #GLDisplayFrameBuffer,
	#superclass : #GLFrameBuffer,
	#category : #'OpenGL-Wrappers-Framebuffers'
}

{ #category : #allocation }
GLDisplayFrameBuffer class >> allocate [

	^ GL_NONE
]

{ #category : #binding }
GLDisplayFrameBuffer >> bind: anID [
	"bind a framebuffer to a framebuffer target"
	GL bindFramebuffer: GL_FRAMEBUFFER with: anID
]
