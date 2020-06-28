Class {
	#name : #VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxGraphicsShaderGroupCount 'uint32_t')
		(maxIndirectSequenceCount 'uint32_t')
		(maxIndirectCommandsTokenCount 'uint32_t')
		(maxIndirectCommandsStreamCount 'uint32_t')
		(maxIndirectCommandsTokenOffset 'uint32_t')
		(maxIndirectCommandsStreamStride 'uint32_t')
		(minSequencesCountBufferOffsetAlignment 'uint32_t')
		(minSequencesIndexBufferOffsetAlignment 'uint32_t')
		(minIndirectCommandsBufferOffsetAlignment 'uint32_t')
	)
]
