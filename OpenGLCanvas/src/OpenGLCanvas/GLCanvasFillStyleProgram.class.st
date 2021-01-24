Class {
	#name : #GLCanvasFillStyleProgram,
	#superclass : #GLStaticProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> fillStyleUniforms [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> fragmentShader [

	^ self fragmentShaderPrimitivePreamble , self fragmentShaderFillColor , self fragmentShaderMain
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> fragmentShaderBitmapFillStyle [
	
	^ 'uniform sampler2D form;
uniform vec2 formOrigin;
uniform vec2 formDirection;
uniform vec2 formNormal;

vec4 getColor() {
	vec2 texCoord = vec2(dot(formOrigin - point, normalize(-formDirection)) / length(formDirection),
						    dot(formOrigin - point, normalize(-formNormal)) / length(formNormal));
	return texture(form, texCoord);
}'
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> fragmentShaderFillColor [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> fragmentShaderGradientFillStyle [

	^ 'uniform sampler2D pixelRamp;
uniform vec2 gradientOrigin;
uniform vec2 gradientDirection;
uniform bool gradientRadial;

vec4 getColor() {
	float texCoord = mix(
		dot(gradientOrigin - point, normalize(-gradientDirection)),
		length(gradientOrigin - point),
		gradientRadial) / length(gradientDirection);
	return texture(pixelRamp, vec2(texCoord,0));
}'
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> fragmentShaderMain [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> fragmentShaderPrimitivePreamble [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> fragmentShaderSolidFillStyle [
	
	^ 'uniform vec4 color;

vec4 getColor() {
	return color;
}'
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> primitiveUniforms [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> uniforms [

	^ self primitiveUniforms , self fillStyleUniforms
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> uniformsBitmapFillStyle [

	^ #('form' 'formOrigin' 'formDirection' 'formNormal')
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> uniformsGradientFillStyle [

	^ #('pixelRamp' 'gradientOrigin' 'gradientDirection' 'gradientRadial')
]

{ #category : #'as yet unclassified' }
GLCanvasFillStyleProgram class >> uniformsSolidFillStyle [

	^ #('color')
]
