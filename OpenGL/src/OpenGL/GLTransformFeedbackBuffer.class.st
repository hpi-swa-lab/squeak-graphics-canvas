Class {
	#name : #GLTransformFeedbackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:01'
}
GLTransformFeedbackBuffer class >> bindingEnum [

	^ GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:04'
}
GLTransformFeedbackBuffer class >> target [

	^ GL_TRANSFORM_FEEDBACK_BUFFER
]
