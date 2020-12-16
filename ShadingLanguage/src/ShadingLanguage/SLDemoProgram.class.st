Class {
	#name : #SLDemoProgram,
	#superclass : #SLStaticProgram,
	#instVars : [
		'aPosLocation',
		'aNormalLocation'
	],
	#category : #'ShadingLanguage-Examples',
	#commentStamp : ''
}

{
	#category : #'as yet unclassified',
	#timestamp : 'zagto 12/15/2020 17:29'
}
SLDemoProgram class >> attributes [

	^ #('aPos' 'aNormal')
]

{
	#category : #shaders,
	#timestamp : 'zagto 12/15/2020 18:35'
}
SLDemoProgram class >> fragmentShader: out inputs: in [

	<fragmentShader>
	| cubeColor ambientColor lightColor lightPos diff diffuse norm lightDir |
	cubeColor := 1.0 @ 0.5 @ 0.9.
	ambientColor := 0.1 @ 0.1 @ 0.1.
	lightColor := 1.0 @ 1.0 @ 1.0.
	lightPos := 1.0 @ 1.0 @ 2.0.
	
	norm := in normal beFloatVector3 normalized.
	lightDir := (lightPos - in fragPos beFloatVector3) normalized.
	diff := (norm dot: lightDir) max: 0.0.
	diffuse := diff * lightColor.
	out FragColor: ((ambientColor * 1.0 + diffuse) * cubeColor) @ 1.0.
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
	#timestamp : 'zagto 12/15/2020 19:06'
}
SLDemoProgram class >> vertexShader: out inputs: in uniforms: u [

	<vertexShader>
	| pos fragPos2 |
	pos := in aPos beFloatVector3.
	out normal: in aNormal beFloatVector3.
	fragPos2 := (u model beFloatMatrix4x4 * (pos @ 1.0)) xyz.
	out fragPos: fragPos2.
	out gl_Position: u view beFloatMatrix4x4 * u projection beFloatMatrix4x4 * (fragPos2 @ 1.0).
]

{
	#category : #generated,
	#timestamp : 'zagto 12/15/2020 17:30'
}
SLDemoProgram >> aNormalLocation [

	^ aNormalLocation
]

{
	#category : #generated,
	#timestamp : 'zagto 12/15/2020 17:30'
}
SLDemoProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : 'zagto 12/15/2020 17:30'
}
SLDemoProgram >> initializeLocations [

	super initializeLocations.
	
	
	aPosLocation := self registerAttribute: 'aPos'.
	aNormalLocation := self registerAttribute: 'aNormal'.
]
