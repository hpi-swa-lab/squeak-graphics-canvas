Class {
	#name : #VkPhysicalDeviceShaderAtomicInt64Features,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderAtomicInt64Features class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderBufferInt64Atomics 'VkBool32')
		(shaderSharedInt64Atomics 'VkBool32')
	)
]
