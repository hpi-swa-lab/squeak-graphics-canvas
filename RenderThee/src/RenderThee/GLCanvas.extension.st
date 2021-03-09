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
	#timestamp : 'stlu 3/9/2021 15:58'
}
GLCanvas >> paintImageStore: aStore sourceRect: sourceRect [

	self bindAndUseProgram: self textureProgram during: [
			aStore glTextureDo: [:texture |
				texture boundDuring: [
					self textureProgram uniforms
						sourcePosition: sourceRect origin asFloatPoint / aStore extent asFloatPoint;
						sourceExtent: sourceRect extent asFloatPoint / aStore extent asFloatPoint;
						image: 0;
						mvp: transform * (Matrix4x4 withScale: aStore extent @ 1.0).
					
					GL drawArrays: GL_TRIANGLE_STRIP with: 0 with: 4]]].
]
