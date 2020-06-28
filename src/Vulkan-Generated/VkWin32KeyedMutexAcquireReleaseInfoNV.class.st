Class {
	#name : #VkWin32KeyedMutexAcquireReleaseInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkWin32KeyedMutexAcquireReleaseInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(acquireCount 'uint32_t')
		(pAcquireSyncs 'VkDeviceMemory*')
		(pAcquireKeys 'uint64_t*')
		(pAcquireTimeoutMilliseconds 'uint32_t*')
		(releaseCount 'uint32_t')
		(pReleaseSyncs 'VkDeviceMemory*')
		(pReleaseKeys 'uint64_t*')
	)
]
