Class {
	#name : #GLTransformFeedbackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLTransformFeedbackBuffer class >> bindingEnum [

	^ GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLTransformFeedbackBuffer class >> target [

	^ GL_TRANSFORM_FEEDBACK_BUFFER
]
