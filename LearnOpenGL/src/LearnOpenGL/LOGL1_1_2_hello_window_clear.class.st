Class {
	#name : #'LOGL1_1_2_hello_window_clear',
	#superclass : #'LOGL1_1_1_hello_window',
	#category : #'LearnOpenGL-1GettingStarted'
}

{ #category : #rendering }
LOGL1_1_2_hello_window_clear >> render [

	GL clearColor: (Color r: 0.2 g: 0.3 b: 0.3).
	GL glClear: GL_COLOR_BUFFER_BIT
]
