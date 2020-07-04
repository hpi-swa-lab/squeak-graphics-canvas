Class {
	#name : #VkPhysicalDeviceDriverProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDriverProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(driverID 'VkDriverId')
		(driverName 'char[256]')
		(driverInfo 'char[256]')
		(conformanceVersion 'VkConformanceVersion')
	)
]
