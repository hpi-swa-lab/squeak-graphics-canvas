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
	#timestamp : 'stlu 3/9/2021 12:51'
}
GLCanvas >> paintImageStore: aStore sourceRect: sourceRect [

	self bindAndUseProgram: self textureProgram during: [
			aStore glTextureDo: [:texture |
				texture boundDuring: [
					self textureProgram
						sourcePosition: sourceRect origin asFloatPoint / aStore extent asFloatPoint;
						sourceExtent: sourceRect extent asFloatPoint / aStore extent asFloatPoint;
						image: 0;
						mvp: transform * (Matrix4x4 withScale: aStore extent @ 1.0).
			
					self vbo boundDuring: [
						self textureProgram inputs aPos components: 2 stride: 16 offset: 0.
						GL checkForError.
						self textureProgram inputs aTexCoords components: 2 stride: 16 offset: 8.
						GL checkForError].
					
					self vbo draw: GL_TRIANGLE_STRIP]]].
]
