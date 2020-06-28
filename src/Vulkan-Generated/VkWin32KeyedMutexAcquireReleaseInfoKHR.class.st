Class {
	#name : #VkWin32KeyedMutexAcquireReleaseInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkWin32KeyedMutexAcquireReleaseInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(acquireCount 'uint32_t')
		(pAcquireSyncs 'VkDeviceMemory*')
		(pAcquireKeys 'uint64_t*')
		(pAcquireTimeouts 'uint32_t*')
		(releaseCount 'uint32_t')
		(pReleaseSyncs 'VkDeviceMemory*')
		(pReleaseKeys 'uint64_t*')
	)
]
