Extension { #name : #Point }

{
	#category : #'*3DTransform',
	#timestamp : ''
}
Point >> @ aNumber [

	^ Vector3
		x: x
		y: y
		z: aNumber
]

{
	#category : #'*3DTransform',
	#timestamp : ''
}
Point >> asVector3 [

	^ self @ 0.0
]

{
	#category : #'*3DTransform',
	#timestamp : ''
}
Point >> z [

	^ 0.0
]
