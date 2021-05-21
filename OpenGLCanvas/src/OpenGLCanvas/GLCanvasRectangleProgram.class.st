Class {
	#name : #GLCanvasRectangleProgram,
	#superclass : #GLCanvasFillStyleProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasRectangleProgram class >> fragmentShaderMain [

	^ 'void main()
{
	vec2 relativePos = point - origin;
	vec2 relativePosFromCircle = abs(relativePos - extent/2.0) - (extent/2.0 - vec2(cornerRadius, cornerRadius));
	bool inCorner = all(greaterThan(relativePosFromCircle, vec2(0.0, 0.0)));
	float circleDistance = dot(relativePosFromCircle, relativePosFromCircle);
	
	if (inCorner && circleDistance > cornerRadius * cornerRadius )
	{
		discard;
	}
	
	float innerCornerRadius = cornerRadius - borderWidth;
	vec2 b = vec2(borderWidth, borderWidth);
	FragColor = mix(
		getColor(),
		borderColor,
		float(any(lessThan(relativePos, b)) || any(greaterThan(point - origin, extent - b))  ||
			(inCorner && circleDistance > innerCornerRadius * innerCornerRadius))
		);
}'
]

{ #category : #'shader code' }
GLCanvasRectangleProgram class >> fragmentShaderPrimitivePreamble [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec2 extent;
uniform vec2 origin;
uniform vec4 borderColor;
uniform float borderWidth;
uniform float cornerRadius;'
]

{
	#category : #'shader code',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:51'
}
GLCanvasRectangleProgram class >> vertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPos;

uniform mat4 projectionMatrix;
uniform mat4 modelMatrix;
uniform vec2 extent;
uniform vec2 origin;

out vec2 point;

void main()
{
	point = origin + aPos * extent;
	gl_Position = projectionMatrix * modelMatrix * vec4(point, 0.0, 1.0);
}'
]
