Class {
	#name : #VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(dedicatedAllocationImageAliasing 'VkBool32')
	)
]
