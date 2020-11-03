Class {
	#name : #GLTransformFeedbackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLTransformFeedbackBuffer class >> bindingEnum [

	^ GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
]

{ #category : #binding }
GLTransformFeedbackBuffer class >> target [

	^ GL_TRANSFORM_FEEDBACK_BUFFER
]
