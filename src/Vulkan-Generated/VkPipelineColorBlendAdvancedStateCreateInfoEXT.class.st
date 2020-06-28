Class {
	#name : #VkPipelineColorBlendAdvancedStateCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineColorBlendAdvancedStateCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(srcPremultiplied 'VkBool32')
		(dstPremultiplied 'VkBool32')
		(blendOverlap 'VkBlendOverlapEXT')
	)
]
