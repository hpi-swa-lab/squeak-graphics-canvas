Class {
	#name : #VkExtensionProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExtensionProperties class >> fields [

	^ #(
		(extensionName 'char[256]')
		(specVersion 'uint32_t')
	)
]
