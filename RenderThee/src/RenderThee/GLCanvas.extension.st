Extension { #name : #GLCanvas }

{ #category : #'*RenderThee-LayerTree' }
GLCanvas >> imageStoreClass [

	^ RtFramebufferStore
]

{
	#category : #'*RenderThee-LayerTree',
	#'squeak_changestamp' : 'stlu 3/9/2021 18:10'
}
GLCanvas >> paintImageStore: aStore sourceRect: sourceRect [

	self bindAndUseProgram: self textureProgram during: [
		aStore glTextureDo: [:texture |
			texture boundDuring: [
				self textureProgram uniforms
					sourcePosition: sourceRect origin asFloatPoint / aStore extent asFloatPoint;
					sourceExtent: sourceRect extent asFloatPoint / aStore extent asFloatPoint;
					modelMatrix: transform * (Matrix4x4 withScale: aStore extent @ 1.0).
				
				GL drawArrays: GL_TRIANGLE_STRIP with: 0 with: 4]]].
]
