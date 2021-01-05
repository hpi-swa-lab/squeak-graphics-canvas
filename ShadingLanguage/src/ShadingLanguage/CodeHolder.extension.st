Extension { #name : #CodeHolder }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 1/5/2021 16:28'
}
CodeHolder >> contents [
	"Answer the source code or documentation for the selected method"

	self showingByteCodes ifTrue:
		[^ self selectedBytecodes].

	self showingDocumentation ifTrue:
		[^ self commentContents].
	
	self showingGeneratedGLSL ifTrue:
		[^ self generatedGLSL].

	^ self selectedMessage
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 1/5/2021 16:39'
}
CodeHolder class >> contentsSymbolQuints [
	"Answer a list of quintuplets representing information on the alternative views available in the code pane
		first element:	the contentsSymbol used
		second element:	the selector to call when this item is chosen.
		third element:	the selector to call to obtain the wording of the menu item.
		fourth element:	the wording to represent this view
		fifth element:	balloon help
	A hypen indicates a need for a seperator line in a menu of such choices"

	^ ContentsSymbolQuints
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 1/5/2021 16:33'
}
CodeHolder >> generatedGLSL [

	| method |
	method := self selectedClassOrMetaClass
		compiledMethodAt: self selectedMessageName
		ifAbsent: [^ '' asText].
	^ (SLGenerator transform: method getSource asString) asText.

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 1/5/2021 16:29'
}
CodeHolder >> showGeneratedGLSL: aBoolean [
	"Set the GLSL toggle as indicated"

	self contentsSymbol: (aBoolean ifFalse: [#source] ifTrue: [#glsl])

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 1/5/2021 16:28'
}
CodeHolder >> showingGeneratedGLSL [
	
	^ self contentsSymbol == #glsl

]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 1/5/2021 16:28'
}
CodeHolder >> showingGeneratedGLSLString [
	
	^ (self showingGeneratedGLSL
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'GLSL'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 1/5/2021 16:28'
}
CodeHolder >> toggleGeneratedGLSL [
	
	| wasShowing |
	self okToChange ifTrue:
		[wasShowing := self showingGeneratedGLSL.
		self restoreTextualCodingPane.
		self showGeneratedGLSL: wasShowing not.
		self setContentsToForceRefetch.
		self contentsChanged]


]
