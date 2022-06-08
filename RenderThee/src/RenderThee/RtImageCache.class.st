Class {
	#name : #RtImageCache,
	#superclass : #RtNodeCache,
	#instVars : [
		'textureHandle'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #invalidation,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:22'
}
RtImageCache >> invalidate [

	super invalidate.
	textureHandle dereference.
	textureHandle := nil.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:21'
}
RtImageCache >> textureHandle [

	^ textureHandle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:21'
}
RtImageCache >> textureHandle: anObject [

	textureHandle := anObject.
]
