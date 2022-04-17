Extension { #name : #Form }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:17'
}
Form >> countDifferingPixels: otherForm [

	| otherBits count |
	self assert: self extent = otherForm extent.
	self assert: self depth = otherForm depth.
	otherBits := otherForm bits.
	count := 0.
	1 to: bits size do: [:i |
		(bits at: i) ~= (otherBits at: i) ifTrue: [count := count + 1]].
	^ count
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 9/7/2021 10:48'
}
Form >> isTranslucentThorough [
	"Answer whether any pixel in the receiver is translucent, i.e. requires blending."
	| opaqueAlpha shift |
	depth <= 8 ifTrue: [^ false].
	depth caseOf: {
		[32] -> [opaqueAlpha := 16rFF. shift := -24].
	} otherwise: [^ false].
	1 to: bits size do: [:i |
		((bits at: i) bitShift: shift) < opaqueAlpha ifTrue: [^ true]].
	^ false
]
