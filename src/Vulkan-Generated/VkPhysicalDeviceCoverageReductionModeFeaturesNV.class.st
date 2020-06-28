Class {
	#name : #VkPhysicalDeviceCoverageReductionModeFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceCoverageReductionModeFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(coverageReductionMode 'VkBool32')
	)
]
