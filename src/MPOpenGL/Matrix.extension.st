Extension { #name : #Matrix }

{ #category : #'*MPOpenGL' }
Matrix >> putAtGL: gl Uniform: location [

	(ncols = 4 and: [nrows = 4]) ifTrue: [
		^ gl glUniformMatrix4fv: location with: 1 with: GLConstants GL_FALSE with: self asFloat32Array].
	self notYetImplemented
]

{ #category : #'*MPOpenGL' }
Matrix class >> rotateXBy: degrees [
	^self rows: 4 columns: 4 contents: {
		1. 0. 0. 0.
	  	0. (degrees cos) rounded. (0-degrees sin) rounded. 0.
	  	0. (degrees sin) rounded. (degrees cos) rounded. 0.
	  	0. 0. 0. 1} asFloatArray
	
]

{ #category : #'*MPOpenGL' }
Matrix class >> rotateYBy: degrees [
	^self rows: 4 columns: 4 contents: {
		(degrees cos). 0. (degrees sin). 0.
		0. 1. 0. 0.
		(0 - degrees sin). 0. (degrees cos). 0.
		0. 0. 0. 1} asFloatArray
	
]

{ #category : #'*MPOpenGL' }
Matrix class >> rotateZBy: radians [
	^self rows: 4 columns: 4 contents: {
		(radians cos). (radians sin negated). 0. 0.
		(radians sin). (radians cos). 0. 0.
		0. 0. 1. 0.
		0. 0. 0. 1. } asFloatArray 
]

{ #category : #'*MPOpenGL' }
Matrix class >> rotateZByDegree: degree [
	^self rows: 4 columns: 4 contents: {
		(degree degreesToRadians cos). (degree degreesToRadians sin negated). 0. 0.
		(degree degreesToRadians sin). (degree degreesToRadians cos). 0. 0.
		0. 0. 1. 0.
		0. 0. 0. 1. } asFloatArray 
]

{ #category : #'*MPOpenGL' }
Matrix class >> scaleX: x y: y [
	^ self scaleX: x y: y z: 1
]

{ #category : #'*MPOpenGL' }
Matrix class >> scaleX: x y: y z: z [
	^ self rows: 4 columns: 4 contents: {
		x. 0. 0. 0.
		0. y. 0. 0.
		0. 0. z. 0.
		0. 0. 0. 1}
]

{ #category : #'*MPOpenGL' }
Matrix class >> translateX: x y: y [
	^ self translateX: x y: y z: 0
]

{ #category : #'*MPOpenGL' }
Matrix class >> translateX: x y: y z: z [
	^ self rows: 4 columns: 4 contents: {
		1. 0. 0. 0.
		0. 1. 0. 0.
		0. 0. 1. 0.
		x. y. z. 1}
	
]
