Class {
	#name : #VkPhysicalDeviceSubgroupSizeControlFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSubgroupSizeControlFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(subgroupSizeControl 'VkBool32')
		(computeFullSubgroups 'VkBool32')
	)
]
