initialization
initialize

	super initialize.
	colors := {
		$R -> Color red .
		$G -> Color green .
		$B -> Color blue .
		$O -> Color black .
		$W -> Color white .
		$T -> Color transparent } as: Dictionary.