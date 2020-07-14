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

	aCanvas drawDrawLayer: self
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
RtDrawLayer >> visit: aVisitor [

	^ aVisitor visitDrawLayer: self
]
