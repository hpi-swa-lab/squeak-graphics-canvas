Class {
	#name : #VkPhysicalDeviceTransformFeedbackFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceTransformFeedbackFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(transformFeedback 'VkBool32')
		(geometryStreams 'VkBool32')
	)
]
