accessing
position

	^ position ifNil: [self patchRect topLeft negated]