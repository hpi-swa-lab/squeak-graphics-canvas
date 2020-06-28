Class {
	#name : #VkPipelineInputAssemblyStateCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineInputAssemblyStateCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineInputAssemblyStateCreateFlags')
		(topology 'VkPrimitiveTopology')
		(primitiveRestartEnable 'VkBool32')
	)
]
