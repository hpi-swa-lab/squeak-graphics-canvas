Class {
	#name : #VkInstanceCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkInstanceCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkInstanceCreateFlags')
		(pApplicationInfo 'VkApplicationInfo*')
		(enabledLayerCount 'uint32_t')
		(ppEnabledLayerNames 'char*')
		(enabledExtensionCount 'uint32_t')
		(ppEnabledExtensionNames 'char*')
	)
]
