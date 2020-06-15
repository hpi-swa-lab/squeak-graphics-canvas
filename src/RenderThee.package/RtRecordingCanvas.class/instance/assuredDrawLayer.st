accessing
assuredDrawLayer

	^ drawLayer ifNil: [drawLayer := RtDrawLayer new]