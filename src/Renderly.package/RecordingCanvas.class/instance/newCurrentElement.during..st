private
newCurrentElement: anObject during: aBlock

	| before |
	before := self currentElement.
	self currentElement: anObject.
	aBlock value.
	self currentElement: before