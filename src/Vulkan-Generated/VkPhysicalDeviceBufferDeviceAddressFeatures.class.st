Class {
	#name : #VkPhysicalDeviceBufferDeviceAddressFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceBufferDeviceAddressFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(bufferDeviceAddress 'VkBool32')
		(bufferDeviceAddressCaptureReplay 'VkBool32')
		(bufferDeviceAddressMultiDevice 'VkBool32')
	)
]
