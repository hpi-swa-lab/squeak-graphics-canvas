"
I am an abstract OpenGL program for rendering a primitive that needs to support different FillStyles.

"
Class {
	#name : #GLCanvasFillStyleProgram,
	#superclass : #GLStaticProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasFillStyleProgram class >> fragmentShader [

	^ self fragmentShaderPrimitivePreamble , self fragmentShaderFillColor , self fragmentShaderMain
]

{
	#category : #'fill styles',
	#timestamp : ''
}
GLCanvasFillStyleProgram class >> fragmentShaderBitmapFillStyle [
	
	^ 'uniform sampler2D form;
uniform vec2 formOrigin;
uniform vec2 formDirection;
uniform vec2 formNormal;

vec4 getColor()
{
	vec2 relativePoint = point - origin - formOrigin;
	vec2 texCoord = vec2(dot(relativePoint, normalize(formDirection)) / length(formDirection),
						    dot(relativePoint, normalize(formNormal)) / length(formNormal));
	return texture(form, texCoord);
}'
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasFillStyleProgram class >> fragmentShaderFillColor [

	self subclassResponsibility.
]

{
	#category : #'fill styles',
	#timestamp : ''
}
GLCanvasFillStyleProgram class >> fragmentShaderGradientFillStyle [

	^ 'uniform sampler2D pixelRamp;
uniform vec2 gradientOrigin;
uniform vec2 gradientDirection;
uniform bool gradientRadial;

vec4 getColor()
{
	float texCoord = mix(
		dot(gradientOrigin - point, normalize(-gradientDirection)),
		length(gradientOrigin - point),
		gradientRadial) / length(gradientDirection);
	return texture(pixelRamp, vec2(texCoord,0));
}'
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasFillStyleProgram class >> fragmentShaderMain [

	self subclassResponsibility.
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasFillStyleProgram class >> fragmentShaderPrimitivePreamble [

	self subclassResponsibility.
]

{
	#category : #'fill styles',
	#timestamp : ''
}
GLCanvasFillStyleProgram class >> fragmentShaderSolidFillStyle [
	
	^ 'uniform vec4 color;

vec4 getColor()
{
	return color;
}'
]
