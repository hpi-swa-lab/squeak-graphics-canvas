Class {
	#name : #VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(advancedBlendMaxColorAttachments 'uint32_t')
		(advancedBlendIndependentBlend 'VkBool32')
		(advancedBlendNonPremultipliedSrcColor 'VkBool32')
		(advancedBlendNonPremultipliedDstColor 'VkBool32')
		(advancedBlendCorrelatedOverlap 'VkBool32')
		(advancedBlendAllOperations 'VkBool32')
	)
]
