Class {
	#name : #VkRayTracingShaderGroupCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRayTracingShaderGroupCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(type 'VkRayTracingShaderGroupTypeKHR')
		(generalShader 'uint32_t')
		(closestHitShader 'uint32_t')
		(anyHitShader 'uint32_t')
		(intersectionShader 'uint32_t')
	)
]
