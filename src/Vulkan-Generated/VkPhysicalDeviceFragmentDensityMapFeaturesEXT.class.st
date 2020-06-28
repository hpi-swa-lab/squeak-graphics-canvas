Class {
	#name : #VkPhysicalDeviceFragmentDensityMapFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceFragmentDensityMapFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fragmentDensityMap 'VkBool32')
		(fragmentDensityMapDynamic 'VkBool32')
		(fragmentDensityMapNonSubsampledImages 'VkBool32')
	)
]
