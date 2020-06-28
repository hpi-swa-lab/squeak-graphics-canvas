Class {
	#name : #OpenGLConstants,
	#superclass : #SharedPool,
	#classVars : [
		'GL2Bytes',
		'GL2d',
		'GL3Bytes',
		'GL3d',
		'GL3dColor',
		'GL3dColorTexture',
		'GL4Bytes',
		'GL4dColorTexture',
		'GLAbgrExt',
		'GLAccum',
		'GLAccumAlphaBits',
		'GLAccumBlueBits',
		'GLAccumBufferBit',
		'GLAccumClearValue',
		'GLAccumGreenBits',
		'GLAccumRedBits',
		'GLActiveTextureArb',
		'GLAdd',
		'GLAddSignedExt',
		'GLAliasedLineWidthRange',
		'GLAliasedPointSizeRange',
		'GLAllAttribBits',
		'GLAlpha',
		'GLAlpha12',
		'GLAlpha16',
		'GLAlpha4',
		'GLAlpha8',
		'GLAlphaBias',
		'GLAlphaBits',
		'GLAlphaScale',
		'GLAlphaTest',
		'GLAlphaTestFunc',
		'GLAlphaTestRef',
		'GLAlways',
		'GLAmbient',
		'GLAmbientAndDiffuse',
		'GLAnd',
		'GLAndInverted',
		'GLAndReverse',
		'GLAttribStackDepth',
		'GLAutoNormal',
		'GLAux0',
		'GLAux1',
		'GLAux2',
		'GLAux3',
		'GLAuxBuffers',
		'GLBack',
		'GLBackLeft',
		'GLBackRight',
		'GLBgr',
		'GLBgra',
		'GLBitmap',
		'GLBitmapToken',
		'GLBlend',
		'GLBlendColor',
		'GLBlendColorExt',
		'GLBlendDst',
		'GLBlendEquation',
		'GLBlendEquationExt',
		'GLBlendSrc',
		'GLBlue',
		'GLBlueBias',
		'GLBlueBits',
		'GLBlueScale',
		'GLByte',
		'GLC3fV3f',
		'GLC4fN3fV3f',
		'GLC4ubV2f',
		'GLC4ubV3f',
		'GLCcw',
		'GLClamp',
		'GLClampToEdge',
		'GLClear',
		'GLClientActiveTextureArb',
		'GLClientAllAttribBits',
		'GLClientAttribStackDepth',
		'GLClientPixelStoreBit',
		'GLClientVertexArrayBit',
		'GLClipPlane0',
		'GLClipPlane1',
		'GLClipPlane2',
		'GLClipPlane3',
		'GLClipPlane4',
		'GLClipPlane5',
		'GLCoeff',
		'GLColor',
		'GLColorArray',
		'GLColorArrayPointer',
		'GLColorArraySize',
		'GLColorArrayStride',
		'GLColorArrayType',
		'GLColorBufferBit',
		'GLColorClearValue',
		'GLColorIndex',
		'GLColorIndexes',
		'GLColorLogicOp',
		'GLColorMaterial',
		'GLColorMaterialFace',
		'GLColorMaterialParameter',
		'GLColorMatrix',
		'GLColorMatrixStackDepth',
		'GLColorTable',
		'GLColorTableAlphaSize',
		'GLColorTableBias',
		'GLColorTableBlueSize',
		'GLColorTableFormat',
		'GLColorTableGreenSize',
		'GLColorTableIntensitySize',
		'GLColorTableLuminanceSize',
		'GLColorTableRedSize',
		'GLColorTableScale',
		'GLColorTableWidth',
		'GLColorWritemask',
		'GLCombineAlphaExt',
		'GLCombineExt',
		'GLCombineRgbExt',
		'GLCompile',
		'GLCompileAndExecute',
		'GLConstantAlpha',
		'GLConstantAlphaExt',
		'GLConstantAttenuation',
		'GLConstantBorder',
		'GLConstantColor',
		'GLConstantColorExt',
		'GLConstantExt',
		'GLConvolution1d',
		'GLConvolution2d',
		'GLConvolutionBorderColor',
		'GLConvolutionBorderMode',
		'GLConvolutionFilterBias',
		'GLConvolutionFilterScale',
		'GLConvolutionFormat',
		'GLConvolutionHeight',
		'GLConvolutionWidth',
		'GLCopy',
		'GLCopyInverted',
		'GLCopyPixelToken',
		'GLCullFace',
		'GLCullFaceMode',
		'GLCurrentBit',
		'GLCurrentColor',
		'GLCurrentIndex',
		'GLCurrentNormal',
		'GLCurrentRasterColor',
		'GLCurrentRasterDistance',
		'GLCurrentRasterIndex',
		'GLCurrentRasterPosition',
		'GLCurrentRasterPositionValid',
		'GLCurrentRasterTextureCoords',
		'GLCurrentTextureCoords',
		'GLCw',
		'GLDecal',
		'GLDecr',
		'GLDepth',
		'GLDepthBias',
		'GLDepthBits',
		'GLDepthBufferBit',
		'GLDepthClearValue',
		'GLDepthComponent',
		'GLDepthFunc',
		'GLDepthRange',
		'GLDepthScale',
		'GLDepthTest',
		'GLDepthWritemask',
		'GLDiffuse',
		'GLDither',
		'GLDomain',
		'GLDontCare',
		'GLDouble',
		'GLDoublebuffer',
		'GLDrawBuffer',
		'GLDrawPixelToken',
		'GLDstAlpha',
		'GLDstColor',
		'GLEdgeFlag',
		'GLEdgeFlagArray',
		'GLEdgeFlagArrayPointer',
		'GLEdgeFlagArrayStride',
		'GLEmission',
		'GLEnableBit',
		'GLEqual',
		'GLEquiv',
		'GLEvalBit',
		'GLExp',
		'GLExp2',
		'GLExtAbgr',
		'GLExtBlendColor',
		'GLExtBlendMinmax',
		'GLExtBlendSubtract',
		'GLExtTextureEnvAdd',
		'GLExtTextureEnvCombine',
		'GLExtensions',
		'GLEyeLinear',
		'GLEyePlane',
		'GLFalse',
		'GLFastest',
		'GLFeedback',
		'GLFeedbackBufferPointer',
		'GLFeedbackBufferSize',
		'GLFeedbackBufferType',
		'GLFill',
		'GLFlat',
		'GLFloat',
		'GLFog',
		'GLFogBit',
		'GLFogColor',
		'GLFogDensity',
		'GLFogEnd',
		'GLFogHint',
		'GLFogIndex',
		'GLFogMode',
		'GLFogStart',
		'GLFront',
		'GLFrontAndBack',
		'GLFrontFace',
		'GLFrontLeft',
		'GLFrontRight',
		'GLFuncAdd',
		'GLFuncAddExt',
		'GLFuncReverseSubtract',
		'GLFuncReverseSubtractExt',
		'GLFuncSubtract',
		'GLFuncSubtractExt',
		'GLGequal',
		'GLGreater',
		'GLGreen',
		'GLGreenBias',
		'GLGreenBits',
		'GLGreenScale',
		'GLHintBit',
		'GLHistogram',
		'GLHistogramAlphaSize',
		'GLHistogramBlueSize',
		'GLHistogramFormat',
		'GLHistogramGreenSize',
		'GLHistogramLuminanceSize',
		'GLHistogramRedSize',
		'GLHistogramSink',
		'GLHistogramWidth',
		'GLIncr',
		'GLIndexArray',
		'GLIndexArrayPointer',
		'GLIndexArrayStride',
		'GLIndexArrayType',
		'GLIndexBits',
		'GLIndexClearValue',
		'GLIndexLogicOp',
		'GLIndexMode',
		'GLIndexOffset',
		'GLIndexShift',
		'GLIndexWritemask',
		'GLInt',
		'GLIntensity',
		'GLIntensity12',
		'GLIntensity16',
		'GLIntensity4',
		'GLIntensity8',
		'GLInterpolateExt',
		'GLInvalidEnum',
		'GLInvalidOperation',
		'GLInvalidValue',
		'GLInvert',
		'GLKeep',
		'GLLeft',
		'GLLequal',
		'GLLess',
		'GLLight0',
		'GLLight1',
		'GLLight2',
		'GLLight3',
		'GLLight4',
		'GLLight5',
		'GLLight6',
		'GLLight7',
		'GLLightModelAmbient',
		'GLLightModelColorControl',
		'GLLightModelLocalViewer',
		'GLLightModelTwoSide',
		'GLLighting',
		'GLLightingBit',
		'GLLine',
		'GLLineBit',
		'GLLineLoop',
		'GLLineResetToken',
		'GLLineSmooth',
		'GLLineSmoothHint',
		'GLLineStipple',
		'GLLineStipplePattern',
		'GLLineStippleRepeat',
		'GLLineStrip',
		'GLLineToken',
		'GLLineWidth',
		'GLLineWidthGranularity',
		'GLLineWidthRange',
		'GLLinear',
		'GLLinearAttenuation',
		'GLLinearMipmapLinear',
		'GLLinearMipmapNearest',
		'GLLines',
		'GLListBase',
		'GLListBit',
		'GLListIndex',
		'GLListMode',
		'GLLoad',
		'GLLogicOp',
		'GLLogicOpMode',
		'GLLuminance',
		'GLLuminance12',
		'GLLuminance12Alpha12',
		'GLLuminance12Alpha4',
		'GLLuminance16',
		'GLLuminance16Alpha16',
		'GLLuminance4',
		'GLLuminance4Alpha4',
		'GLLuminance6Alpha2',
		'GLLuminance8',
		'GLLuminance8Alpha8',
		'GLLuminanceAlpha',
		'GLMap1Color4',
		'GLMap1GridDomain',
		'GLMap1GridSegments',
		'GLMap1Index',
		'GLMap1Normal',
		'GLMap1TextureCoord1',
		'GLMap1TextureCoord2',
		'GLMap1TextureCoord3',
		'GLMap1TextureCoord4',
		'GLMap1Vertex3',
		'GLMap1Vertex4',
		'GLMap2Color4',
		'GLMap2GridDomain',
		'GLMap2GridSegments',
		'GLMap2Index',
		'GLMap2Normal',
		'GLMap2TextureCoord1',
		'GLMap2TextureCoord2',
		'GLMap2TextureCoord3',
		'GLMap2TextureCoord4',
		'GLMap2Vertex3',
		'GLMap2Vertex4',
		'GLMapColor',
		'GLMapStencil',
		'GLMatrixMode',
		'GLMax',
		'GLMax3dTextureSize',
		'GLMaxAttribStackDepth',
		'GLMaxClientAttribStackDepth',
		'GLMaxClipPlanes',
		'GLMaxColorMatrixStackDepth',
		'GLMaxConvolutionHeight',
		'GLMaxConvolutionWidth',
		'GLMaxElementsIndices',
		'GLMaxElementsVertices',
		'GLMaxEvalOrder',
		'GLMaxExt',
		'GLMaxLights',
		'GLMaxListNesting',
		'GLMaxModelviewStackDepth',
		'GLMaxNameStackDepth',
		'GLMaxPixelMapTable',
		'GLMaxProjectionStackDepth',
		'GLMaxTextureSize',
		'GLMaxTextureStackDepth',
		'GLMaxTextureUnitsArb',
		'GLMaxViewportDims',
		'GLMin',
		'GLMinExt',
		'GLMinmax',
		'GLMinmaxFormat',
		'GLMinmaxSink',
		'GLModelview',
		'GLModelviewMatrix',
		'GLModelviewStackDepth',
		'GLModulate',
		'GLMult',
		'GLN3fV3f',
		'GLNameStackDepth',
		'GLNand',
		'GLNearest',
		'GLNearestMipmapLinear',
		'GLNearestMipmapNearest',
		'GLNever',
		'GLNicest',
		'GLNoError',
		'GLNone',
		'GLNoop',
		'GLNor',
		'GLNormalArray',
		'GLNormalArrayPointer',
		'GLNormalArrayStride',
		'GLNormalArrayType',
		'GLNormalize',
		'GLNotequal',
		'GLObjectLinear',
		'GLObjectPlane',
		'GLOne',
		'GLOneMinusConstantAlpha',
		'GLOneMinusConstantAlphaExt',
		'GLOneMinusConstantColor',
		'GLOneMinusConstantColorExt',
		'GLOneMinusDstAlpha',
		'GLOneMinusDstColor',
		'GLOneMinusSrcAlpha',
		'GLOneMinusSrcColor',
		'GLOperand0AlphaExt',
		'GLOperand0RgbExt',
		'GLOperand1AlphaExt',
		'GLOperand1RgbExt',
		'GLOperand2AlphaExt',
		'GLOperand2RgbExt',
		'GLOr',
		'GLOrInverted',
		'GLOrReverse',
		'GLOrder',
		'GLOutOfMemory',
		'GLPackAlignment',
		'GLPackImageHeight',
		'GLPackLsbFirst',
		'GLPackRowLength',
		'GLPackSkipImages',
		'GLPackSkipPixels',
		'GLPackSkipRows',
		'GLPackSwapBytes',
		'GLPassThroughToken',
		'GLPerspectiveCorrectionHint',
		'GLPixelMapAToA',
		'GLPixelMapAToASize',
		'GLPixelMapBToB',
		'GLPixelMapBToBSize',
		'GLPixelMapGToG',
		'GLPixelMapGToGSize',
		'GLPixelMapIToA',
		'GLPixelMapIToASize',
		'GLPixelMapIToB',
		'GLPixelMapIToBSize',
		'GLPixelMapIToG',
		'GLPixelMapIToGSize',
		'GLPixelMapIToI',
		'GLPixelMapIToISize',
		'GLPixelMapIToR',
		'GLPixelMapIToRSize',
		'GLPixelMapRToR',
		'GLPixelMapRToRSize',
		'GLPixelMapSToS',
		'GLPixelMapSToSSize',
		'GLPixelModeBit',
		'GLPoint',
		'GLPointBit',
		'GLPointSize',
		'GLPointSizeGranularity',
		'GLPointSizeRange',
		'GLPointSmooth',
		'GLPointSmoothHint',
		'GLPointToken',
		'GLPoints',
		'GLPolygon',
		'GLPolygonBit',
		'GLPolygonMode',
		'GLPolygonOffsetFactor',
		'GLPolygonOffsetFill',
		'GLPolygonOffsetLine',
		'GLPolygonOffsetPoint',
		'GLPolygonOffsetUnits',
		'GLPolygonSmooth',
		'GLPolygonSmoothHint',
		'GLPolygonStipple',
		'GLPolygonStippleBit',
		'GLPolygonToken',
		'GLPosition',
		'GLPostColorMatrixAlphaBias',
		'GLPostColorMatrixAlphaScale',
		'GLPostColorMatrixBlueBias',
		'GLPostColorMatrixBlueScale',
		'GLPostColorMatrixColorTable',
		'GLPostColorMatrixGreenBias',
		'GLPostColorMatrixGreenScale',
		'GLPostColorMatrixRedBias',
		'GLPostColorMatrixRedScale',
		'GLPostConvolutionAlphaBias',
		'GLPostConvolutionAlphaScale',
		'GLPostConvolutionBlueBias',
		'GLPostConvolutionBlueScale',
		'GLPostConvolutionColorTable',
		'GLPostConvolutionGreenBias',
		'GLPostConvolutionGreenScale',
		'GLPostConvolutionRedBias',
		'GLPostConvolutionRedScale',
		'GLPreviousExt',
		'GLPrimaryColorExt',
		'GLProjection',
		'GLProjectionMatrix',
		'GLProjectionStackDepth',
		'GLProxyColorTable',
		'GLProxyHistogram',
		'GLProxyPostColorMatrixColorTable',
		'GLProxyPostConvolutionColorTable',
		'GLProxyTexture1d',
		'GLProxyTexture2d',
		'GLProxyTexture3d',
		'GLQ',
		'GLQuadStrip',
		'GLQuadraticAttenuation',
		'GLQuads',
		'GLR',
		'GLR3G3B2',
		'GLReadBuffer',
		'GLRed',
		'GLRedBias',
		'GLRedBits',
		'GLRedScale',
		'GLReduce',
		'GLRender',
		'GLRenderMode',
		'GLRenderer',
		'GLRepeat',
		'GLReplace',
		'GLReplicateBorder',
		'GLRescaleNormal',
		'GLReturn',
		'GLRgb',
		'GLRgb10',
		'GLRgb10A2',
		'GLRgb12',
		'GLRgb16',
		'GLRgb4',
		'GLRgb5',
		'GLRgb5A1',
		'GLRgb8',
		'GLRgbScaleExt',
		'GLRgba',
		'GLRgba12',
		'GLRgba16',
		'GLRgba2',
		'GLRgba4',
		'GLRgba8',
		'GLRgbaMode',
		'GLRight',
		'GLS',
		'GLScissorBit',
		'GLScissorBox',
		'GLScissorTest',
		'GLSelect',
		'GLSelectionBufferPointer',
		'GLSelectionBufferSize',
		'GLSeparable2d',
		'GLSeparateSpecularColor',
		'GLSet',
		'GLShadeModel',
		'GLShadingLanguageVersion',
		'GLShininess',
		'GLShort',
		'GLSingleColor',
		'GLSmooth',
		'GLSmoothLineWidthGranularity',
		'GLSmoothLineWidthRange',
		'GLSmoothPointSizeGranularity',
		'GLSmoothPointSizeRange',
		'GLSource0AlphaExt',
		'GLSource0RgbExt',
		'GLSource1AlphaExt',
		'GLSource1RgbExt',
		'GLSource2AlphaExt',
		'GLSource2RgbExt',
		'GLSpecular',
		'GLSphereMap',
		'GLSpotCutoff',
		'GLSpotDirection',
		'GLSpotExponent',
		'GLSrcAlpha',
		'GLSrcAlphaSaturate',
		'GLSrcColor',
		'GLStackOverflow',
		'GLStackUnderflow',
		'GLStencil',
		'GLStencilBits',
		'GLStencilBufferBit',
		'GLStencilClearValue',
		'GLStencilFail',
		'GLStencilFunc',
		'GLStencilIndex',
		'GLStencilPassDepthFail',
		'GLStencilPassDepthPass',
		'GLStencilRef',
		'GLStencilTest',
		'GLStencilValueMask',
		'GLStencilWritemask',
		'GLStereo',
		'GLSubpixelBits',
		'GLT',
		'GLT2fC3fV3f',
		'GLT2fC4fN3fV3f',
		'GLT2fC4ubV3f',
		'GLT2fN3fV3f',
		'GLT2fV3f',
		'GLT4fC4fN3fV4f',
		'GLT4fV4f',
		'GLTableTooLarge',
		'GLTexture',
		'GLTexture0Arb',
		'GLTexture10Arb',
		'GLTexture11Arb',
		'GLTexture12Arb',
		'GLTexture13Arb',
		'GLTexture14Arb',
		'GLTexture15Arb',
		'GLTexture16Arb',
		'GLTexture17Arb',
		'GLTexture18Arb',
		'GLTexture19Arb',
		'GLTexture1Arb',
		'GLTexture1d',
		'GLTexture20Arb',
		'GLTexture21Arb',
		'GLTexture22Arb',
		'GLTexture23Arb',
		'GLTexture24Arb',
		'GLTexture25Arb',
		'GLTexture26Arb',
		'GLTexture27Arb',
		'GLTexture28Arb',
		'GLTexture29Arb',
		'GLTexture2Arb',
		'GLTexture2d',
		'GLTexture30Arb',
		'GLTexture31Arb',
		'GLTexture3Arb',
		'GLTexture3d',
		'GLTexture4Arb',
		'GLTexture5Arb',
		'GLTexture6Arb',
		'GLTexture7Arb',
		'GLTexture8Arb',
		'GLTexture9Arb',
		'GLTextureAlphaSize',
		'GLTextureBaseLevel',
		'GLTextureBinding1d',
		'GLTextureBinding2d',
		'GLTextureBinding3d',
		'GLTextureBit',
		'GLTextureBlueSize',
		'GLTextureBorder',
		'GLTextureBorderColor',
		'GLTextureComponents',
		'GLTextureCoordArray',
		'GLTextureCoordArrayPointer',
		'GLTextureCoordArraySize',
		'GLTextureCoordArrayStride',
		'GLTextureCoordArrayType',
		'GLTextureDepth',
		'GLTextureEnv',
		'GLTextureEnvColor',
		'GLTextureEnvMode',
		'GLTextureGenMode',
		'GLTextureGenQ',
		'GLTextureGenR',
		'GLTextureGenS',
		'GLTextureGenT',
		'GLTextureGreenSize',
		'GLTextureHeight',
		'GLTextureIntensitySize',
		'GLTextureInternalFormat',
		'GLTextureLuminanceSize',
		'GLTextureMagFilter',
		'GLTextureMatrix',
		'GLTextureMaxLevel',
		'GLTextureMaxLod',
		'GLTextureMinFilter',
		'GLTextureMinLod',
		'GLTexturePriority',
		'GLTextureRedSize',
		'GLTextureResident',
		'GLTextureStackDepth',
		'GLTextureWidth',
		'GLTextureWrapR',
		'GLTextureWrapS',
		'GLTextureWrapT',
		'GLTransformBit',
		'GLTriangleFan',
		'GLTriangleStrip',
		'GLTriangles',
		'GLTrue',
		'GLUnpackAlignment',
		'GLUnpackImageHeight',
		'GLUnpackLsbFirst',
		'GLUnpackRowLength',
		'GLUnpackSkipImages',
		'GLUnpackSkipPixels',
		'GLUnpackSkipRows',
		'GLUnpackSwapBytes',
		'GLUnsignedByte',
		'GLUnsignedByte233Rev',
		'GLUnsignedByte332',
		'GLUnsignedInt',
		'GLUnsignedInt1010102',
		'GLUnsignedInt2101010Rev',
		'GLUnsignedInt8888',
		'GLUnsignedInt8888Rev',
		'GLUnsignedShort',
		'GLUnsignedShort1555Rev',
		'GLUnsignedShort4444',
		'GLUnsignedShort4444Rev',
		'GLUnsignedShort5551',
		'GLUnsignedShort565',
		'GLUnsignedShort565Rev',
		'GLV2f',
		'GLV3f',
		'GLVendor',
		'GLVersion',
		'GLVertexArray',
		'GLVertexArrayPointer',
		'GLVertexArraySize',
		'GLVertexArrayStride',
		'GLVertexArrayType',
		'GLViewport',
		'GLViewportBit',
		'GLXor',
		'GLZero',
		'GLZoomX',
		'GLZoomY',
		'TAlpha',
		'TAlphaNoAlpha',
		'TNoAlpha'
	],
	#category : 'MPOpenGL-Constants'
}

{ #category : #'pool initialization' }
OpenGLConstants class >> init1 [
	"OpenGLConstants initialize"
	TAlpha := 1.
	TNoAlpha := 2.
	TAlphaNoAlpha := 3.
	GLAccum := 16r0100.
	GLLoad := 16r0101.
	GLReturn := 16r0102.
	GLMult := 16r0103.
	GLAdd := 16r0104.
	GLNever := 16r0200.
	GLLess := 16r0201.
	GLEqual := 16r0202.
	GLLequal := 16r0203.
	GLGreater := 16r0204.
	GLNotequal := 16r0205.
	GLGequal := 16r0206.
	GLAlways := 16r0207.
	GLCurrentBit := 16r00000001.
	GLPointBit := 16r00000002.
	GLLineBit := 16r00000004.
	GLPolygonBit := 16r00000008.
	GLPolygonStippleBit := 16r00000010.
	GLPixelModeBit := 16r00000020.
	GLLightingBit := 16r00000040.
	GLFogBit := 16r00000080.
	GLDepthBufferBit := 16r00000100.
	GLAccumBufferBit := 16r00000200.
	GLStencilBufferBit := 16r00000400.
	GLViewportBit := 16r00000800.
	GLTransformBit := 16r00001000.
	GLEnableBit := 16r00002000.
	GLColorBufferBit := 16r00004000.
	GLHintBit := 16r00008000.
	GLEvalBit := 16r00010000.
	GLListBit := 16r00020000.
	GLTextureBit := 16r00040000.
	GLScissorBit := 16r00080000.
	GLAllAttribBits := 16r000FFFF.
	GLPoints := 16r0000.
	GLLines := 16r0001.
	GLLineLoop := 16r0002.
	GLLineStrip := 16r0003.
	GLTriangles := 16r0004.
	GLTriangleStrip := 16r0005.
	GLTriangleFan := 16r0006.
	GLQuads := 16r0007.
	GLQuadStrip := 16r0008.
	GLPolygon := 16r0009.
	GLZero := 0.
	GLOne := 1.
	GLSrcColor := 16r0300.
	GLOneMinusSrcColor := 16r0301.
	GLSrcAlpha := 16r0302.
	GLOneMinusSrcAlpha := 16r0303.
	GLDstAlpha := 16r0304.
	GLOneMinusDstAlpha := 16r0305.
	GLDstColor := 16r0306.
	GLOneMinusDstColor := 16r0307.
	GLSrcAlphaSaturate := 16r0308.
	GLTrue := 1.
	GLFalse := 0.
	GLClipPlane0 := 16r3000.
	GLClipPlane1 := 16r3001.
	GLClipPlane2 := 16r3002.
	GLClipPlane3 := 16r3003.
	GLClipPlane4 := 16r3004.
	GLClipPlane5 := 16r3005.
	GLByte := 16r1400.
	GLUnsignedByte := 16r1401.
	GLShort := 16r1402.
	GLUnsignedShort := 16r1403.
	GLInt := 16r1404.
	GLUnsignedInt := 16r1405.
	GLFloat := 16r1406.
	GL2Bytes := 16r1407.
	GL3Bytes := 16r1408.
	GL4Bytes := 16r1409.
	GLDouble := 16r140A.
	GLNone := 0.
	GLFrontLeft := 16r0400.
	GLFrontRight := 16r0401.
	GLBackLeft := 16r0402.
	GLBackRight := 16r0403.
	GLFront := 16r0404.
	GLBack := 16r0405.
	GLLeft := 16r0406.
	GLRight := 16r0407.
	GLFrontAndBack := 16r0408.
	GLAux0 := 16r0409.
	GLAux1 := 16r040A.
	GLAux2 := 16r040B.
	GLAux3 := 16r040C.
	GLNoError := 0.
	GLInvalidEnum := 16r0500.
	GLInvalidValue := 16r0501.
	GLInvalidOperation := 16r0502.
	GLStackOverflow := 16r0503.
	GLStackUnderflow := 16r0504.
	GLOutOfMemory := 16r0505.
	GL2d := 16r0600.
	GL3d := 16r0601.
	GL3dColor := 16r0602.
	GL3dColorTexture := 16r0603.
	GL4dColorTexture := 16r0604.
	GLPassThroughToken := 16r0700.
	GLPointToken := 16r0701.
	GLLineToken := 16r0702.
	GLPolygonToken := 16r0703.
	GLBitmapToken := 16r0704.
	GLDrawPixelToken := 16r0705.
	GLCopyPixelToken := 16r0706.
	GLLineResetToken := 16r0707.
	GLExp := 16r0800.
	GLExp2 := 16r0801.
	GLCw := 16r0900.
	GLCcw := 16r0901.
	GLCoeff := 16r0A00.
	GLOrder := 16r0A01.
	GLDomain := 16r0A02.
	GLCurrentColor := 16r0B00.
	GLCurrentIndex := 16r0B01.
	GLCurrentNormal := 16r0B02.
	GLCurrentTextureCoords := 16r0B03.
	GLCurrentRasterColor := 16r0B04.
	GLCurrentRasterIndex := 16r0B05.
	GLCurrentRasterTextureCoords := 16r0B06.
	GLCurrentRasterPosition := 16r0B07.
	GLCurrentRasterPositionValid := 16r0B08.
	GLCurrentRasterDistance := 16r0B09.
	GLPointSmooth := 16r0B10.
	GLPointSize := 16r0B11.
	GLPointSizeRange := 16r0B12.
	GLPointSizeGranularity := 16r0B13.

]

{ #category : #'pool initialization' }
OpenGLConstants class >> init2 [
	GLLineSmooth := 16r0B20.
	GLLineWidth := 16r0B21.
	GLLineWidthRange := 16r0B22.
	GLLineWidthGranularity := 16r0B23.
	GLLineStipple := 16r0B24.
	GLLineStipplePattern := 16r0B25.
	GLLineStippleRepeat := 16r0B26.
	GLListMode := 16r0B30.
	GLMaxListNesting := 16r0B31.
	GLListBase := 16r0B32.
	GLListIndex := 16r0B33.
	GLPolygonMode := 16r0B40.
	GLPolygonSmooth := 16r0B41.
	GLPolygonStipple := 16r0B42.
	GLEdgeFlag := 16r0B43.
	GLCullFace := 16r0B44.
	GLCullFaceMode := 16r0B45.
	GLFrontFace := 16r0B46.
	GLLighting := 16r0B50.
	GLLightModelLocalViewer := 16r0B51.
	GLLightModelTwoSide := 16r0B52.
	GLLightModelAmbient := 16r0B53.
	GLShadeModel := 16r0B54.
	GLColorMaterialFace := 16r0B55.
	GLColorMaterialParameter := 16r0B56.
	GLColorMaterial := 16r0B57.
	GLFog := 16r0B60.
	GLFogIndex := 16r0B61.
	GLFogDensity := 16r0B62.
	GLFogStart := 16r0B63.
	GLFogEnd := 16r0B64.
	GLFogMode := 16r0B65.
	GLFogColor := 16r0B66.
	GLDepthRange := 16r0B70.
	GLDepthTest := 16r0B71.
	GLDepthWritemask := 16r0B72.
	GLDepthClearValue := 16r0B73.
	GLDepthFunc := 16r0B74.
	GLAccumClearValue := 16r0B80.
	GLStencilTest := 16r0B90.
	GLStencilClearValue := 16r0B91.
	GLStencilFunc := 16r0B92.
	GLStencilValueMask := 16r0B93.
	GLStencilFail := 16r0B94.
	GLStencilPassDepthFail := 16r0B95.
	GLStencilPassDepthPass := 16r0B96.
	GLStencilRef := 16r0B97.
	GLStencilWritemask := 16r0B98.
	GLMatrixMode := 16r0BA0.
	GLNormalize := 16r0BA1.
	GLViewport := 16r0BA2.
	GLModelviewStackDepth := 16r0BA3.
	GLProjectionStackDepth := 16r0BA4.
	GLTextureStackDepth := 16r0BA5.
	GLModelviewMatrix := 16r0BA6.
	GLProjectionMatrix := 16r0BA7.
	GLTextureMatrix := 16r0BA8.
	GLAttribStackDepth := 16r0BB0.
	GLClientAttribStackDepth := 16r0BB1.
	GLAlphaTest := 16r0BC0.
	GLAlphaTestFunc := 16r0BC1.
	GLAlphaTestRef := 16r0BC2.
	GLDither := 16r0BD0.
	GLBlendDst := 16r0BE0.
	GLBlendSrc := 16r0BE1.
	GLBlend := 16r0BE2.
	GLLogicOpMode := 16r0BF0.
	GLIndexLogicOp := 16r0BF1.
	GLColorLogicOp := 16r0BF2.
	GLAuxBuffers := 16r0C00.
	GLDrawBuffer := 16r0C01.
	GLReadBuffer := 16r0C02.
	GLScissorBox := 16r0C10.
	GLScissorTest := 16r0C11.
	GLIndexClearValue := 16r0C20.
	GLIndexWritemask := 16r0C21.
	GLColorClearValue := 16r0C22.
	GLColorWritemask := 16r0C23.
	GLIndexMode := 16r0C30.
	GLRgbaMode := 16r0C31.
	GLDoublebuffer := 16r0C32.
	GLStereo := 16r0C33.
	GLRenderMode := 16r0C40.
	GLPerspectiveCorrectionHint := 16r0C50.
	GLPointSmoothHint := 16r0C51.
	GLLineSmoothHint := 16r0C52.
	GLPolygonSmoothHint := 16r0C53.
	GLFogHint := 16r0C54.
	GLTextureGenS := 16r0C60.
	GLTextureGenT := 16r0C61.
	GLTextureGenR := 16r0C62.
	GLTextureGenQ := 16r0C63.
	GLPixelMapIToI := 16r0C70.
	GLPixelMapSToS := 16r0C71.
	GLPixelMapIToR := 16r0C72.
	GLPixelMapIToG := 16r0C73.
	GLPixelMapIToB := 16r0C74.
	GLPixelMapIToA := 16r0C75.
	GLPixelMapRToR := 16r0C76.
	GLPixelMapGToG := 16r0C77.
	GLPixelMapBToB := 16r0C78.
	GLPixelMapAToA := 16r0C79.
	GLPixelMapIToISize := 16r0CB0.
	GLPixelMapSToSSize := 16r0CB1.
	GLPixelMapIToRSize := 16r0CB2.
	GLPixelMapIToGSize := 16r0CB3.
	GLPixelMapIToBSize := 16r0CB4.
	GLPixelMapIToASize := 16r0CB5.
	GLPixelMapRToRSize := 16r0CB6.
	GLPixelMapGToGSize := 16r0CB7.
	GLPixelMapBToBSize := 16r0CB8.
	GLPixelMapAToASize := 16r0CB9.
	GLUnpackSwapBytes := 16r0CF0.
	GLUnpackLsbFirst := 16r0CF1.
	GLUnpackRowLength := 16r0CF2.
	GLUnpackSkipRows := 16r0CF3.
	GLUnpackSkipPixels := 16r0CF4.
	GLUnpackAlignment := 16r0CF5.
	GLPackSwapBytes := 16r0D00.
	GLPackLsbFirst := 16r0D01.
	GLPackRowLength := 16r0D02.
	GLPackSkipRows := 16r0D03.
	GLPackSkipPixels := 16r0D04.
	GLPackAlignment := 16r0D05.

]

{ #category : #'pool initialization' }
OpenGLConstants class >> init3 [
	GLMapColor := 16r0D10.
	GLMapStencil := 16r0D11.
	GLIndexShift := 16r0D12.
	GLIndexOffset := 16r0D13.
	GLRedScale := 16r0D14.
	GLRedBias := 16r0D15.
	GLZoomX := 16r0D16.
	GLZoomY := 16r0D17.
	GLGreenScale := 16r0D18.
	GLGreenBias := 16r0D19.
	GLBlueScale := 16r0D1A.
	GLBlueBias := 16r0D1B.
	GLAlphaScale := 16r0D1C.
	GLAlphaBias := 16r0D1D.
	GLDepthScale := 16r0D1E.
	GLDepthBias := 16r0D1F.
	GLMaxEvalOrder := 16r0D30.
	GLMaxLights := 16r0D31.
	GLMaxClipPlanes := 16r0D32.
	GLMaxTextureSize := 16r0D33.
	GLMaxPixelMapTable := 16r0D34.
	GLMaxAttribStackDepth := 16r0D35.
	GLMaxModelviewStackDepth := 16r0D36.
	GLMaxNameStackDepth := 16r0D37.
	GLMaxProjectionStackDepth := 16r0D38.
	GLMaxTextureStackDepth := 16r0D39.
	GLMaxViewportDims := 16r0D3A.
	GLMaxClientAttribStackDepth := 16r0D3B.
	GLSubpixelBits := 16r0D50.
	GLIndexBits := 16r0D51.
	GLRedBits := 16r0D52.
	GLGreenBits := 16r0D53.
	GLBlueBits := 16r0D54.
	GLAlphaBits := 16r0D55.
	GLDepthBits := 16r0D56.
	GLStencilBits := 16r0D57.
	GLAccumRedBits := 16r0D58.
	GLAccumGreenBits := 16r0D59.
	GLAccumBlueBits := 16r0D5A.
	GLAccumAlphaBits := 16r0D5B.
	GLNameStackDepth := 16r0D70.
	GLAutoNormal := 16r0D80.
	GLMap1Color4 := 16r0D90.
	GLMap1Index := 16r0D91.
	GLMap1Normal := 16r0D92.
	GLMap1TextureCoord1 := 16r0D93.
	GLMap1TextureCoord2 := 16r0D94.
	GLMap1TextureCoord3 := 16r0D95.
	GLMap1TextureCoord4 := 16r0D96.
	GLMap1Vertex3 := 16r0D97.
	GLMap1Vertex4 := 16r0D98.
	GLMap2Color4 := 16r0DB0.
	GLMap2Index := 16r0DB1.
	GLMap2Normal := 16r0DB2.
	GLMap2TextureCoord1 := 16r0DB3.
	GLMap2TextureCoord2 := 16r0DB4.
	GLMap2TextureCoord3 := 16r0DB5.
	GLMap2TextureCoord4 := 16r0DB6.
	GLMap2Vertex3 := 16r0DB7.
	GLMap2Vertex4 := 16r0DB8.
	GLMap1GridDomain := 16r0DD0.
	GLMap1GridSegments := 16r0DD1.
	GLMap2GridDomain := 16r0DD2.
	GLMap2GridSegments := 16r0DD3.
	GLTexture1d := 16r0DE0.
	GLTexture2d := 16r0DE1.

	GLFeedbackBufferPointer := 16r0DF0.
	GLFeedbackBufferSize := 16r0DF1.
	GLFeedbackBufferType := 16r0DF2.
	GLSelectionBufferPointer := 16r0DF3.
	GLSelectionBufferSize := 16r0DF4.
	GLTextureWidth := 16r1000.
	GLTextureHeight := 16r1001.
	GLTextureInternalFormat := 16r1003.
	GLTextureBorderColor := 16r1004.
	GLTextureBorder := 16r1005.
	GLDontCare := 16r1100.
	GLFastest := 16r1101.
	GLNicest := 16r1102.
	GLLight0 := 16r4000.
	GLLight1 := 16r4001.
	GLLight2 := 16r4002.
	GLLight3 := 16r4003.
	GLLight4 := 16r4004.
	GLLight5 := 16r4005.
	GLLight6 := 16r4006.
	GLLight7 := 16r4007.
	GLAmbient := 16r1200.
	GLDiffuse := 16r1201.
	GLSpecular := 16r1202.
	GLPosition := 16r1203.
	GLSpotDirection := 16r1204.
	GLSpotExponent := 16r1205.
	GLSpotCutoff := 16r1206.
	GLConstantAttenuation := 16r1207.
	GLLinearAttenuation := 16r1208.
	GLQuadraticAttenuation := 16r1209.
	GLCompile := 16r1300.
	GLCompileAndExecute := 16r1301.
	GLClear := 16r1500.
	GLAnd := 16r1501.
	GLAndReverse := 16r1502.
	GLCopy := 16r1503.
	GLAndInverted := 16r1504.
	GLNoop := 16r1505.
	GLXor := 16r1506.
	GLOr := 16r1507.
	GLNor := 16r1508.
	GLEquiv := 16r1509.
	GLInvert := 16r150A.
	GLOrReverse := 16r150B.
	GLCopyInverted := 16r150C.
	GLOrInverted := 16r150D.
	GLNand := 16r150E.
	GLSet := 16r150F.

]

{ #category : #'pool initialization' }
OpenGLConstants class >> init4 [
	GLEmission := 16r1600.
	GLShininess := 16r1601.
	GLAmbientAndDiffuse := 16r1602.
	GLColorIndexes := 16r1603.
	GLModelview := 16r1700.
	GLProjection := 16r1701.
	GLTexture := 16r1702.
	GLColor := 16r1800.
	GLDepth := 16r1801.
	GLStencil := 16r1802.
	GLColorIndex := 16r1900.
	GLStencilIndex := 16r1901.
	GLDepthComponent := 16r1902.
	GLRed := 16r1903.
	GLGreen := 16r1904.
	GLBlue := 16r1905.
	GLAlpha := 16r1906.
	GLRgb := 16r1907.
	GLRgba := 16r1908.
	GLLuminance := 16r1909.
	GLLuminanceAlpha := 16r190A.
	GLBitmap := 16r1A00.
	GLPoint := 16r1B00.
	GLLine := 16r1B01.
	GLFill := 16r1B02.
	GLRender := 16r1C00.
	GLFeedback := 16r1C01.
	GLSelect := 16r1C02.
	GLFlat := 16r1D00.
	GLSmooth := 16r1D01.
	GLKeep := 16r1E00.
	GLReplace := 16r1E01.
	GLIncr := 16r1E02.
	GLDecr := 16r1E03.
	GLVendor := 16r1F00.
	GLRenderer := 16r1F01.
	GLVersion := 16r1F02.
	GLExtensions := 16r1F03.
	GLShadingLanguageVersion := 16r8B8C.
	GLS := 16r2000.
	GLT := 16r2001.
	GLR := 16r2002.
	GLQ := 16r2003.
	GLModulate := 16r2100.
	GLDecal := 16r2101.
	GLTextureEnvMode := 16r2200.
	GLTextureEnvColor := 16r2201.
	GLTextureEnv := 16r2300.
	GLEyeLinear := 16r2400.
	GLObjectLinear := 16r2401.
	GLSphereMap := 16r2402.
	GLTextureGenMode := 16r2500.
	GLObjectPlane := 16r2501.
	GLEyePlane := 16r2502.
	GLNearest := 16r2600.
	GLLinear := 16r2601.
	GLNearestMipmapNearest := 16r2700.
	GLLinearMipmapNearest := 16r2701.
	GLNearestMipmapLinear := 16r2702.
	GLLinearMipmapLinear := 16r2703.
	GLTextureMagFilter := 16r2800.
	GLTextureMinFilter := 16r2801.
	GLTextureWrapS := 16r2802.
	GLTextureWrapT := 16r2803.
	GLClamp := 16r2900.
	GLRepeat := 16r2901.
	GLClientPixelStoreBit := 16r00000001.
	GLClientVertexArrayBit := 16r00000002.
	GLClientAllAttribBits := 16rFFFFFFFF.
	GLPolygonOffsetFactor := 16r8038.
	GLPolygonOffsetUnits := 16r2A00.
	GLPolygonOffsetPoint := 16r2A01.
	GLPolygonOffsetLine := 16r2A02.
	GLPolygonOffsetFill := 16r8037.
	GLAlpha4 := 16r803B.
	GLAlpha8 := 16r803C.
	GLAlpha12 := 16r803D.
	GLAlpha16 := 16r803E.
	GLLuminance4 := 16r803F.
	GLLuminance8 := 16r8040.
	GLLuminance12 := 16r8041.
	GLLuminance16 := 16r8042.
	GLLuminance4Alpha4 := 16r8043.
	GLLuminance6Alpha2 := 16r8044.
	GLLuminance8Alpha8 := 16r8045.
	GLLuminance12Alpha4 := 16r8046.
	GLLuminance12Alpha12 := 16r8047.
	GLLuminance16Alpha16 := 16r8048.
	GLIntensity := 16r8049.
	GLIntensity4 := 16r804A.
	GLIntensity8 := 16r804B.
	GLIntensity12 := 16r804C.
	GLIntensity16 := 16r804D.
	GLR3G3B2 := 16r2A10.
	GLRgb4 := 16r804F.
	GLRgb5 := 16r8050.
	GLRgb8 := 16r8051.
	GLRgb10 := 16r8052.
	GLRgb12 := 16r8053.
	GLRgb16 := 16r8054.
	GLRgba2 := 16r8055.
	GLRgba4 := 16r8056.
	GLRgb5A1 := 16r8057.
	GLRgba8 := 16r8058.
	GLRgb10A2 := 16r8059.
	GLRgba12 := 16r805A.
	GLRgba16 := 16r805B.
	GLTextureRedSize := 16r805C.
	GLTextureGreenSize := 16r805D.
	GLTextureBlueSize := 16r805E.
	GLTextureAlphaSize := 16r805F.
	GLTextureLuminanceSize := 16r8060.
	GLTextureIntensitySize := 16r8061.
	GLProxyTexture1d := 16r8063.
	GLProxyTexture2d := 16r8064.
	GLTexturePriority := 16r8066.
	GLTextureResident := 16r8067.
	GLTextureBinding1d := 16r8068.
	GLTextureBinding2d := 16r8069.
	GLTextureBinding3d := 16r806A.

]

{ #category : #'pool initialization' }
OpenGLConstants class >> init5 [
	GLVertexArray := 16r8074.
	GLNormalArray := 16r8075.
	GLColorArray := 16r8076.
	GLIndexArray := 16r8077.
	GLTextureCoordArray := 16r8078.
	GLEdgeFlagArray := 16r8079.
	GLVertexArraySize := 16r807A.
	GLVertexArrayType := 16r807B.
	GLVertexArrayStride := 16r807C.
	GLNormalArrayType := 16r807E.
	GLNormalArrayStride := 16r807F.
	GLColorArraySize := 16r8081.
	GLColorArrayType := 16r8082.
	GLColorArrayStride := 16r8083.
	GLIndexArrayType := 16r8085.
	GLIndexArrayStride := 16r8086.
	GLTextureCoordArraySize := 16r8088.
	GLTextureCoordArrayType := 16r8089.
	GLTextureCoordArrayStride := 16r808A.
	GLEdgeFlagArrayStride := 16r808C.
	GLVertexArrayPointer := 16r808E.
	GLNormalArrayPointer := 16r808F.
	GLColorArrayPointer := 16r8090.
	GLIndexArrayPointer := 16r8091.
	GLTextureCoordArrayPointer := 16r8092.
	GLEdgeFlagArrayPointer := 16r8093.
	GLV2f := 16r2A20.
	GLV3f := 16r2A21.
	GLC4ubV2f := 16r2A22.
	GLC4ubV3f := 16r2A23.
	GLC3fV3f := 16r2A24.
	GLN3fV3f := 16r2A25.
	GLC4fN3fV3f := 16r2A26.
	GLT2fV3f := 16r2A27.
	GLT4fV4f := 16r2A28.
	GLT2fC4ubV3f := 16r2A29.
	GLT2fC3fV3f := 16r2A2A.
	GLT2fN3fV3f := 16r2A2B.
	GLT2fC4fN3fV3f := 16r2A2C.
	GLT4fC4fN3fV4f := 16r2A2D.
	GLBgr := 16r80E0.
	GLBgra := 16r80E1.
	GLConstantColor := 16r8001.
	GLOneMinusConstantColor := 16r8002.
	GLConstantAlpha := 16r8003.
	GLOneMinusConstantAlpha := 16r8004.
	GLBlendColor := 16r8005.
	GLFuncAdd := 16r8006.
	GLMin := 16r8007.
	GLMax := 16r8008.
	GLBlendEquation := 16r8009.
	GLFuncSubtract := 16r800A.
	GLFuncReverseSubtract := 16r800B.
	GLColorMatrix := 16r80B1.
	GLColorMatrixStackDepth := 16r80B2.
	GLMaxColorMatrixStackDepth := 16r80B3.
	GLPostColorMatrixRedScale := 16r80B4.
	GLPostColorMatrixGreenScale := 16r80B5.
	GLPostColorMatrixBlueScale := 16r80B6.
	GLPostColorMatrixAlphaScale := 16r80B7.
	GLPostColorMatrixRedBias := 16r80B8.
	GLPostColorMatrixGreenBias := 16r80B9.
	GLPostColorMatrixBlueBias := 16r80BA.
	GLPostColorMatrixAlphaBias := 16r80BB.
	GLColorTable := 16r80D0.
	GLPostConvolutionColorTable := 16r80D1.
	GLPostColorMatrixColorTable := 16r80D2.
	GLProxyColorTable := 16r80D3.
	GLProxyPostConvolutionColorTable := 16r80D4.
	GLProxyPostColorMatrixColorTable := 16r80D5.
	GLColorTableScale := 16r80D6.
	GLColorTableBias := 16r80D7.
	GLColorTableFormat := 16r80D8.
	GLColorTableWidth := 16r80D9.
	GLColorTableRedSize := 16r80DA.
	GLColorTableGreenSize := 16r80DB.
	GLColorTableBlueSize := 16r80DC.
	GLColorTableAlphaSize := 16r80DD.
	GLColorTableLuminanceSize := 16r80DE.
	GLColorTableIntensitySize := 16r80DF.
	GLConvolution1d := 16r8010.
	GLConvolution2d := 16r8011.
	GLSeparable2d := 16r8012.
	GLConvolutionBorderMode := 16r8013.
	GLConvolutionFilterScale := 16r8014.
	GLConvolutionFilterBias := 16r8015.
	GLReduce := 16r8016.
	GLConvolutionFormat := 16r8017.
	GLConvolutionWidth := 16r8018.
	GLConvolutionHeight := 16r8019.
	GLMaxConvolutionWidth := 16r801A.
	GLMaxConvolutionHeight := 16r801B.
	GLPostConvolutionRedScale := 16r801C.
	GLPostConvolutionGreenScale := 16r801D.
	GLPostConvolutionBlueScale := 16r801E.
	GLPostConvolutionAlphaScale := 16r801F.
	GLPostConvolutionRedBias := 16r8020.
	GLPostConvolutionGreenBias := 16r8021.
	GLPostConvolutionBlueBias := 16r8022.
	GLPostConvolutionAlphaBias := 16r8023.
	GLConstantBorder := 16r8151.
	GLReplicateBorder := 16r8153.
	GLConvolutionBorderColor := 16r8154.
	GLMaxElementsVertices := 16r80E8.
	GLMaxElementsIndices := 16r80E9.
	GLHistogram := 16r8024.
	GLProxyHistogram := 16r8025.
	GLHistogramWidth := 16r8026.
	GLHistogramFormat := 16r8027.
	GLHistogramRedSize := 16r8028.
	GLHistogramGreenSize := 16r8029.
	GLHistogramBlueSize := 16r802A.
	GLHistogramAlphaSize := 16r802B.
	GLHistogramLuminanceSize := 16r802C.
	GLHistogramSink := 16r802D.
	GLMinmax := 16r802E.
	GLMinmaxFormat := 16r802F.
	GLMinmaxSink := 16r8030.
	GLTableTooLarge := 16r8031.

]

{ #category : #'pool initialization' }
OpenGLConstants class >> init6 [
	GLUnsignedByte332 := 16r8032.
	GLUnsignedShort4444 := 16r8033.
	GLUnsignedShort5551 := 16r8034.
	GLUnsignedInt8888 := 16r8035.
	GLUnsignedInt1010102 := 16r8036.
	GLUnsignedByte233Rev := 16r8362.
	GLUnsignedShort565 := 16r8363.
	GLUnsignedShort565Rev := 16r8364.
	GLUnsignedShort4444Rev := 16r8365.
	GLUnsignedShort1555Rev := 16r8366.
	GLUnsignedInt8888Rev := 16r8367.
	GLUnsignedInt2101010Rev := 16r8368.
	GLRescaleNormal := 16r803A.
	GLLightModelColorControl := 16r81F8.
	GLSingleColor := 16r81F9.
	GLSeparateSpecularColor := 16r81FA.
	GLPackSkipImages := 16r806B.
	GLPackImageHeight := 16r806C.
	GLUnpackSkipImages := 16r806D.
	GLUnpackImageHeight := 16r806E.
	GLTexture3d := 16r806F.
	GLProxyTexture3d := 16r8070.
	GLTextureDepth := 16r8071.
	GLTextureWrapR := 16r8072.
	GLMax3dTextureSize := 16r8073.
	GLClampToEdge := 16r812F.
	GLTextureMinLod := 16r813A.
	GLTextureMaxLod := 16r813B.
	GLTextureBaseLevel := 16r813C.
	GLTextureMaxLevel := 16r813D.
	GLSmoothPointSizeRange := 16r0B12.
	GLSmoothPointSizeGranularity := 16r0B13.
	GLSmoothLineWidthRange := 16r0B22.
	GLSmoothLineWidthGranularity := 16r0B23.
	GLAliasedPointSizeRange := 16r846D.
	GLAliasedLineWidthRange := 16r846E.
	GLTexture0Arb := 16r84C0.
	GLTexture1Arb := 16r84C1.
	GLTexture2Arb := 16r84C2.
	GLTexture3Arb := 16r84C3.
	GLTexture4Arb := 16r84C4.
	GLTexture5Arb := 16r84C5.
	GLTexture6Arb := 16r84C6.
	GLTexture7Arb := 16r84C7.
	GLTexture8Arb := 16r84C8.
	GLTexture9Arb := 16r84C9.
	GLTexture10Arb := 16r84CA.
	GLTexture11Arb := 16r84CB.
	GLTexture12Arb := 16r84CC.
	GLTexture13Arb := 16r84CD.
	GLTexture14Arb := 16r84CE.
	GLTexture15Arb := 16r84CF.
	GLTexture16Arb := 16r84D0.
	GLTexture17Arb := 16r84D1.
	GLTexture18Arb := 16r84D2.
	GLTexture19Arb := 16r84D3.
	GLTexture20Arb := 16r84D4.
	GLTexture21Arb := 16r84D5.
	GLTexture22Arb := 16r84D6.
	GLTexture23Arb := 16r84D7.
	GLTexture24Arb := 16r84D8.
	GLTexture25Arb := 16r84D9.
	GLTexture26Arb := 16r84DA.
	GLTexture27Arb := 16r84DB.
	GLTexture28Arb := 16r84DC.
	GLTexture29Arb := 16r84DD.
	GLTexture30Arb := 16r84DE.
	GLTexture31Arb := 16r84DF.
	GLActiveTextureArb := 16r84E0.
	GLClientActiveTextureArb := 16r84E1.
	GLMaxTextureUnitsArb := 16r84E2.
	GLExtAbgr := 1.
	GLExtBlendColor := 1.
	GLExtBlendMinmax := 1.
	GLExtBlendSubtract := 1.
	GLExtTextureEnvCombine := 1.
	GLExtTextureEnvAdd := 1.
	GLAbgrExt := 16r8000.
	GLConstantColorExt := 16r8001.
	GLOneMinusConstantColorExt := 16r8002.
	GLConstantAlphaExt := 16r8003.
	GLOneMinusConstantAlphaExt := 16r8004.
	GLBlendColorExt := 16r8005.
	GLFuncAddExt := 16r8006.
	GLMinExt := 16r8007.
	GLMaxExt := 16r8008.
	GLBlendEquationExt := 16r8009.
	GLFuncSubtractExt := 16r800A.
	GLFuncReverseSubtractExt := 16r800B.
	GLCombineExt := 16r8570.
	GLCombineRgbExt := 16r8571.
	GLCombineAlphaExt := 16r8572.
	GLRgbScaleExt := 16r8573.
	GLAddSignedExt := 16r8574.
	GLInterpolateExt := 16r8575.
	GLConstantExt := 16r8576.
	GLPrimaryColorExt := 16r8577.
	GLPreviousExt := 16r8578.
	GLSource0RgbExt := 16r8580.
	GLSource1RgbExt := 16r8581.
	GLSource2RgbExt := 16r8582.
	GLSource0AlphaExt := 16r8588.
	GLSource1AlphaExt := 16r8589.
	GLSource2AlphaExt := 16r858A.
	GLOperand0RgbExt := 16r8590.
	GLOperand1RgbExt := 16r8591.
	GLOperand2RgbExt := 16r8592.
	GLOperand0AlphaExt := 16r8598.
	GLOperand1AlphaExt := 16r8599.
	GLOperand2AlphaExt := 16r859A.

	GLLogicOp := GLIndexLogicOp.
	GLTextureComponents := GLTextureInternalFormat.

]

{ #category : #'pool initialization' }
OpenGLConstants class >> initialize [
	"OpenGLConstants initialize" 
	self init1.
	self init2.
	self init3.
	self init4.
	self init5.
	self init6.
	"check the class pool"
	self classPool keysAndValuesDo:[:key :val|
		val ifNil:[self error: key printString,' undefined'].
	].
]