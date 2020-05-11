as yet unclassified
handleRequireElement: anElement class: aVersionClass
	(self arrayFor: anElement) at: (anElement attributeAt: #name) put: aVersionClass.