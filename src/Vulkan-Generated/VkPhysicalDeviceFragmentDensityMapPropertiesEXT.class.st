Class {
	#name : #VkPhysicalDeviceFragmentDensityMapPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceFragmentDensityMapPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(minFragmentDensityTexelSize 'VkExtent2D')
		(maxFragmentDensityTexelSize 'VkExtent2D')
		(fragmentDensityInvocations 'VkBool32')
	)
]
