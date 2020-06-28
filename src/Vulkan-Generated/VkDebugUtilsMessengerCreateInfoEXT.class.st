Class {
	#name : #VkDebugUtilsMessengerCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugUtilsMessengerCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDebugUtilsMessengerCreateFlagsEXT')
		(messageSeverity 'VkDebugUtilsMessageSeverityFlagsEXT')
		(messageType 'VkDebugUtilsMessageTypeFlagsEXT')
		(pfnUserCallback 'PFN_vkDebugUtilsMessengerCallbackEXT')
		(pUserData 'void*')
	)
]
