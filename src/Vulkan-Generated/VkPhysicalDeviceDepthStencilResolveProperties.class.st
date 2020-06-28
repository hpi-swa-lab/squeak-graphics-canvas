Class {
	#name : #VkPhysicalDeviceDepthStencilResolveProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDepthStencilResolveProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(supportedDepthResolveModes 'VkResolveModeFlags')
		(supportedStencilResolveModes 'VkResolveModeFlags')
		(independentResolveNone 'VkBool32')
		(independentResolve 'VkBool32')
	)
]
