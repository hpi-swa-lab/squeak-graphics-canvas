Class {
	#name : #RtBatching2,
	#superclass : #LOGLTemplate,
	#instVars : [
		'renderer',
		'picture',
		'bounds'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/21/2021 14:38'
}
RtBatching2 >> morph: aMorph [

	picture := PicPictureCanvas new fullDraw: aMorph; getPicture.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:47'
}
RtBatching2 >> picture [

	^ picture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:47'
}
RtBatching2 >> picture: anObject [

	picture := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/21/2021 15:11'
}
RtBatching2 >> projectionMatrix [

	^ Matrix4x4
		ortho: bounds
		near: 0 far: -100000
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/20/2021 22:08'
}
RtBatching2 >> render [

	renderer projectionMatrix: self projectionMatrix.
	renderer render: picture.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:46'
}
RtBatching2 >> renderer [

	^ renderer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:46'
}
RtBatching2 >> renderer: anObject [

	renderer := anObject
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/21/2021 14:37'
}
RtBatching2 >> setUp [

	renderer := RtBatchingRenderer new.
	self morph: ActiveWorld.
	bounds := picture estimatedBounds.
]
