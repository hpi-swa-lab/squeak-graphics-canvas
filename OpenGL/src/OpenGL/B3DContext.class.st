Class {
	#name : #B3DContext,
	#superclass : #GLContext,
	#instVars : [
		'renderer'
	],
	#category : #'OpenGL-Context',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
B3DContext class >> bounds: aRectangle [

	^ self renderer: (B3DRenderer bounds: aRectangle)
]

{
	#category : #'instance creation',
	#timestamp : ''
}
B3DContext class >> renderer: aRenderer [

	^ self basicNew
		renderer: aRenderer;
		initialize;
		yourself
]

{
	#category : #activation,
	#timestamp : ''
}
B3DContext >> activate [

	renderer activate
]

{
	#category : #activation,
	#timestamp : ''
}
B3DContext >> deactivate [

	renderer deactivate
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
B3DContext >> destroy [

	super destroy.
	renderer destroy
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
B3DContext >> endFrame [
	"do nothing"
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
B3DContext >> initialize [

	api := #gl.
	super initialize
]

{
	#category : #accessing,
	#timestamp : ''
}
B3DContext >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#timestamp : ''
}
B3DContext >> renderer: anObject [

	renderer := anObject
]

{
	#category : #testing,
	#timestamp : ''
}
B3DContext >> shouldClose [

	^ false
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
B3DContext >> swapBuffers [

	renderer swapBuffers
]
