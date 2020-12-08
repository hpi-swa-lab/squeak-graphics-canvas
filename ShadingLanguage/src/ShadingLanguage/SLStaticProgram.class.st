Class {
	#name : #SLStaticProgram,
	#superclass : #GLStaticProgram,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : 'stlu 12/8/2020 15:44'
}
SLStaticProgram class >> compileShader: selectorStart [

	| source |
	source := self findShader: selectorStart.
	^ SLGenerator transform: source
]

{
	#category : #'shader code',
	#timestamp : 'stlu 12/8/2020 15:20'
}
SLStaticProgram class >> findShader: selectorStart [

	self theMetaClass selectorsAndMethodsDo: [:selector :method |
		(selector beginsWith: selectorStart , ':') ifTrue: [
			^ method getSource asString]].
	self error: 'Could not find ' , selectorStart
]

{
	#category : #'shader code',
	#timestamp : 'stlu 12/8/2020 15:44'
}
SLStaticProgram class >> fragmentShader [

	^ self compileShader: 'fragmentShader'
]

{
	#category : #compiling,
	#timestamp : 'stlu 12/8/2020 17:52'
}
SLStaticProgram class >> noteCompilationOf: aSelector meta: isMeta [

	
	isMeta ifFalse: [^ self].
	self = SLStaticProgram ifTrue: [^ self].
	[
		| vertexShader fragmentShader |
		vertexShader := self vertexShader.
		fragmentShader := self fragmentShader.
		self allInstancesDo: [:instance |
			instance library context isDestroyed ifFalse: [
				instance library makeCurrentDuring: [
					instance updateShaders]]]
	] on: Error do: [:err |
		self notify: 'Did not work']
]

{
	#category : #'shader code',
	#timestamp : 'stlu 12/8/2020 15:44'
}
SLStaticProgram class >> vertexShader [

	^ self compileShader: 'vertexShader'
]
