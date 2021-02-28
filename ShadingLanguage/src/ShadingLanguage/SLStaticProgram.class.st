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
	#timestamp : 'zagto 2/28/2021 19:27'
}
SLStaticProgram class >> findShader: selectorStart [

	self theMetaClass selectorsAndMethodsDo: [:selector :method |
		(selector beginsWith: selectorStart , ':') ifTrue: [
			^ method getSource asString]].
	self error: 'Could not find ' , selectorStart.
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
	#timestamp : 'zagto 2/28/2021 19:28'
}
SLStaticProgram class >> noteCompilationOf: aSelector meta: isMeta [

	| vertexShader fragmentShader instances |
	isMeta ifFalse: [^ self].
	self = SLStaticProgram ifTrue: [^ self].
	instances := self allInstances ifEmpty: [^ self].
	
	[
		vertexShader := self vertexShader.
		fragmentShader := self fragmentShader.
	] on: Error do: [:err | ^ err pass].

	[
		instances do: [:program |
			| context |
			context := program context.
			(context isSymbol or: [context isDestroyed]) ifFalse: [
				context library makeCurrentDuring: [
					program updateShaders]]]
	] on: Error do: [:err | ^ err pass].
]

{
	#category : #'shader code',
	#timestamp : 'stlu 12/8/2020 15:44'
}
SLStaticProgram class >> vertexShader [

	^ self compileShader: 'vertexShader'
]
