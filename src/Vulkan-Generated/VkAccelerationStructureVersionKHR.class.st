Class {
	#name : #VkAccelerationStructureVersionKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAccelerationStructureVersionKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(versionData 'uint8_t*')
	)
]
