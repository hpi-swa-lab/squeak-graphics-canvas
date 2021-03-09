Class {
	#name : #SLLibrary,
	#superclass : #Object,
	#category : #'ShadingLanguage-Examples',
	#commentStamp : ''
}

{
	#category : #'std lib',
	#timestamp : 'stlu 2/14/2021 16:04'
}
SLLibrary class >> convolve: aTexture at: texCoords kernel: kernel offsets: offsets [

	<shader: #any language: #shlang>
	<inline: true>
	| color |
	color := 0.0 @ 0.0 @ 0.0 @ 1.0.
	kernel with: offsets do: [:k :offset |
		| sample |
		sample := aTexture at: texCoords + offset.
		color := color + (sample rgb * k @ sample a)].
	^ color
]
