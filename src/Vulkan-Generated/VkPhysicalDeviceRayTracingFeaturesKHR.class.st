Class {
	#name : #VkPhysicalDeviceRayTracingFeaturesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceRayTracingFeaturesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(rayTracing 'VkBool32')
		(rayTracingShaderGroupHandleCaptureReplay 'VkBool32')
		(rayTracingShaderGroupHandleCaptureReplayMixed 'VkBool32')
		(rayTracingAccelerationStructureCaptureReplay 'VkBool32')
		(rayTracingIndirectTraceRays 'VkBool32')
		(rayTracingIndirectAccelerationStructureBuild 'VkBool32')
		(rayTracingHostAccelerationStructureCommands 'VkBool32')
		(rayQuery 'VkBool32')
		(rayTracingPrimitiveCulling 'VkBool32')
	)
]
