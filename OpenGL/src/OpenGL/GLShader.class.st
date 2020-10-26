Class {
	#name : #GLShader,
	#superclass : #GLObject,
	#instVars : [
		'code'
	],
	#category : #'OpenGL-Shaders'
}

{ #category : #'instance creation' }
GLShader class >> context: glContext [

	self shouldNotImplement
]

{ #category : #'instance creation' }
GLShader class >> context: glContext code: aString [

	^ self basicNew
		initializeWithContext: glContext code: aString;
		yourself
]

{ #category : #accessing }
GLShader >> code [

	^ code
]

{ #category : #accessing }
GLShader >> code: anObject [

	code := anObject
]

{ #category : #'code from file' }
GLShader >> getShaderInfoLog: vertexShader [

	| infoLogLength infoLog |
	infoLogLength := 4096.
	infoLog := ExternalData
				fromHandle: (ExternalAddress gcallocate: infoLogLength)
				type: ExternalType string.
	GL glGetShaderInfoLog: vertexShader with: infoLogLength with: nil with: infoLog.
	^ infoLog fromCString
]

{ #category : #'shader lifecycle' }
GLShader >> initializeWithContext: glContext code: aString [

	| utf8 |
	super initialize.
	self code: aString.
	utf8 := code utf8Encoded.
	
	ExternalData allocate: utf8 size + 1 type: ExternalType string do: [:data | | shaderCode status |
		id := GL glCreateShader: self kind.
		
		1 to: utf8 size do: [:index |
			data getHandle byteAt: index put: (utf8 at: index)].
		data getHandle byteAt: utf8 size + 1 put: 0.
		
		shaderCode := (ByteArray new: ExternalType void asPointerType byteSize)
						 	pointerAt: 1 put: data getHandle;
							yourself.
	
		GL glShaderSource: id with: 1 with: shaderCode with: nil.
		GL glCompileShader: id.
		
		status := IntegerArray new: 1.
		GL glGetShaderiv: id with: GL_COMPILE_STATUS with: status.
		status first = 0 ifTrue: [
			self error: self asString , ' shader failed to compile: ', (self getShaderInfoLog: id)]]
]

{ #category : #accessing }
GLShader >> kind [
	^ self subclassResponsibility
]
