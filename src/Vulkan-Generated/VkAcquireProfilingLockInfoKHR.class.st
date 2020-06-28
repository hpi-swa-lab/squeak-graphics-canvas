Class {
	#name : #VkAcquireProfilingLockInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAcquireProfilingLockInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkAcquireProfilingLockFlagsKHR')
		(timeout 'uint64_t')
	)
]
