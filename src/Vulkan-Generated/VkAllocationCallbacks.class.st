Class {
	#name : #VkAllocationCallbacks,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAllocationCallbacks class >> fields [

	^ #(
		(pUserData 'void*')
		(pfnAllocation 'PFN_vkAllocationFunction')
		(pfnReallocation 'PFN_vkReallocationFunction')
		(pfnFree 'PFN_vkFreeFunction')
		(pfnInternalAllocation 'PFN_vkInternalAllocationNotification')
		(pfnInternalFree 'PFN_vkInternalFreeNotification')
	)
]
