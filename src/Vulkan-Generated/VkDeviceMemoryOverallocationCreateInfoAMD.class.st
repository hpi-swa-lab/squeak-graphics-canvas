Class {
	#name : #VkDeviceMemoryOverallocationCreateInfoAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceMemoryOverallocationCreateInfoAMD class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(overallocationBehavior 'VkMemoryOverallocationBehaviorAMD')
	)
]
