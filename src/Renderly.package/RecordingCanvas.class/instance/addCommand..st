private
addCommand: aCommand

	self currentLayer addCommand: aCommand.
	aCommand element: self currentElement