Class {
	#name : #VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pipelineExecutableInfo 'VkBool32')
	)
]
