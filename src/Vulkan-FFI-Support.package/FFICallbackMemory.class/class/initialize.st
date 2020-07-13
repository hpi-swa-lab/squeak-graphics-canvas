class initialization
initialize

	self ensureInSpecialObjectsArray.
	Smalltalk addToStartUpList: self after: FFIPlatformDescription.
	LifoCallbackSemaphore := Semaphore new.

	AccessProtect := Semaphore forMutualExclusion.
	"AllocatedThunks := AlienWeakTable newForOwner: self."
	ExecutablePages := Set new.