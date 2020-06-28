Class {
	#name : #VkPhysicalDeviceSparseProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSparseProperties class >> fields [

	^ #(
		(residencyStandard2DBlockShape 'VkBool32')
		(residencyStandard2DMultisampleBlockShape 'VkBool32')
		(residencyStandard3DBlockShape 'VkBool32')
		(residencyAlignedMipSize 'VkBool32')
		(residencyNonResidentStrict 'VkBool32')
	)
]
