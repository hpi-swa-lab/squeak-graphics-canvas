Class {
	#name : #SLDemoProgram,
	#superclass : #SLStaticProgram,
	#instVars : [
		'aPosLocation',
		'aNormalLocation'
	],
	#category : #'ShadingLanguage-Examples'
}

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 12/21/2020 15:09'
}
SLDemoProgram class >> fragmentShader: out inputs: in uniforms: u [

	<fragmentShader>
	| model fragPos normal objectColor lightColor lightPos ambientStrength diff diffuse lightDir ambient |
	model := u model beFloatMatrix4x4.
	normal := in normal beFloatVector3 normalized.
	fragPos := in fragPos beFloatVector3.
	objectColor := 1.0 @ 0.5 @ 0.31.
	lightColor := 1.0 @ 1.0 @ 1.0.
	lightPos := ((1.2 @ 1.0 @ 2.0 @ 0.0) * model) xyz.
	ambientStrength := 0.1.
	ambient := ambientStrength * lightColor.
	
	lightDir := (lightPos - fragPos) normalized.
	diff := (normal dot: lightDir) max: 0.0.
	diffuse := diff * lightColor.
	out FragColor: (ambient + diffuse * objectColor) @ 1.0.
]

{
	#category : #'class initialization',
	#'squeak_changestamp' : 'stlu 12/8/2020 14:54'
}
SLDemoProgram class >> initialize [

	Scanner allowUnderscoreAsAssignment: false
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 12/21/2020 20:36'
}
SLDemoProgram class >> vertexShader: out inputs: in uniforms: u [

	<vertexShader>
	| position fragPos model view projection |
	position := in aPos beFloatVector3.
	model := u model beFloatMatrix4x4.
	view := u view beFloatMatrix4x4.
	projection := u projection beFloatMatrix4x4.
	
	fragPos := (model * (position @ 1.0)) xyz.
	out
		fragPos: fragPos
		normal: in aNormal beFloatVector3 "pass through"
		gl_Position: projection * view * (fragPos @ 1.0)
]
