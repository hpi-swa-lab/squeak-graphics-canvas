Extension { #name : #GLContext }

{
	#category : #'*OpenGLObjects-object store',
	#timestamp : 'stlu 12/3/2020 18:49'
}
GLContext >> registerObject: glObject [

	objectStore add: glObject
]
