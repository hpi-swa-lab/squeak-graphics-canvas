Class {
	#name : #VkPhysicalDeviceFloatControlsProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceFloatControlsProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(denormBehaviorIndependence 'VkShaderFloatControlsIndependence')
		(roundingModeIndependence 'VkShaderFloatControlsIndependence')
		(shaderSignedZeroInfNanPreserveFloat16 'VkBool32')
		(shaderSignedZeroInfNanPreserveFloat32 'VkBool32')
		(shaderSignedZeroInfNanPreserveFloat64 'VkBool32')
		(shaderDenormPreserveFloat16 'VkBool32')
		(shaderDenormPreserveFloat32 'VkBool32')
		(shaderDenormPreserveFloat64 'VkBool32')
		(shaderDenormFlushToZeroFloat16 'VkBool32')
		(shaderDenormFlushToZeroFloat32 'VkBool32')
		(shaderDenormFlushToZeroFloat64 'VkBool32')
		(shaderRoundingModeRTEFloat16 'VkBool32')
		(shaderRoundingModeRTEFloat32 'VkBool32')
		(shaderRoundingModeRTEFloat64 'VkBool32')
		(shaderRoundingModeRTZFloat16 'VkBool32')
		(shaderRoundingModeRTZFloat32 'VkBool32')
		(shaderRoundingModeRTZFloat64 'VkBool32')
	)
]