Extension { #name : #GLContext }

{
	#category : #'*OpenGLObjects-bindings',
	#timestamp : 'stlu 3/14/2021 18:21'
}
GLContext >> forgetBinding: bindingEnum [

	self flag: #todo. "dictionary"
	objectBindings dictionary at: bindingEnum put: nil
]

{
	#category : #'*OpenGLObjects-bindings',
	#timestamp : 'stlu 3/14/2021 18:20'
}
GLContext >> recallBinding: bindingEnum [

	self flag: #todo. "dictionary"
	^ objectBindings dictionary at: bindingEnum ifAbsentPut: [nil]
]

{
	#category : #'*OpenGLObjects-object store',
	#timestamp : 'stlu 12/3/2020 18:49'
}
GLContext >> registerObject: glObject [

	objectStore add: glObject
]

{
	#category : #'*OpenGLObjects-bindings',
	#timestamp : 'stlu 3/14/2021 18:21'
}
GLContext >> rememberBinding: bindingEnum as: anObject [

	self flag: #todo. "dictionary"
	^ objectBindings dictionary at: bindingEnum put: anObject
]
