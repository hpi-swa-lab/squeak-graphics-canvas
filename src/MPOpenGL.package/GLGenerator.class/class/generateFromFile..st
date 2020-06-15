as yet unclassified
generateFromFile: filePath

	| xml |
	xml := XMLDOMParser parseDocumentFrom: (filePath asURI contentStream).
	^ self generate: xml api: 'GL'