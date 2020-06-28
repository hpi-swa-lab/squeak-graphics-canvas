Class {
	#name : #VkPhysicalDeviceTransformFeedbackPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceTransformFeedbackPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxTransformFeedbackStreams 'uint32_t')
		(maxTransformFeedbackBuffers 'uint32_t')
		(maxTransformFeedbackBufferSize 'VkDeviceSize')
		(maxTransformFeedbackStreamDataSize 'uint32_t')
		(maxTransformFeedbackBufferDataSize 'uint32_t')
		(maxTransformFeedbackBufferDataStride 'uint32_t')
		(transformFeedbackQueries 'VkBool32')
		(transformFeedbackStreamsLinesTriangles 'VkBool32')
		(transformFeedbackRasterizationStreamSelect 'VkBool32')
		(transformFeedbackDraw 'VkBool32')
	)
]
