Class {
	#name : #RtBatching2,
	#superclass : #LOGLTemplate,
	#instVars : [
		'renderer',
		'picture',
		'bounds',
		'timeElapsedQuery',
		'gpuTime',
		'errorCallback'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/4/2021 17:22'
}
RtBatching2 >> calculateGPUTime: elapsedTime [

	| smoothing |
	smoothing := 0.995.
	gpuTime := gpuTime * smoothing + (1.0 - smoothing * elapsedTime).
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/24/2021 23:18'
}
RtBatching2 >> initialize [

	super initialize.
	gpuTime := 0.0
]

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
	#'squeak_changestamp' : 'stlu 5/24/2021 22:40'
}
RtBatching2 >> render [

	renderer projectionMatrix: self projectionMatrix.
	renderer render: picture.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 6/4/2021 17:36'
}
RtBatching2 >> render: timeBetweenFrames [

	| title |
	timeElapsedQuery during: [self render].
	self calculateGPUTime: timeElapsedQuery result.
	title := '{1}ms | {2}us | {3} rects' format: {
		frameTime printShowingMaxDecimalPlaces: 3.
		gpuTime / 1e3 printShowingMaxDecimalPlaces: 3.
		renderer index }.
	window title: title.
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
	#'squeak_changestamp' : 'stlu 6/6/2021 16:26'
}
RtBatching2 >> setUp [

	errorCallback := FFICallback
						signature: '<callback: void (*)(GLenum GLenum GLuint GLenum GLsizei GLchar* size_t)>'
						block: [:source :type :id :severity :length :message :userParam | "self halt"].
	GL debugMessageCallback: errorCallback with: nil.
	
	timeElapsedQuery := GLTimeElapsed create.
	renderer := RtBatchingRenderer new.
	self morph: ActiveWorld.
	bounds := picture estimatedBounds.
]
