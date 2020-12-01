Extension { #name : #GLCanvas }

{
	#category : #'*RenderThee-LayerTree',
	#timestamp : ''
}
GLCanvas >> imageStoreClass [

	^ RtFramebufferStore
]

{
	#category : #'*RenderThee-LayerTree',
	#timestamp : ''
}
GLCanvas >> paintImageStore: aStore sourceRect: sourceRect [

	self boundDuring: [
		self textureProgram useDuring: [
			aStore glTextureDo: [:texture |
				texture boundDuring: [
					self textureProgram
						sourcePosition: sourceRect origin asFloatPoint / aStore extent asFloatPoint;
						sourceExtent: sourceRect extent asFloatPoint / aStore extent asFloatPoint;
						mvp: transform * (Matrix4x4 withScale: aStore extent @ 1.0).
					self vbo draw: GL_TRIANGLE_STRIP]]]]
]
