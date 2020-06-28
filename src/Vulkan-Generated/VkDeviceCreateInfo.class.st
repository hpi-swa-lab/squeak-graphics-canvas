Class {
	#name : #VkDeviceCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDeviceCreateFlags')
		(queueCreateInfoCount 'uint32_t')
		(pQueueCreateInfos 'VkDeviceQueueCreateInfo*')
		(enabledLayerCount 'uint32_t')
		(ppEnabledLayerNames 'char*')
		(enabledExtensionCount 'uint32_t')
		(ppEnabledExtensionNames 'char*')
		(pEnabledFeatures 'VkPhysicalDeviceFeatures*')
	)
]
