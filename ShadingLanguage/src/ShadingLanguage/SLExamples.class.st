Class {
	#name : #SLExamples,
	#superclass : #Object,
	#category : #'ShadingLanguage-Examples'
}

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 2/14/2021 15:59'
}
SLExamples class >> chaosEffect: out inputs: in uniforms: u [

	<shader: #fragment language: #shlang>
	out color: (self
				convolve: u scene
				at: in TexCoords
				kernel: (u blurKernel beFloatArray: 9)
				offsets: (u offsets beFloatVector2Array: 9))
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 2/14/2021 15:50'
}
SLExamples class >> confusionEffect: out inputs: in uniforms: u [

	<shader: #fragment language: #shlang>
	| texel |
	texel := u scene at: in TexCoords.
	out color: 1.0 - texel rgb @ 1.0
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 2/14/2021 15:53'
}
SLExamples class >> noEffect: out inputs: in uniforms: u [

	<shader: #fragment language: #shlang>
	out color: (u scene at: in TexCoords)
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 2/14/2021 16:00'
}
SLExamples class >> postProcessing: out inputs: in uniforms: u [

	<shader: #fragment language: #shlang>
	u scene beFloat2DSampler.
	
	u chaos
		ifTrue: [self chaosEffect: out inputs: in uniforms: u]
		ifFalse: [
			u shake
				ifTrue: [self shakeEffect: out inputs: in uniforms: u]
				ifFalse: [
					u confuse
						ifTrue: [self confusionEffect: out inputs: in uniforms: u]
						ifFalse: [self noEffect: out inputs: in uniforms: u]]]
]

{
	#category : #examples,
	#'squeak_changestamp' : 'stlu 2/14/2021 15:59'
}
SLExamples class >> shakeEffect: out inputs: in uniforms: u [

	<shader: #fragment language: #shlang>
	out color: (self
				convolve: u scene
				at: in TexCoords
				kernel: (u edgeKernel beFloatArray: 9)
				offsets: (u offsets beFloatVector2Array: 9))
]
