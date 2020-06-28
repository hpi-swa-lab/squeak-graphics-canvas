Class {
	#name : #VkPhysicalDeviceConservativeRasterizationPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceConservativeRasterizationPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(primitiveOverestimationSize 'float')
		(maxExtraPrimitiveOverestimationSize 'float')
		(extraPrimitiveOverestimationSizeGranularity 'float')
		(primitiveUnderestimation 'VkBool32')
		(conservativePointAndLineRasterization 'VkBool32')
		(degenerateTrianglesRasterized 'VkBool32')
		(degenerateLinesRasterized 'VkBool32')
		(fullyCoveredFragmentShaderInputVariable 'VkBool32')
		(conservativeRasterizationPostDepthCoverage 'VkBool32')
	)
]
