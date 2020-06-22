accessing
replaceWith: newLayer

	newLayer parent: self parent.
	self parent replaceChild: self with: newLayer