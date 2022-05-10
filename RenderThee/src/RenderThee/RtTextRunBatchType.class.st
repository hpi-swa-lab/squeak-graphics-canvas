Class {
	#name : #RtTextRunBatchType,
	#superclass : #RtBatchType,
	#category : #'RenderThee-Batching'
}

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 4/17/2022 13:50'
}
RtTextRunBatchType class >> fragmentShader [

	^ '#version 330 core
layout(early_fragment_tests) in;
in vec4 vTextColor;
in vec2 vGlyphCoords;

out vec4 oColor;

uniform sampler2D sGlyphStore;

void main() {
	vec4 texel = texture(sGlyphStore, vGlyphCoords);
	vec4 alpha = vec4(vec3(1.0) - texel.rgb, texel.a);
	oColor = vTextColor * alpha;
}'
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 4/21/2022 20:26'
}
RtTextRunBatchType class >> vertexShader [

	^ '#version 330 core
#define MAX_VERTEX_TEXTURE_WIDTH 512u

layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aInstanceData;

out vec4 vTextColor;
out vec2 vGlyphCoords;

uniform sampler2D sPersistentStoreF;
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
	int textRunIndex = aInstanceData.x;
	int charIndex = aInstanceData.y;
	int glyphIndex = aInstanceData.z;
	int textRunBoundsIndex = aInstanceData.w;

	ivec4 textRun = fetch(sTransientStoreI, textRunIndex);
	int clipRectIndex = textRun.x;
	int transformIndex = textRun.y;
	int textColorIndex = textRun.z;
	float z = float(textRun.w);

	Rectangle clipRect = fetchRectangle(sTransientStoreF, clipRectIndex);
	mat4 modelMatrix = fetchTransform(sTransientStoreF, transformIndex);
	vTextColor = fetch(sColorStore, textColorIndex);
	Rectangle textRunBounds = fetchRectangle(sTransientStoreF, textRunBoundsIndex);

	int charDataIndex = textRunBoundsIndex + 1 + int(uint(charIndex) >> 2);
	vec4 charData = fetch(sTransientStoreF, charDataIndex);
	float charRightOffset = charData[uint(charIndex) % 4U];

	Rectangle glyphBounds = fetchRectangle(sPersistentStoreF, glyphIndex);

	/* Processing */
	vec2 charExtent = extent(glyphBounds);
	vec2 charOffset = textRunBounds.origin + vec2(charRightOffset - charExtent.x, 0.0);
	Rectangle charBounds = Rectangle(charOffset, charOffset + charExtent);
	Rectangle visibleBounds = intersect(clipRect, charBounds);
	
	vec2 vertexPosition = visibleBounds.origin + (aPosition * extent(visibleBounds));
	gl_Position = uProjectionMatrix * modelMatrix * vec4(vertexPosition, z, 1.0);

	vec2 relativeGlyphPosition = (vertexPosition - charBounds.origin) / charExtent;
	vGlyphCoords = glyphBounds.origin + (extent(glyphBounds) * relativeGlyphPosition);
	vGlyphCoords = vGlyphCoords / MAX_VERTEX_TEXTURE_WIDTH;
}'
]
