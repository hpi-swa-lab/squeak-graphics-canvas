change reporting
invalidRect: damageRect from: aMorph

	self isWorldMorph ifTrue: [
		worldState recordDamagedRect: damageRect from: aMorph].
	^super invalidRect: damageRect from: aMorph