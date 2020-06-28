Class {
	#name : #VkCalibratedTimestampInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCalibratedTimestampInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(timeDomain 'VkTimeDomainEXT')
	)
]
