as yet unclassified
generate: api fromFile: filePath

	| xml |
	xml := XMLDOMParser parseDocumentFrom: (filePath asURI contentStream).
	^ self generate: xml api: api