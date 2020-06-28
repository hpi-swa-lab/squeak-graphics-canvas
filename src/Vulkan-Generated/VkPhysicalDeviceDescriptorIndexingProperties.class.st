Class {
	#name : #VkPhysicalDeviceDescriptorIndexingProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDescriptorIndexingProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxUpdateAfterBindDescriptorsInAllPools 'uint32_t')
		(shaderUniformBufferArrayNonUniformIndexingNative 'VkBool32')
		(shaderSampledImageArrayNonUniformIndexingNative 'VkBool32')
		(shaderStorageBufferArrayNonUniformIndexingNative 'VkBool32')
		(shaderStorageImageArrayNonUniformIndexingNative 'VkBool32')
		(shaderInputAttachmentArrayNonUniformIndexingNative 'VkBool32')
		(robustBufferAccessUpdateAfterBind 'VkBool32')
		(quadDivergentImplicitLod 'VkBool32')
		(maxPerStageDescriptorUpdateAfterBindSamplers 'uint32_t')
		(maxPerStageDescriptorUpdateAfterBindUniformBuffers 'uint32_t')
		(maxPerStageDescriptorUpdateAfterBindStorageBuffers 'uint32_t')
		(maxPerStageDescriptorUpdateAfterBindSampledImages 'uint32_t')
		(maxPerStageDescriptorUpdateAfterBindStorageImages 'uint32_t')
		(maxPerStageDescriptorUpdateAfterBindInputAttachments 'uint32_t')
		(maxPerStageUpdateAfterBindResources 'uint32_t')
		(maxDescriptorSetUpdateAfterBindSamplers 'uint32_t')
		(maxDescriptorSetUpdateAfterBindUniformBuffers 'uint32_t')
		(maxDescriptorSetUpdateAfterBindUniformBuffersDynamic 'uint32_t')
		(maxDescriptorSetUpdateAfterBindStorageBuffers 'uint32_t')
		(maxDescriptorSetUpdateAfterBindStorageBuffersDynamic 'uint32_t')
		(maxDescriptorSetUpdateAfterBindSampledImages 'uint32_t')
		(maxDescriptorSetUpdateAfterBindStorageImages 'uint32_t')
		(maxDescriptorSetUpdateAfterBindInputAttachments 'uint32_t')
	)
]
