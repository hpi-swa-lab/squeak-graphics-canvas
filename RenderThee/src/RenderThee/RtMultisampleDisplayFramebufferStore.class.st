Class {
	#name : #RtMultisampleDisplayFramebufferStore,
	#superclass : #RtDisplayFramebufferStore,
	#instVars : [
		'samples'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #drawing }
RtMultisampleDisplayFramebufferStore >> canvasDo: aBlock [

	| multiSampleFramebuffer multiSampleTexture |
	
	super canvasDo: [:c |
		multiSampleTexture := GL2DMultisampleTexture create.
		multiSampleTexture bind.
		self glLibrary texImage2DMultisample: GL_TEXTURE_2D_MULTISAMPLE with: self samples with: GL_RGBA8 with: self extent x truncated with: self extent y truncated with: GL_FALSE.
		
		self glLibrary checkForError.
		
		multiSampleFramebuffer := GLFrameBuffer create.
		multiSampleFramebuffer boundDuring: [
			self glLibrary framebufferTexture2D: GL_FRAMEBUFFER with: GL_COLOR_ATTACHMENT0 with: GL_TEXTURE_2D_MULTISAMPLE with: multiSampleTexture id with: 0.
			c framebuffer: multiSampleFramebuffer.
			self glLibrary clearColor: 1 with: 1 with: 1 with: 0.
			self glLibrary clear: GL_COLOR_BUFFER_BIT.
			
			self glLibrary checkForError.
			
			aBlock value: c].
		
		self glLibrary checkForError.
		
		multiSampleFramebuffer boundToReadDuring: [
			self glLibrary drawBuffer: GL_BACK.
			self glLibrary blitFramebuffer: 0 with: 0 with: self extent x truncated with: self extent y truncated with: 0 with: 0 with: self extent x truncated with: self extent y truncated with: GL_COLOR_BUFFER_BIT with: GL_NEAREST].
		
		multiSampleFramebuffer delete.
		multiSampleTexture delete.
		
		self glLibrary checkForError.
	]
]

{ #category : #'initialize-release' }
RtMultisampleDisplayFramebufferStore >> initialize [
	
	self samples: 1.
]

{ #category : #initialization }
RtMultisampleDisplayFramebufferStore >> initializeGLSettings [
	
	super initializeGLSettings.
	GL enable: GL_MULTISAMPLE.
]

{ #category : #accessing }
RtMultisampleDisplayFramebufferStore >> samples [
	
	^ samples
]

{ #category : #accessing }
RtMultisampleDisplayFramebufferStore >> samples: anInteger [
	
	samples := anInteger
]
