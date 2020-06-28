Class {
	#name : #VkPhysicalDeviceIndexTypeUint8FeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceIndexTypeUint8FeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(indexTypeUint8 'VkBool32')
	)
]
