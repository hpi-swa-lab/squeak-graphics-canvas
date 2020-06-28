as yet unclassified
checkError: aResult

	aResult ~= VkResult VK_SUCCESS value ifTrue: [self error: 'operation failed']