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
		(driverName 'char')
		(driverInfo 'char')
		(conformanceVersion 'VkConformanceVersion')
	)
]
