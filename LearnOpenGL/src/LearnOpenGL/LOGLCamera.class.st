Class {
	#name : #LOGLCamera,
	#superclass : #Object,
	#instVars : [
		'position',
		'front',
		'up',
		'right',
		'worldUp',
		'yaw',
		'pitch',
		'movementSpeed',
		'mouseSensitivity',
		'zoom'
	],
	#category : #'LearnOpenGL-Core',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/16/2020 13:13'
}
LOGLCamera class >> position: posVector [

	^ self new
		position: posVector;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> front [

	^ front
]

{
	#category : #initialization,
	#timestamp : 'stlu 12/16/2020 13:05'
}
LOGLCamera >> initialize [

	position := 0.0 @ 0.0 @ 0.0.
	worldUp := up := 0.0 @ 1.0 @ 0.0.
	front := 0.0 @ 0.0 @ -1.0.

	yaw := -90.0.
	pitch := 0.0.
	
	movementSpeed := 2.5.
	mouseSensitivity := 0.1.
	zoom := 45.0
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> mouseSensitivity [

	^ mouseSensitivity
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> mouseSensitivity: anObject [

	mouseSensitivity := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> movementSpeed [

	^ movementSpeed
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> movementSpeed: anObject [

	movementSpeed := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> pitch [

	^ pitch
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:08'
}
LOGLCamera >> pitch: anObject [

	pitch := anObject.
	self updateCameraVectors
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> position [

	^ position
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> position: anObject [

	position := anObject.
	self updateCameraVectors
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> right [

	^ right
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> up [

	^ up
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:08'
}
LOGLCamera >> up: anObject [

	up := anObject.
	self updateCameraVectors
]

{
	#category : #updating,
	#timestamp : 'stlu 12/16/2020 13:16'
}
LOGLCamera >> updateCameraVectors [

	front := (Vector3
				x: yaw degreesToRadians cos * pitch degreesToRadians cos
				y: pitch degreesToRadians sin
				z: yaw degreesToRadians sin * pitch degreesToRadians cos) normalize.
	right := (front cross: worldUp) normalize.
	up := (right cross: front) normalize.
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 12:59'
}
LOGLCamera >> viewMatrix [

	^ Matrix4x4 position: position target: position + front up: up
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> worldUp [

	^ worldUp
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:11'
}
LOGLCamera >> worldUp: anObject [

	worldUp := anObject.
	self updateCameraVectors
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> yaw [

	^ yaw
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:08'
}
LOGLCamera >> yaw: anObject [

	yaw := anObject.
	self updateCameraVectors
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> zoom [

	^ zoom
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 13:06'
}
LOGLCamera >> zoom: anObject [

	zoom := anObject
]
