Class {
	#name : #VkDebugReportCallbackCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDebugReportCallbackCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDebugReportFlagsEXT')
		(pfnCallback 'PFN_vkDebugReportCallbackEXT')
		(pUserData 'void*')
	)
]
