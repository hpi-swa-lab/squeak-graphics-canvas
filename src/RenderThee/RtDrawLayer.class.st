Class {
	#name : #RtDrawLayer,
	#superclass : #RtLayer,
	#instVars : [
		'commands'
	],
	#category : 'RenderThee-LayerTree'
}

{ #category : #accessing }
RtDrawLayer >> addCommand: aCommand [

	commands add: aCommand
]

{ #category : #accessing }
RtDrawLayer >> commands [

	^ commands
]

{ #category : #compositing }
RtDrawLayer >> drawOn: aCanvas [

	commands do: [:cmd |
		cmd drawOn: aCanvas]
]

{ #category : #initialization }
RtDrawLayer >> initialize [

	super initialize.
	commands := OrderedCollection new
]

{ #category : #testing }
RtDrawLayer >> isEmpty [

	^ self commands isEmpty
]

{ #category : #visiting }
RtDrawLayer >> needsRasterize [

	^ true
]

{ #category : #visiting }
RtDrawLayer >> rasterizeTexture: aRenderer [
	| tex form |
	form := self rasterizeForm.
	tex := GLTexture new.
	tex texImage: form.
	^ tex

]

{ #category : #visiting }
RtDrawLayer >> visit: aVisitor [

	^ aVisitor visitDrawLayer: self
]
