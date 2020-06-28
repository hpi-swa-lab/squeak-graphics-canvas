Class {
	#name : #VkValidationCacheCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkValidationCacheCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkValidationCacheCreateFlagsEXT')
		(initialDataSize 'size_t')
		(pInitialData 'void*')
	)
]
