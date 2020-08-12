Class {
	#name : #B3DContext,
	#superclass : #GLContext,
	#instVars : [
		'handle'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #'instance creation' }
B3DContext class >> defaultFlags [
	^ 1 "B3DSoftwareRenderer" + 2 "B3DHardwareRenderer" + 4 "B3DStencilBuffer" 
]

{ #category : #'instance creation' }
B3DContext class >> isAvailable [
	^self pluginVersion > 0
]

{ #category : #'instance creation' }
B3DContext class >> newIn: bounds [
	^self newIn: bounds flags: self defaultFlags
]

{ #category : #'instance creation' }
B3DContext class >> newIn: bounds flags: flags [
	^ self new initializeIn: bounds flags: flags
]

{ #category : #primitives }
B3DContext class >> pluginVersion [
	"OpenGL pluginVersion"
	<primitive:'primitiveRendererVersion' module:'B3DAcceleratorPlugin'>
	^0
]

{ #category : #primitives }
B3DContext class >> primitiveSetVerboseLevel: newLevel [
	"Primitive. Set the reporting level for the engine. Values are
		0 - print NO information ever
		1 - print critical debug errors
		2 - print debug warnings
		3 - print extra information
		4 - print extra warnings
		5 - print information about primitive execution

	   10 - print information about each vertex and face
	"
	<primitive:'primitiveSetVerboseLevel' module:'B3DAcceleratorPlugin'>
]

{ #category : #activation }
B3DContext >> activate [
    "Hack! We can't make it explicitly but getting a property requires to have me current, so..."
    self primRender: handle getProperty: 1.
]

{ #category : #activation }
B3DContext >> deactivate [
    "we can't really do that"
]

{ #category : #'initialize-release' }
B3DContext >> destroy [
	super destroy.
	self primDestroyRenderer: handle.
]

{ #category : #'initialize-release' }
B3DContext >> endFrame [
	"do nothing"
]

{ #category : #'initialize-release' }
B3DContext >> initializeIn: bounds flags: flags [
	"flag is a bitwise OR of
	1	B3DSoftwareRenderer
	2	B3DHardwareRenderer
	4	B3DStencilBuffer
	8	B3DAntialiasing
	16	B3DStereo
	32	B3DSyncvbl"
	handle := self primCreateRenderer: flags x: bounds left y: bounds top w: bounds width h: bounds height.
	^ handle ifNotNil: [self]
]

{ #category : #primitives }
B3DContext >> primCreateRenderer: flags x: x y: y w: w h: h [
	<primitive: 'primitiveCreateRendererFlags' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
B3DContext >> primDestroyRenderer: aHandle [
	<primitive: 'primitiveDestroyRenderer' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
B3DContext >> primRender: aHandle getProperty: propNumber [
	"Primitive. Get some property."
	<primitive:'primitiveGetIntProperty' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
B3DContext >> primRender: aHandle setBufferRectX: left y: top w: width h: height [
	<primitive:'primitiveSetBufferRect' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
B3DContext >> primRender: aHandle setProperty: propNumber toInteger: value [
	"Primitive. Set some property."
	<primitive:'primitiveSetIntProperty' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
B3DContext >> primSwapBuffers: aHandle [
	"Primitive. Finish all rendering operations on the receiver.
	Do not return before all rendering operations have taken effect."
	<primitive: 'primitiveSwapRendererBuffers' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #testing }
B3DContext >> shouldClose [
	^ false
]

{ #category : #'initialize-release' }
B3DContext >> swapBuffers [
	^ (self primSwapBuffers: handle) notNil
]
