Class {
	#name : #RtRectangleBatchType,
	#superclass : #RtBatchType,
	#instVars : [
		'transientStoreF'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 4/17/2022 13:49'
}
RtRectangleBatchType class >> fragmentShader [

	^ '#version 330 core
layout(early_fragment_tests) in;
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
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 4/21/2022 13:43'
}
RtRectangleBatchType class >> vertexShader [

	^ '#version 330 core
#define MAX_VERTEX_TEXTURE_WIDTH 512u

layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aInstanceData;

out vec4 vFillColor;
out float vCornerRadius;
out vec2 vExtent;
out vec2 vCenterOffset;

// uniform sampler2D sPersistentStoreF;
// uniform isampler2D sPersistentStoreI;
uniform sampler2D sTransientStoreF;
uniform isampler2D sTransientStoreI;
// uniform sampler2D sGlyphStore;
uniform sampler2D sColorStore;

uniform mat4 uProjectionMatrix; //orthographic projection

ivec2 getFetchAddress(int index) {
    return ivec2(uint(index) % MAX_VERTEX_TEXTURE_WIDTH,
                 uint(index) / MAX_VERTEX_TEXTURE_WIDTH);
}

struct Rectangle {
	vec2 origin;
	vec2 corner;
};

Rectangle intersect(Rectangle a, Rectangle b) {
	Rectangle result;
	result.origin = max(a.origin, b.origin);
	result.corner = min(a.corner, b.corner);
	return result;
}

vec2 extent(Rectangle r) {
	return r.corner - r.origin;
}

mat4 fetchTransform(sampler2D store, int index) {
	ivec2 address1 = getFetchAddress(index);
	ivec2 address2 = getFetchAddress(index+1);
	vec4 t1 = texelFetch(store, address1, 0);
	vec4 t2 = texelFetch(store, address2, 0);
	return mat4x4(
		t1[0], t1[1], 0.0, 0.0,
		t1[2], t1[3], 0.0, 0.0,
		0.0, 0.0, 1.0, 0.0,
		t2[0], t2[1], 0.0, 1.0);
}

Rectangle fetchRectangle(sampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	vec4 data = texelFetch(store, address, 0);
	return Rectangle(data.xy, data.zw);
}

ivec4 fetch(isampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	return texelFetch(store, address, 0);
}

vec4 fetch(sampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	return texelFetch(store, address, 0);
}

void main() {
	/* Fetch data */
	int rectangleIndex = aInstanceData.x;
	int clipRectIndex = aInstanceData.y;
	int transformIndex = aInstanceData.z;
	int fillColorIndex = aInstanceData.w;

	Rectangle rectangleBounds = fetchRectangle(sTransientStoreF, rectangleIndex);
	vec4 rectangleData = fetch(sTransientStoreF, rectangleIndex+1);
	vCornerRadius = rectangleData.x;
	float z = rectangleData.y;

	Rectangle clipRect = fetchRectangle(sTransientStoreF, clipRectIndex);
	mat4 modelMatrix = fetchTransform(sTransientStoreF, transformIndex);
	vFillColor = fetch(sColorStore, fillColorIndex);
	
	/* Processing */
	Rectangle visibleBounds = intersect(rectangleBounds, clipRect);

	vec2 vertexPosition = visibleBounds.origin + (aPosition * extent(visibleBounds));
	gl_Position = uProjectionMatrix * modelMatrix * vec4(vertexPosition, z, 1.0);

	vec2 halfExtent = 0.5 * extent(rectangleBounds);
	vExtent = halfExtent - vec2(vCornerRadius);
	vCenterOffset = (aPosition - 0.5) * extent(rectangleBounds);
}'
]
