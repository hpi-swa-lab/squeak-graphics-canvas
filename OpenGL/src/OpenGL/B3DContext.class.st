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
	#timestamp : 'stlu 11/9/2020 18:26'
}
B3DContext class >> bounds: aRectangle [

	^ self renderer: (B3DRenderer bounds: aRectangle)
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/9/2020 18:24'
}
B3DContext class >> renderer: aRenderer [

	^ self basicNew
		renderer: aRenderer;
		initialize;
		yourself
]

{
	#category : #activation,
	#timestamp : 'stlu 11/9/2020 15:43'
}
B3DContext >> activate [

	renderer activate
]

{
	#category : #activation,
	#timestamp : 'stlu 11/9/2020 15:44'
}
B3DContext >> deactivate [

	renderer deactivate
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/9/2020 15:43'
}
B3DContext >> destroy [

	super destroy.
	renderer destroy
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/9/2020 15:42'
}
B3DContext >> endFrame [
	"do nothing"
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/11/2020 13:12'
}
B3DContext >> initialize [

	api := #gl.
	super initialize
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 15:41'
}
B3DContext >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/9/2020 15:41'
}
B3DContext >> renderer: anObject [

	renderer := anObject
]

{
	#category : #testing,
	#timestamp : 'stlu 11/9/2020 15:42'
}
B3DContext >> shouldClose [

	^ false
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/9/2020 15:41'
}
B3DContext >> swapBuffers [

	renderer swapBuffers
]
