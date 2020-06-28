as yet unclassified
getAPIClass

	^ Smalltalk
		at: #VkAPI
		ifAbsent: [ | lib |
			lib := ExternalLibrary
				subclass: #VkAPI
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: 'Vulkan-Generated'.
			lib class compile: 'moduleName

	^ ''libvulkan'''.
			lib]