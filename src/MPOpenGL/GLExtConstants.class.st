Class {
	#name : #GLExtConstants,
	#superclass : #SharedPool,
	#classVars : [
		'GLArrayBufferARB',
		'GLArrayBufferBindingARB',
		'GLArrayElementLockCountEXT',
		'GLArrayElementLockFirstEXT',
		'GLBoolARB',
		'GLBoolVec2ARB',
		'GLBoolVec3ARB',
		'GLBoolVec4ARB',
		'GLBufferAccessARB',
		'GLBufferMappedARB',
		'GLBufferSizeARB',
		'GLBufferUsageARB',
		'GLColorArrayBufferBindingARB',
		'GLColorAttachment0EXT',
		'GLColorAttachment10EXT',
		'GLColorAttachment11EXT',
		'GLColorAttachment12EXT',
		'GLColorAttachment13EXT',
		'GLColorAttachment14EXT',
		'GLColorAttachment15EXT',
		'GLColorAttachment1EXT',
		'GLColorAttachment2EXT',
		'GLColorAttachment3EXT',
		'GLColorAttachment4EXT',
		'GLColorAttachment5EXT',
		'GLColorAttachment6EXT',
		'GLColorAttachment7EXT',
		'GLColorAttachment8EXT',
		'GLColorAttachment9EXT',
		'GLColorSumARB',
		'GLCompressedAlphaARB',
		'GLCompressedIntensityARB',
		'GLCompressedLuminanceARB',
		'GLCompressedLuminanceAlphaARB',
		'GLCompressedRgbARB',
		'GLCompressedRgbS3tcDxt1EXT',
		'GLCompressedRgbaARB',
		'GLCompressedRgbaS3tcDxt1EXT',
		'GLCompressedRgbaS3tcDxt3EXT',
		'GLCompressedRgbaS3tcDxt5EXT',
		'GLCompressedTextureFormatsARB',
		'GLCurrentMatrixARB',
		'GLCurrentMatrixStackDepthARB',
		'GLCurrentVertexAttribARB',
		'GLDepthAttachmentEXT',
		'GLDrawFramebufferBindingEXT',
		'GLDrawFramebufferEXT',
		'GLDynamicCopyARB',
		'GLDynamicDrawARB',
		'GLDynamicReadARB',
		'GLEdgeFlagArrayBufferBindingARB',
		'GLElementArrayBufferARB',
		'GLElementArrayBufferBindingARB',
		'GLFloatMat2ARB',
		'GLFloatMat3ARB',
		'GLFloatMat4ARB',
		'GLFloatVec2ARB',
		'GLFloatVec3ARB',
		'GLFloatVec4ARB',
		'GLFogCoordinateArrayBufferBindingARB',
		'GLFragmentShaderARB',
		'GLFragmentShaderDerivativeHintARB',
		'GLFramebufferAttachmentObjectNameEXT',
		'GLFramebufferAttachmentObjectTypeEXT',
		'GLFramebufferAttachmentTexture3dZoffsetEXT',
		'GLFramebufferAttachmentTextureCubeMapFaceEXT',
		'GLFramebufferAttachmentTextureLevelEXT',
		'GLFramebufferBindingEXT',
		'GLFramebufferCompleteEXT',
		'GLFramebufferEXT',
		'GLFramebufferIncompleteAttachmentEXT',
		'GLFramebufferIncompleteDimensionsEXT',
		'GLFramebufferIncompleteDrawBufferEXT',
		'GLFramebufferIncompleteFormatsEXT',
		'GLFramebufferIncompleteMissingAttachmentEXT',
		'GLFramebufferIncompleteReadBufferEXT',
		'GLFramebufferUnsupportedEXT',
		'GLGenerateMipmapHintSGIS',
		'GLGenerateMipmapSGIS',
		'GLIndexArrayBufferBindingARB',
		'GLIntVec2ARB',
		'GLIntVec3ARB',
		'GLIntVec4ARB',
		'GLInvalidFramebufferOperationEXT',
		'GLMatrix0ARB',
		'GLMatrix10ARB',
		'GLMatrix11ARB',
		'GLMatrix12ARB',
		'GLMatrix13ARB',
		'GLMatrix14ARB',
		'GLMatrix15ARB',
		'GLMatrix16ARB',
		'GLMatrix17ARB',
		'GLMatrix18ARB',
		'GLMatrix19ARB',
		'GLMatrix1ARB',
		'GLMatrix20ARB',
		'GLMatrix21ARB',
		'GLMatrix22ARB',
		'GLMatrix23ARB',
		'GLMatrix24ARB',
		'GLMatrix25ARB',
		'GLMatrix26ARB',
		'GLMatrix27ARB',
		'GLMatrix28ARB',
		'GLMatrix29ARB',
		'GLMatrix2ARB',
		'GLMatrix30ARB',
		'GLMatrix31ARB',
		'GLMatrix3ARB',
		'GLMatrix4ARB',
		'GLMatrix5ARB',
		'GLMatrix6ARB',
		'GLMatrix7ARB',
		'GLMatrix8ARB',
		'GLMatrix9ARB',
		'GLMaxColorAttachmentsEXT',
		'GLMaxCombinedTextureImageUnitsARB',
		'GLMaxFragmentUniformComponentsARB',
		'GLMaxProgramAddressRegistersARB',
		'GLMaxProgramAttribsARB',
		'GLMaxProgramEnvParametersARB',
		'GLMaxProgramInstructionsARB',
		'GLMaxProgramLocalParametersARB',
		'GLMaxProgramMatricesARB',
		'GLMaxProgramMatrixStackDepthARB',
		'GLMaxProgramNativeAddressRegistersARB',
		'GLMaxProgramNativeAttribsARB',
		'GLMaxProgramNativeInstructionsARB',
		'GLMaxProgramNativeParametersARB',
		'GLMaxProgramNativeTemporariesARB',
		'GLMaxProgramParametersARB',
		'GLMaxProgramTemporariesARB',
		'GLMaxRenderbufferSizeEXT',
		'GLMaxTextureCoordsARB',
		'GLMaxTextureImageUnitsARB',
		'GLMaxVaryingFloatsARB',
		'GLMaxVertexAttribsARB',
		'GLMaxVertexTextureImageUnitsARB',
		'GLMaxVertexUniformComponentsARB',
		'GLMultisampleARB',
		'GLMultisampleFilterHintNV',
		'GLNormalArrayBufferBindingARB',
		'GLNumCompressedTextureFormatsARB',
		'GLObjectActiveAttributeMaxLengthARB',
		'GLObjectActiveAttributesARB',
		'GLObjectActiveUniformMaxLengthARB',
		'GLObjectActiveUniformsARB',
		'GLObjectAttachedObjectsARB',
		'GLObjectCompileStatusARB',
		'GLObjectDeleteStatusARB',
		'GLObjectInfoLogLengthARB',
		'GLObjectLinkStatusARB',
		'GLObjectShaderSourceLengthARB',
		'GLObjectSubtypeARB',
		'GLObjectTypeARB',
		'GLObjectValidateStatusARB',
		'GLPixelPackBufferARB',
		'GLPixelPackBufferBindingARB',
		'GLPixelUnpackBufferARB',
		'GLPixelUnpackBufferBindingARB',
		'GLProgramAddressRegistersARB',
		'GLProgramAttribsARB',
		'GLProgramBindingARB',
		'GLProgramErrorPositionARB',
		'GLProgramErrorStringARB',
		'GLProgramFormatARB',
		'GLProgramFormatAsciiARB',
		'GLProgramInstructionsARB',
		'GLProgramLengthARB',
		'GLProgramNativeAddressRegistersARB',
		'GLProgramNativeAttribsARB',
		'GLProgramNativeInstructionsARB',
		'GLProgramNativeParametersARB',
		'GLProgramNativeTemporariesARB',
		'GLProgramObjectARB',
		'GLProgramParametersARB',
		'GLProgramStringARB',
		'GLProgramTemporariesARB',
		'GLProgramUnderNativeLimitsARB',
		'GLReadFramebufferBindingEXT',
		'GLReadFramebufferEXT',
		'GLReadOnlyARB',
		'GLReadWriteARB',
		'GLRenderbufferAlphaSizeEXT',
		'GLRenderbufferBindingEXT',
		'GLRenderbufferBlueSizeEXT',
		'GLRenderbufferDepthSizeEXT',
		'GLRenderbufferEXT',
		'GLRenderbufferGreenSizeEXT',
		'GLRenderbufferHeightEXT',
		'GLRenderbufferInternalFormatEXT',
		'GLRenderbufferRedSizeEXT',
		'GLRenderbufferStencilSizeEXT',
		'GLRenderbufferWidthEXT',
		'GLSampler1dARB',
		'GLSampler1dShadowARB',
		'GLSampler2dARB',
		'GLSampler2dRectARB',
		'GLSampler2dRectShadowARB',
		'GLSampler2dShadowARB',
		'GLSampler3dARB',
		'GLSamplerCubeARB',
		'GLSecondaryColorArrayBufferBindingARB',
		'GLShaderObjectARB',
		'GLStaticCopyARB',
		'GLStaticDrawARB',
		'GLStaticReadARB',
		'GLStencilAttachmentEXT',
		'GLStencilIndex16EXT',
		'GLStencilIndex1EXT',
		'GLStencilIndex4EXT',
		'GLStencilIndex8EXT',
		'GLStreamCopyARB',
		'GLStreamDrawARB',
		'GLStreamReadARB',
		'GLTextureCompressedARB',
		'GLTextureCompressedImageSizeARB',
		'GLTextureCompressionHintARB',
		'GLTextureCoordArrayBufferBindingARB',
		'GLTransposeCurrentMatrixARB',
		'GLVertexArrayBufferBindingARB',
		'GLVertexAttribArrayBufferBindingARB',
		'GLVertexAttribArrayEnabledARB',
		'GLVertexAttribArrayNormalizedARB',
		'GLVertexAttribArrayPointerARB',
		'GLVertexAttribArraySizeARB',
		'GLVertexAttribArrayStrideARB',
		'GLVertexAttribArrayTypeARB',
		'GLVertexProgramARB',
		'GLVertexProgramPointSizeARB',
		'GLVertexProgramTwoSideARB',
		'GLVertexShaderARB',
		'GLWeightArrayBufferBindingARB',
		'GLWriteOnlyARB'
	],
	#category : #'MPOpenGL-Constants'
}

{ #category : #'pool initialization' }
GLExtConstants class >> initialize [
	"GLExtConstants initialize"
	self class selectors do:[:each|
		(each ~~ #initialize and:[each beginsWith: 'initialize']) ifTrue:[
			self perform: each.
		].
	].
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbFragmentShader [
	"This method was automatically generated by OGLExtManager"
	GLFragmentShaderARB := 35632.
	GLMaxFragmentUniformComponentsARB := 35657.
	GLMaxTextureCoordsARB := 34929.
	GLMaxTextureImageUnitsARB := 34930.
	GLFragmentShaderDerivativeHintARB := 35723.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbMultisample [
	"This method was automatically generated by OGLExtManager"
	GLMultisampleARB := 32925.
	GLMultisampleFilterHintNV := 34100.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbMutlisample [
	"This method was automatically generated by OGLExtManager"
	GLMultisampleARB := 32925.
	GLMultisampleFilterHintNV := 34100.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbPixelBufferObject [
	"This method was automatically generated by OGLExtManager"
	GLPixelPackBufferARB := 35051.
	GLPixelUnpackBufferARB := 35052.
	GLPixelPackBufferBindingARB := 35053.
	GLPixelUnpackBufferBindingARB := 35055.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbShaderObjects [
	"This method was automatically generated by OGLExtManager"
	GLProgramObjectARB := 35648.
	GLShaderObjectARB := 35656.
	GLObjectTypeARB := 35662.
	GLObjectSubtypeARB := 35663.
	GLFloatVec2ARB := 35664.
	GLFloatVec3ARB := 35665.
	GLFloatVec4ARB := 35666.
	GLIntVec2ARB := 35667.
	GLIntVec3ARB := 35668.
	GLIntVec4ARB := 35669.
	GLBoolARB := 35670.
	GLBoolVec2ARB := 35671.
	GLBoolVec3ARB := 35672.
	GLBoolVec4ARB := 35673.
	GLFloatMat2ARB := 35674.
	GLFloatMat3ARB := 35675.
	GLFloatMat4ARB := 35676.
	GLSampler1dARB := 35677.
	GLSampler2dARB := 35678.
	GLSampler3dARB := 35679.
	GLSamplerCubeARB := 35680.
	GLSampler1dShadowARB := 35681.
	GLSampler2dShadowARB := 35682.
	GLSampler2dRectARB := 35683.
	GLSampler2dRectShadowARB := 35684.
	GLObjectDeleteStatusARB := 35712.
	GLObjectCompileStatusARB := 35713.
	GLObjectLinkStatusARB := 35714.
	GLObjectValidateStatusARB := 35715.
	GLObjectInfoLogLengthARB := 35716.
	GLObjectAttachedObjectsARB := 35717.
	GLObjectActiveUniformsARB := 35718.
	GLObjectActiveUniformMaxLengthARB := 35719.
	GLObjectShaderSourceLengthARB := 35720.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbTextureCompression [
	"This method was automatically generated by OGLExtManager"
	GLCompressedAlphaARB := 34025.
	GLCompressedLuminanceARB := 34026.
	GLCompressedLuminanceAlphaARB := 34027.
	GLCompressedIntensityARB := 34028.
	GLCompressedRgbARB := 34029.
	GLCompressedRgbaARB := 34030.
	GLTextureCompressionHintARB := 34031.
	GLTextureCompressedImageSizeARB := 34464.
	GLTextureCompressedARB := 34465.
	GLNumCompressedTextureFormatsARB := 34466.
	GLCompressedTextureFormatsARB := 34467.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbTransposeMatrix [
	"This method was automatically generated by OGLExtManager"
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbVertexBufferObject [
	"This method was automatically generated by OGLExtManager"
	GLArrayBufferARB := 34962.
	GLElementArrayBufferARB := 34963.
	GLArrayBufferBindingARB := 34964.
	GLElementArrayBufferBindingARB := 34965.
	GLVertexArrayBufferBindingARB := 34966.
	GLNormalArrayBufferBindingARB := 34967.
	GLColorArrayBufferBindingARB := 34968.
	GLIndexArrayBufferBindingARB := 34969.
	GLTextureCoordArrayBufferBindingARB := 34970.
	GLEdgeFlagArrayBufferBindingARB := 34971.
	GLSecondaryColorArrayBufferBindingARB := 34972.
	GLFogCoordinateArrayBufferBindingARB := 34973.
	GLWeightArrayBufferBindingARB := 34974.
	GLVertexAttribArrayBufferBindingARB := 34975.
	GLStreamDrawARB := 35040.
	GLStreamReadARB := 35041.
	GLStreamCopyARB := 35042.
	GLStaticDrawARB := 35044.
	GLStaticReadARB := 35045.
	GLStaticCopyARB := 35046.
	GLDynamicDrawARB := 35048.
	GLDynamicReadARB := 35049.
	GLDynamicCopyARB := 35050.
	GLReadOnlyARB := 35000.
	GLWriteOnlyARB := 35001.
	GLReadWriteARB := 35002.
	GLBufferSizeARB := 34660.
	GLBufferUsageARB := 34661.
	GLBufferAccessARB := 35003.
	GLBufferMappedARB := 35004.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbVertexProgram [
	"This method was automatically generated by OGLExtManager"
	GLVertexProgramARB := 34336.
	GLVertexProgramPointSizeARB := 34370.
	GLVertexProgramTwoSideARB := 34371.
	GLColorSumARB := 33880.
	GLProgramFormatAsciiARB := 34933.
	GLVertexAttribArrayEnabledARB := 34338.
	GLVertexAttribArraySizeARB := 34339.
	GLVertexAttribArrayStrideARB := 34340.
	GLVertexAttribArrayTypeARB := 34341.
	GLVertexAttribArrayNormalizedARB := 34922.
	GLCurrentVertexAttribARB := 34342.
	GLVertexAttribArrayPointerARB := 34373.
	GLProgramLengthARB := 34343.
	GLProgramFormatARB := 34934.
	GLProgramBindingARB := 34423.
	GLProgramInstructionsARB := 34976.
	GLMaxProgramInstructionsARB := 34977.
	GLProgramNativeInstructionsARB := 34978.
	GLMaxProgramNativeInstructionsARB := 34979.
	GLProgramTemporariesARB := 34980.
	GLMaxProgramTemporariesARB := 34981.
	GLProgramNativeTemporariesARB := 34982.
	GLMaxProgramNativeTemporariesARB := 34983.
	GLProgramParametersARB := 34984.
	GLMaxProgramParametersARB := 34985.
	GLProgramNativeParametersARB := 34986.
	GLMaxProgramNativeParametersARB := 34987.
	GLProgramAttribsARB := 34988.
	GLMaxProgramAttribsARB := 34989.
	GLProgramNativeAttribsARB := 34990.
	GLMaxProgramNativeAttribsARB := 34991.
	GLProgramAddressRegistersARB := 34992.
	GLMaxProgramAddressRegistersARB := 34993.
	GLProgramNativeAddressRegistersARB := 34994.
	GLMaxProgramNativeAddressRegistersARB := 34995.
	GLMaxProgramLocalParametersARB := 34996.
	GLMaxProgramEnvParametersARB := 34997.
	GLProgramUnderNativeLimitsARB := 34998.
	GLProgramStringARB := 34344.
	GLProgramErrorPositionARB := 34379.
	GLCurrentMatrixARB := 34369.
	GLTransposeCurrentMatrixARB := 34999.
	GLCurrentMatrixStackDepthARB := 34368.
	GLMaxVertexAttribsARB := 34921.
	GLMaxProgramMatricesARB := 34351.
	GLMaxProgramMatrixStackDepthARB := 34350.
	GLProgramErrorStringARB := 34932.
	GLMatrix0ARB := 35008.
	GLMatrix1ARB := 35009.
	GLMatrix2ARB := 35010.
	GLMatrix3ARB := 35011.
	GLMatrix4ARB := 35012.
	GLMatrix5ARB := 35013.
	GLMatrix6ARB := 35014.
	GLMatrix7ARB := 35015.
	GLMatrix8ARB := 35016.
	GLMatrix9ARB := 35017.
	GLMatrix10ARB := 35018.
	GLMatrix11ARB := 35019.
	GLMatrix12ARB := 35020.
	GLMatrix13ARB := 35021.
	GLMatrix14ARB := 35022.
	GLMatrix15ARB := 35023.
	GLMatrix16ARB := 35024.
	GLMatrix17ARB := 35025.
	GLMatrix18ARB := 35026.
	GLMatrix19ARB := 35027.
	GLMatrix20ARB := 35028.
	GLMatrix21ARB := 35029.
	GLMatrix22ARB := 35030.
	GLMatrix23ARB := 35031.
	GLMatrix24ARB := 35032.
	GLMatrix25ARB := 35033.
	GLMatrix26ARB := 35034.
	GLMatrix27ARB := 35035.
	GLMatrix28ARB := 35036.
	GLMatrix29ARB := 35037.
	GLMatrix30ARB := 35038.
	GLMatrix31ARB := 35039.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeArbVertexShader [
	"This method was automatically generated by OGLExtManager"
	GLVertexShaderARB := 35633.
	GLMaxVertexUniformComponentsARB := 35658.
	GLMaxVaryingFloatsARB := 35659.
	GLMaxVertexTextureImageUnitsARB := 35660.
	GLMaxCombinedTextureImageUnitsARB := 35661.
	GLObjectActiveAttributesARB := 35721.
	GLObjectActiveAttributeMaxLengthARB := 35722.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeExtCompiledVertexArray [
	"This method was automatically generated by OGLExtManager"
	GLArrayElementLockCountEXT := 33193.
	GLArrayElementLockFirstEXT := 33192.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeExtFramebufferBlit [
	"This method was automatically generated by OGLExtManager"
	GLReadFramebufferEXT := 36008.
	GLDrawFramebufferEXT := 36009.
	GLReadFramebufferBindingEXT := 36006.
	GLDrawFramebufferBindingEXT := 36010.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeExtFramebufferObjects [
	"This method was automatically generated by OGLExtManager"
	GLInvalidFramebufferOperationEXT := 1286.
	GLMaxRenderbufferSizeEXT := 34024.
	GLFramebufferBindingEXT := 36006.
	GLRenderbufferBindingEXT := 36007.
	GLFramebufferAttachmentObjectTypeEXT := 36048.
	GLFramebufferAttachmentObjectNameEXT := 36049.
	GLFramebufferAttachmentTextureLevelEXT := 36050.
	GLFramebufferAttachmentTextureCubeMapFaceEXT := 36051.
	GLFramebufferAttachmentTexture3dZoffsetEXT := 36052.
	GLFramebufferCompleteEXT := 36053.
	GLFramebufferIncompleteAttachmentEXT := 36054.
	GLFramebufferIncompleteMissingAttachmentEXT := 36055.
	GLFramebufferIncompleteDimensionsEXT := 36057.
	GLFramebufferIncompleteFormatsEXT := 36058.
	GLFramebufferIncompleteDrawBufferEXT := 36059.
	GLFramebufferIncompleteReadBufferEXT := 36060.
	GLFramebufferUnsupportedEXT := 36061.
	GLMaxColorAttachmentsEXT := 36063.
	GLColorAttachment0EXT := 36064.
	GLColorAttachment1EXT := 36065.
	GLColorAttachment2EXT := 36066.
	GLColorAttachment3EXT := 36067.
	GLColorAttachment4EXT := 36068.
	GLColorAttachment5EXT := 36069.
	GLColorAttachment6EXT := 36070.
	GLColorAttachment7EXT := 36071.
	GLColorAttachment8EXT := 36072.
	GLColorAttachment9EXT := 36073.
	GLColorAttachment10EXT := 36074.
	GLColorAttachment11EXT := 36075.
	GLColorAttachment12EXT := 36076.
	GLColorAttachment13EXT := 36077.
	GLColorAttachment14EXT := 36078.
	GLColorAttachment15EXT := 36079.
	GLDepthAttachmentEXT := 36096.
	GLStencilAttachmentEXT := 36128.
	GLFramebufferEXT := 36160.
	GLRenderbufferEXT := 36161.
	GLRenderbufferWidthEXT := 36162.
	GLRenderbufferHeightEXT := 36163.
	GLRenderbufferInternalFormatEXT := 36164.
	GLStencilIndex1EXT := 36166.
	GLStencilIndex4EXT := 36167.
	GLStencilIndex8EXT := 36168.
	GLStencilIndex16EXT := 36169.
	GLRenderbufferRedSizeEXT := 36176.
	GLRenderbufferGreenSizeEXT := 36177.
	GLRenderbufferBlueSizeEXT := 36178.
	GLRenderbufferAlphaSizeEXT := 36179.
	GLRenderbufferDepthSizeEXT := 36180.
	GLRenderbufferStencilSizeEXT := 36181.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeExtTextureCompressionS3tc [
	"This method was automatically generated by OGLExtManager"
	GLCompressedRgbS3tcDxt1EXT := 33776.
	GLCompressedRgbaS3tcDxt1EXT := 33777.
	GLCompressedRgbaS3tcDxt3EXT := 33778.
	GLCompressedRgbaS3tcDxt5EXT := 33779.
]

{ #category : #'pool initialization' }
GLExtConstants class >> initializeSgisGenerateMipmap [
	"This method was automatically generated by OGLExtManager"
	GLGenerateMipmapSGIS := 33169.
	GLGenerateMipmapHintSGIS := 33170.
]
