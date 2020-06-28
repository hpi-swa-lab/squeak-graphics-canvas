Class {
	#name : #VkPipelineTessellationDomainOriginStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineTessellationDomainOriginStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(domainOrigin 'VkTessellationDomainOrigin')
	)
]
