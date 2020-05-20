initialization
initialize

	super initialize.
	clipRect := (self transform globalBoundsToLocal: self bounds) truncated.
	origin := clipRect topLeft negated "global"