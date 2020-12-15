Class {
	#name : #SLDemoProgram,
	#superclass : #SLStaticProgram,
	#instVars : [
		'aPosLocation'
	],
	#category : #'ShadingLanguage-Examples',
	#commentStamp : ''
}

{
	#category : #'as yet unclassified',
	#timestamp : 'stlu 12/8/2020 14:03'
}
SLDemoProgram class >> attributes [

	^ #('aPos')
]

{
	#category : #shaders,
	#timestamp : 'stlu 12/9/2020 15:56'
}
SLDemoProgram class >> fragmentShader: out inputs: in [

	<fragmentShader>
	out FragColor: 1.0@0.5@0.9@1.0
]

{
	#category : #'as yet unclassified',
	#timestamp : 'stlu 12/8/2020 14:54'
}
SLDemoProgram class >> initialize [

	Scanner allowUnderscoreAsAssignment: false
]

{
	#category : #shaders,
	#timestamp : 'stlu 12/13/2020 17:39'
}
SLDemoProgram class >> vertexShader: out inputs: in uniforms: u [

	<vertexShader>
	| pos |
	pos := in aPos beFloatVector2.
	out gl_Position: pos + u time beFloat @ 0.0 @ 1.0
]

{
	#category : #generated,
	#timestamp : 'stlu 12/8/2020 17:01'
}
SLDemoProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : 'stlu 12/8/2020 17:01'
}
SLDemoProgram >> initializeLocations [

	super initializeLocations.
	
	
	aPosLocation := self registerAttribute: 'aPos'.
]
