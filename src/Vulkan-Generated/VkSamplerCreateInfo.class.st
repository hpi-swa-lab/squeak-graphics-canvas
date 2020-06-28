Class {
	#name : #VkSamplerCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSamplerCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkSamplerCreateFlags')
		(magFilter 'VkFilter')
		(minFilter 'VkFilter')
		(mipmapMode 'VkSamplerMipmapMode')
		(addressModeU 'VkSamplerAddressMode')
		(addressModeV 'VkSamplerAddressMode')
		(addressModeW 'VkSamplerAddressMode')
		(mipLodBias 'float')
		(anisotropyEnable 'VkBool32')
		(maxAnisotropy 'float')
		(compareEnable 'VkBool32')
		(compareOp 'VkCompareOp')
		(minLod 'float')
		(maxLod 'float')
		(borderColor 'VkBorderColor')
		(unnormalizedCoordinates 'VkBool32')
	)
]
