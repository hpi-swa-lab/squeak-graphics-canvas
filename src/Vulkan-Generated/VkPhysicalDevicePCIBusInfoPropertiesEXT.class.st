Class {
	#name : #VkPhysicalDevicePCIBusInfoPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevicePCIBusInfoPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pciDomain 'uint32_t')
		(pciBus 'uint32_t')
		(pciDevice 'uint32_t')
		(pciFunction 'uint32_t')
	)
]
