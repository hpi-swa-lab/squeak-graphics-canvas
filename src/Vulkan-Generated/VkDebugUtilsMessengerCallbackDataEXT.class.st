Class {
	#name : #VkDebugUtilsMessengerCallbackDataEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugUtilsMessengerCallbackDataEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDebugUtilsMessengerCallbackDataFlagsEXT')
		(pMessageIdName 'char*')
		(messageIdNumber 'int32_t')
		(pMessage 'char*')
		(queueLabelCount 'uint32_t')
		(pQueueLabels 'VkDebugUtilsLabelEXT*')
		(cmdBufLabelCount 'uint32_t')
		(pCmdBufLabels 'VkDebugUtilsLabelEXT*')
		(objectCount 'uint32_t')
		(pObjects 'VkDebugUtilsObjectNameInfoEXT*')
	)
]
