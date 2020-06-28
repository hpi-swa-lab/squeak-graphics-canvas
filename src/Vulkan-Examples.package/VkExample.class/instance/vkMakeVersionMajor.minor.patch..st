as yet unclassified
vkMakeVersionMajor: major minor: minor patch: patch

	SBExample self: [VkExample basicNew] args: [{1. 0. 0}] label: 'example'.
	^ (major << 22 bitOr: minor << 12) bitOr: patch