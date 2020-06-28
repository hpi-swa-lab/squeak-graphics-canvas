Class {
	#name : #VkPhysicalDeviceDepthClipEnableFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDepthClipEnableFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(depthClipEnable 'VkBool32')
	)
]
