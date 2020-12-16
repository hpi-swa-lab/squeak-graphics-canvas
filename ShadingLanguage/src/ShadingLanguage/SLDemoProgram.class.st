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
	#timestamp : 'stlu 12/16/2020 15:57'
}
SLDemoProgram class >> fragmentShader: out inputs: in uniforms: u [

	<fragmentShader>
	| objectColor lightColor lightPos ambientStrength diff diffuse norm lightDir ambient |
	objectColor := 1.0 @ 0.5 @ 0.31.
	lightColor := 1.0 @ 1.0 @ 1.0.
	lightPos := ((1.2 @ 1.0 @ 2.0 @ 0.0) * u model beFloatMatrix4x4) xyz.
	ambientStrength := 0.1.
	ambient := ambientStrength * lightColor.
	
	norm := in normal beFloatVector3 normalized.
	lightDir := (lightPos - in fragPos beFloatVector3) normalized.
	diff := (norm dot: lightDir) max: 0.0.
	diffuse := diff * lightColor.
	out FragColor: (ambient + diffuse * objectColor) @ 1.0.
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
	#timestamp : 'stlu 12/16/2020 13:53'
}
SLDemoProgram class >> vertexShader: out inputs: in uniforms: u [

	<vertexShader>
	| position fragPosition modelMatrix viewMatrix projectionMatrix |
	position := in aPos beFloatVector3.
	modelMatrix := u model beFloatMatrix4x4.
	viewMatrix := u view beFloatMatrix4x4.
	projectionMatrix := u projection beFloatMatrix4x4.
	fragPosition := (modelMatrix * (position @ 1.0)) xyz.
	out fragPos: fragPosition.
	out normal: in aNormal beFloatVector3. "pass through"
	out gl_Position: projectionMatrix * viewMatrix * (fragPosition @ 1.0).
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
