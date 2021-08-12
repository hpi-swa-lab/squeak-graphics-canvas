Class {
	#name : #RtRectangleBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 7/7/2021 22:44'
}
RtRectangleBatch >> ellipse: aRectangle fillColor: aColor clipRect: clipRectIndex transform: transformIndex z: zIndex [

	| w h r |
	w := aRectangle width asFloat.
	h := aRectangle height asFloat.
	r := w min: h.
	self
		rectangle: aRectangle
		radius: r
		scale: (r / w) @ (r / h)
		fillColor: aColor
		clipRect: clipRectIndex
		transform: transformIndex
		z: zIndex
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 7/8/2021 15:25'
}
RtRectangleBatch >> fragmentShader [

	^ '#version 330 core
in vec4 vFillColor;
in vec2 vExtent;
in float vCornerRadius;
in vec2 vCenterOffset;

out vec4 oColor;

struct RectWithExtent {
		vec2 origin;
		vec2 extent;
};

float computeAARange(vec2 position) {
	vec2 w = fwidth(position);
	return inversesqrt(0.5 * dot(w, w));
}

float distanceAA(float aaRange, float signedDistance) {
	float dist = signedDistance * aaRange;
	return clamp(0.5 - dist, 0.0, 1.0);
}

float signedDistanceRectangle(vec2 localPoint, vec2 extent) {
	vec2 d = abs(localPoint) - extent;
	return length(max(d, vec2(0.0))) + min(max(d.x,d.y), 0.0);
}

float signedDistanceRoundedRectangle(vec2 localPoint, vec2 extent, float radius) {
	return signedDistanceRectangle(localPoint, extent) - radius;
}

void main() {
	float aaRange = computeAARange(vCenterOffset);
	float dist = signedDistanceRoundedRectangle(vCenterOffset, vExtent, vCornerRadius);
	vec4 color = vFillColor;
	float alpha = distanceAA(aaRange, dist);

	oColor = vec4(color.rgb, color.a * alpha);
}'
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 7/8/2021 16:58'
}
RtRectangleBatch >> rectangle: aRectangle radius: radius fillColor: aColor clipRect: clipRectIndex transform: transformIndex z: zIndex [

	| offset primHeaderIndex colorIndex |
	aRectangle hasPositiveExtent ifFalse: [^ self].
	
	primHeaderIndex := (primHeadersFTexture
							add: aRectangle left asFloat
							add: aRectangle top asFloat
							add: aRectangle width asFloat
							add: aRectangle height asFloat
							add: radius asFloat) / 8.
	
	colorIndex := colorsTexture add: aColor.
	primHeadersITexture
		add: colorIndex - 1
		add: colorIndex - 1
		add: colorIndex - 1
		add: colorIndex - 1.
	
	offset := instanceIndex * 4.
	instanceData
		at: offset + 1 put: primHeaderIndex - 1;
		at: offset + 2 put: transformIndex - 1;
		at: offset + 3 put: clipRectIndex - 1;
		at: offset + 4 put: zIndex.
	instanceIndex := instanceIndex + 1.
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 7/7/2021 22:16'
}
RtRectangleBatch >> rectangle: aRectangle radius: radius scale: cornerScale fillColor: aColor clipRect: clipRectIndex transform: transformIndex z: zIndex [

	| offset primHeaderIndex |
	aRectangle hasPositiveExtent ifFalse: [^ self].
	
	primHeaderIndex := (primHeadersFTexture
							add: aRectangle left asFloat
							add: aRectangle top asFloat
							add: aRectangle width asFloat
							add: aRectangle height asFloat
							add: aColor red
							add: aColor green
							add: aColor blue
							add: aColor alpha
							add: radius asFloat
							add: cornerScale x asFloat
							add: cornerScale y asFloat) / 16.
	
	offset := instanceIndex * 4.
	instanceData
		at: offset + 1 put: primHeaderIndex - 1;
		at: offset + 2 put: transformIndex - 1;
		at: offset + 3 put: clipRectIndex - 1;
		at: offset + 4 put: zIndex.
	instanceIndex := instanceIndex + 1.
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 7/8/2021 20:03'
}
RtRectangleBatch >> vertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aInstanceData;

out vec4 vFillColor;
out float vCornerRadius;
out vec2 vExtent;
out vec2 vCenterOffset;

uniform sampler2D sPrimHeadersF;
uniform isampler2D sPrimHeadersI;
uniform sampler2D sTransforms;
uniform sampler2D sClipRects;
uniform sampler2D sColors;
// uniform sampler2D sGPUCache;

uniform mat4 uProjectionMatrix; //orthographic projection

#define MAX_VERTEX_TEXTURE_WIDTH 512u
#define VECS_PER_PRIMITIVE_HEADER_F 2u
#define VECS_PER_PRIMITIVE_HEADER_I 1u
#define VECS_PER_TRANSFORM 2u
#define VECS_PER_CLIPRECT 1u
#define VECS_PER_COLOR 1u

// vec4 fetchFromGPUCache1(int index) {
//     ivec2 address = getGPUCacheFetchAddress(index);
//     return texelFetch(sGPUCache, address, 0);
// }

ivec2 getFetchAddress(int index, uint vecsPerIndex) {
	return ivec2(int(vecsPerIndex * (uint(index) % (MAX_VERTEX_TEXTURE_WIDTH / vecsPerIndex))),
								int(uint(index) / (MAX_VERTEX_TEXTURE_WIDTH / vecsPerIndex)));
}

ivec2 getFetchAddress(int index) {
    return ivec2(uint(index) % MAX_VERTEX_TEXTURE_WIDTH,
                 uint(index) / MAX_VERTEX_TEXTURE_WIDTH);
}

struct RectWithExtent {
	vec2 origin;
	vec2 extent;
};

RectWithExtent intersect(RectWithExtent a, RectWithExtent b) {
	RectWithExtent result;
	result.origin = max(a.origin, b.origin);
	result.extent = min(a.origin + a.extent, b.origin + b.extent) - result.origin;

	return result;
}

struct Instance {
	int primHeaderIndex;
	int transformIndex;
	int clipRectIndex;
	int z;
};

Instance decodeInstanceAttributes() {
	Instance instance;

	instance.primHeaderIndex = aInstanceData.x;
	instance.transformIndex = aInstanceData.y;
	instance.clipRectIndex = aInstanceData.z;
	instance.z = aInstanceData.w;

	return instance;
}

struct PrimitiveHeader {
	RectWithExtent bounds;
	int colorIndex;
	float radius;
	// vec2 scale;
};

PrimitiveHeader fetchPrimHeader(int primitiveIndex) {
	PrimitiveHeader primHeader;

	ivec2 addressF = getFetchAddress(primitiveIndex, VECS_PER_PRIMITIVE_HEADER_F);
	vec4 fData1 = texelFetch(sPrimHeadersF, addressF, 0);
	vec4 fData2 = texelFetchOffset(sPrimHeadersF, addressF, 0, ivec2(1, 0));

	ivec2 addressI = getFetchAddress(primitiveIndex, VECS_PER_PRIMITIVE_HEADER_I);
	ivec4 iData1 = texelFetch(sPrimHeadersI, addressI, 0);

	primHeader.bounds = RectWithExtent(fData1.xy, fData1.zw);
	primHeader.radius = fData2.x;
	primHeader.colorIndex = iData1.x;

	return primHeader;
}

mat4 fetchTransform(int transformIndex) {
	ivec2 address = getFetchAddress(transformIndex, VECS_PER_TRANSFORM);
	vec4 t1 = texelFetch(sTransforms, address, 0);
	vec4 t2 = texelFetchOffset(sTransforms, address, 0, ivec2(1, 0));
	return mat4x4(
					t1[0], t1[1], 0.0, 0.0,
					t1[2], t1[3], 0.0, 0.0,
					0.0, 0.0, 1.0, 0.0,
					t2[0], t2[1], 0.0, 1.0);
}

RectWithExtent fetchClipRect(int index) {
	ivec2 address = getFetchAddress(index, VECS_PER_CLIPRECT);
	vec4 rawClipRect = texelFetch(sClipRects, address, 0);
	return RectWithExtent(rawClipRect.xy, rawClipRect.zw);
}

vec4 fetchColor(int index) {
	ivec2 address = getFetchAddress(index);
	return texelFetch(sColors, address, 0);
}

void main() {
	Instance instance = decodeInstanceAttributes();
	PrimitiveHeader primHeader = fetchPrimHeader(instance.primHeaderIndex);
	mat4x4 modelMatrix = fetchTransform(instance.transformIndex);
	RectWithExtent clipRect = fetchClipRect(instance.clipRectIndex);

	RectWithExtent bounds = primHeader.bounds;
	RectWithExtent clippedBounds = intersect(bounds, clipRect);
	float z = float(instance.z);
	vec4 fillColor = fetchColor(primHeader.colorIndex);
	
	vec2 vertexPosition = clippedBounds.origin + (aPosition * clippedBounds.extent);

	gl_Position = uProjectionMatrix * modelMatrix * vec4(vertexPosition, z, 1.0);
	vFillColor = fillColor;

	vec2 halfExtent = 0.5 * bounds.extent;
	vCornerRadius = primHeader.radius;
	vExtent = halfExtent - vec2(vCornerRadius);
	vCenterOffset = (aPosition - 0.5) * bounds.extent;
}'
]
