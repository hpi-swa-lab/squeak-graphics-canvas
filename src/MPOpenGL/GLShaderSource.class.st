Class {
	#name : #GLShaderSource,
	#superclass : #GLObject,
	#instVars : [
		'code'
	],
	#category : #'MPOpenGL-Shaders'
}

{ #category : #'instance creation' }
GLShaderSource class >> context: glContext [

	self shouldNotImplement
]

{ #category : #'instance creation' }
GLShaderSource class >> context: glContext code: aString [

	^ self basicNew
		initializeWith: glContext code: aString;
		yourself
]

{ #category : #accessing }
GLShaderSource >> code [

	^ code
]

{ #category : #accessing }
GLShaderSource >> code: anObject [

	code := anObject
]

{ #category : #'code from file' }
GLShaderSource >> getShaderInfoLog: vertexShader [

	| infoLogLength infoLog |
	infoLogLength := 4096.
	infoLog := ExternalData
				fromHandle: (ExternalAddress gcallocate: infoLogLength)
				type: ExternalType string.
	gl glGetShaderInfoLog: vertexShader with: infoLogLength with: nil with: infoLog.
	^ infoLog fromCString
]

{ #category : #'shader lifecycle' }
GLShaderSource >> initializeWith: glContext code: aString [

	| utf8 |
	super initializeWith: glContext.
	self code: aString.
	utf8 := code utf8Encoded.
	
	ExternalData allocate: utf8 size + 1 type: ExternalType string do: [:data | | shaderCode status |
		id := gl glCreateShader: self kind.
		
		1 to: utf8 size do: [:index |
			data getHandle byteAt: index put: (utf8 at: index)].
		data getHandle byteAt: utf8 size + 1 put: 0.
		
		shaderCode := (ByteArray new: ExternalType void asPointerType byteSize)
						 	pointerAt: 1 put: data getHandle;
							yourself.
	
		gl glShaderSource: id with: 1 with: shaderCode with: nil.
		gl glCompileShader: id.
		
		status := IntegerArray new: 1.
		gl glGetShaderiv: id with: GL_COMPILE_STATUS with: status.
		status first = 0 ifTrue: [
			self error: self asString , ' shader failed to compile: ', (self getShaderInfoLog: id)]]
]

{ #category : #accessing }
GLShaderSource >> kind [
	^ self subclassResponsibility
]
