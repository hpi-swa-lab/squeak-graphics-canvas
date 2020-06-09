as yet unclassified
paintChild: aMorph

	aMorph isRepaintBoundary
		ifTrue: [
			self closeCurrentPicture.
			self compositeChild: aMorph]
		ifFalse: [
			aMorph paintOn: self]