Class {
	#name : #VkPhysicalDeviceDescriptorIndexingFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDescriptorIndexingFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderInputAttachmentArrayDynamicIndexing 'VkBool32')
		(shaderUniformTexelBufferArrayDynamicIndexing 'VkBool32')
		(shaderStorageTexelBufferArrayDynamicIndexing 'VkBool32')
		(shaderUniformBufferArrayNonUniformIndexing 'VkBool32')
		(shaderSampledImageArrayNonUniformIndexing 'VkBool32')
		(shaderStorageBufferArrayNonUniformIndexing 'VkBool32')
		(shaderStorageImageArrayNonUniformIndexing 'VkBool32')
		(shaderInputAttachmentArrayNonUniformIndexing 'VkBool32')
		(shaderUniformTexelBufferArrayNonUniformIndexing 'VkBool32')
		(shaderStorageTexelBufferArrayNonUniformIndexing 'VkBool32')
		(descriptorBindingUniformBufferUpdateAfterBind 'VkBool32')
		(descriptorBindingSampledImageUpdateAfterBind 'VkBool32')
		(descriptorBindingStorageImageUpdateAfterBind 'VkBool32')
		(descriptorBindingStorageBufferUpdateAfterBind 'VkBool32')
		(descriptorBindingUniformTexelBufferUpdateAfterBind 'VkBool32')
		(descriptorBindingStorageTexelBufferUpdateAfterBind 'VkBool32')
		(descriptorBindingUpdateUnusedWhilePending 'VkBool32')
		(descriptorBindingPartiallyBound 'VkBool32')
		(descriptorBindingVariableDescriptorCount 'VkBool32')
		(runtimeDescriptorArray 'VkBool32')
	)
]
