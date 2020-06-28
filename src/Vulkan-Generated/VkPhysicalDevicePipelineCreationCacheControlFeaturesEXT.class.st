Class {
	#name : #VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pipelineCreationCacheControl 'VkBool32')
	)
]
