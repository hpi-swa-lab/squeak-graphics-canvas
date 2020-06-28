as yet unclassified
fields

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(type 'VkAccelerationStructureTypeKHR')
		(flags 'VkBuildAccelerationStructureFlagsKHR')
		(update 'VkBool32')
		(srcAccelerationStructure 'VkAccelerationStructureKHR')
		(dstAccelerationStructure 'VkAccelerationStructureKHR')
		(geometryArrayOfPointers 'VkBool32')
		(geometryCount 'uint32_t')
		(ppGeometries 'VkAccelerationStructureGeometryKHR*')
		(scratchData 'VkDeviceOrHostAddressKHR')
	)