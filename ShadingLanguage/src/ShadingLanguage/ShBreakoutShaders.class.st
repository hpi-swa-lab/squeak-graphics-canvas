Class {
	#name : #ShBreakoutShaders,
	#superclass : #Object,
	#instVars : [
		'builtins',
		'constants',
		'aVertex',
		'oColor',
		'sScene',
		'sSprite',
		'uBlurKernel',
		'uChaosIsActive',
		'uColor',
		'uConfusionIsActive',
		'uEdgeKernel',
		'uModel',
		'uOffset',
		'uOffsets',
		'uProjection',
		'uShakeIsActive',
		'uSpriteColor',
		'uTime',
		'vParticleColor',
		'vTexCoords'
	],
	#category : #'ShadingLanguage-Mockup'
}

{
	#category : #declaration,
	#'squeak_changestamp' : 'stlu 8/9/2021 14:43'
}
ShBreakoutShaders >> declareVariables [

	aVertex attribute; vec4; location: 0.
	
	vTexCoords varying; vec2.
	
	self isFragmentShader ifTrue: [
		oColor output; vec4].
	
	self isSpriteShader ifTrue: [
		sSprite uniform; sampler2D.
		uModel uniform; mat4x4.
		uSpriteColor uniform; vec3].
	
	self isParticleShader ifTrue: [
		vParticleColor varying; vec4.
		uProjection uniform; mat4x4.
		uOffset uniform; vec2.
		uColor uniform; vec4.
		sSprite uniform; sampler2D].
	
	self isPostProcessingShader ifTrue: [
		uChaosIsActive uniform; bool.
		uConfusionIsActive uniform; bool.
		uShakeIsActive uniform; bool.
		uTime uniform; float.
	
		sScene uniform; sampler2D.
		uOffsets uniform; vec2; array: #( 9 ).
		uEdgeKernel uniform; float; array: #( 9 ).
		uBlurKernel uniform; float; array: #( 9 )].
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/9/2021 12:31'
}
ShBreakoutShaders >> isParticleShader [

	^ constants isDefined: #'PARTICLE'
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/9/2021 12:31'
}
ShBreakoutShaders >> isPostProcessingShader [

	^ constants isDefined: #'POSTPROCESSING'
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/9/2021 12:31'
}
ShBreakoutShaders >> isSpriteShader [

	^ constants isDefined: #'SPRITE'
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/9/2021 12:52'
}
ShBreakoutShaders >> particleFragmentShader [

	| texel |
	texel := sSprite sampleAt: vTexCoords.
	oColor := texel * vParticleColor.
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/9/2021 12:54'
}
ShBreakoutShaders >> particleVertexShader [

	| scale pos |
	scale := 10.0.
	pos := aVertex xy * scale + uOffset.
	vTexCoords := aVertex zw.
	self flag: #todo. "access uColor in fragment shader directly"
	vParticleColor := uColor.
	builtins gl_Position: uProjection * (pos @ 0.0 @ 1.0).
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/9/2021 11:29'
}
ShBreakoutShaders >> postProcessingFragmentShader [

	| color texel |
	texel := sScene sampleAt: vTexCoords.
	
	color := texel.
	(uChaosIsActive or: [uShakeIsActive]) ifTrue: [
		| kernel |
		kernel := uChaosIsActive
			ifTrue: [uEdgeKernel]
			ifFalse: [uBlurKernel].
		color := 0.0 @ 0.0 @ 0.0 @ 1.0.
		0 to: 8 do: [:i |
			| sample offset k |
			offset := uOffsets at: i.
			sample := (sScene sampleAt: vTexCoords + offset) rgb.
			k := kernel at: i.
			color := color + (sample * k @ 0.0)]].
	
	uConfusionIsActive ifTrue: [
		color := 1.0 - texel rgb @ 1.0].
	
	oColor := color.
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/9/2021 11:11'
}
ShBreakoutShaders >> postProcessingVertexShader [

	| shakeStrength chaosStrength pos texCoords |
	shakeStrength := 0.01.
	chaosStrength := 0.3.
	pos := aVertex xy.
	texCoords := aVertex zw.
	
	uShakeIsActive ifTrue: [
		pos := (10.0@15.0 * uTime) cos * shakeStrength + pos].
	builtins gl_Position: pos @ 0.0 @ 1.0.
	
	vTexCoords := uChaosIsActive
		ifTrue: [
			texCoords + (uTime sin @ uTime cos * chaosStrength)]
		ifFalse: [
			uConfusionIsActive
				ifTrue: [1.0 - texCoords]
				ifFalse: [texCoords]].
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/9/2021 12:47'
}
ShBreakoutShaders >> spriteFragmentShader [

	| texel |
	texel := sSprite sampleAt: vTexCoords.
	oColor := uSpriteColor @ 1 * texel.
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/9/2021 12:45'
}
ShBreakoutShaders >> spriteVertexShader [

	| pos |
	pos := aVertex xy @ 0 @ 1.
	vTexCoords := aVertex zw.
	builtins gl_Position: uProjection * uModel * pos.
]
