initialization
initialize

	hands := Array new.
	stepList := Heap sortBlock: self stepListSortBlock.
	lastStepTime := 0.
	lastAlarmTime := 0