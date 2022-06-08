Class {
	#name : #RtImageBatchType,
	#superclass : #RtBatchType,
	#category : #'RenderThee-Batching'
}

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 4/17/2022 13:51'
}
RtImageBatchType class >> fragmentShader [

	^ '#version 330 core
layout(early_fragment_tests) in;
in vec2 vImageCoords;

out vec4 oColor;

uniform sampler2D sImageStore;

void main() {
	oColor = texture(sImageStore, vImageCoords);
}'
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 6/7/2022 15:25'
}
RtImageBatchType class >> vertexShader [

	^ '#version 330 core
#define MAX_VERTEX_TEXTURE_WIDTH 512u

layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aInstanceData;

out vec2 vImageCoords;

uniform sampler2D sPersistentStoreF;
// uniform isampler2D sPersistentStoreI;
uniform sampler2D sTransientStoreF;
// uniform isampler2D sTransientStoreI;
// uniform sampler2D sGlyphStore;
// uniform sampler2D sColorStore;
// uniform sampler2D sImageStore;

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
	int boundsIndex = aInstanceData.x;
	int clipRectIndex = aInstanceData.y;
	int transformIndex = aInstanceData.z;
	int atlasRegionIndex = aInstanceData.w;

	Rectangle bounds = fetchRectangle(sTransientStoreF, boundsIndex);
	vec4 data = fetch(sTransientStoreF, boundsIndex+1);
	float z = data.x;
	Rectangle imageBounds = fetchRectangle(sPersistentStoreF, atlasRegionIndex);

	Rectangle clipRect = fetchRectangle(sTransientStoreF, clipRectIndex);
	mat4 modelMatrix = fetchTransform(sTransientStoreF, transformIndex);
	
	/* Processing */
	Rectangle visibleBounds = intersect(bounds, clipRect);

	vec2 vertexPosition = visibleBounds.origin + (aPosition * extent(visibleBounds));
	gl_Position = uProjectionMatrix * modelMatrix * vec4(vertexPosition, z, 1.0);

	vec2 relativeImagePosition = (vertexPosition - bounds.origin) / extent(bounds);
	vImageCoords = imageBounds.origin + (extent(imageBounds) * relativeImagePosition);
	vImageCoords = vImageCoords / MAX_VERTEX_TEXTURE_WIDTH;
}'
]
