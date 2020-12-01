Class {
	#name : #'LOGL1_1_2_hello_window_clear',
	#superclass : #'LOGL1_1_1_hello_window',
	#category : #'LearnOpenGL-1GettingStarted',
	#commentStamp : ''
}

{
	#category : #rendering,
	#timestamp : 'stlu 11/3/2020 15:01'
}
LOGL1_1_2_hello_window_clear >> render [

	GL setClearColor: (Color r: 0.2 g: 0.3 b: 0.3).
	GL clear: GL_COLOR_BUFFER_BIT
]
