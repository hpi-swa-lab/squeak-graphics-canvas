as yet unclassified
fromFile: aFile

	^ self new initializeWithXML: (XMLDOMParser parseDocumentFrom: aFile fullName asURI contentStream)