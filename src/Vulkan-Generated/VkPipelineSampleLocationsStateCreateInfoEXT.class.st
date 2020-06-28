Class {
	#name : #VkPipelineSampleLocationsStateCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineSampleLocationsStateCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(sampleLocationsEnable 'VkBool32')
		(sampleLocationsInfo 'VkSampleLocationsInfoEXT')
	)
]
