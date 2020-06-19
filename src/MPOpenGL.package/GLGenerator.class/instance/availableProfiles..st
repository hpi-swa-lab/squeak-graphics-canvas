accessing
availableProfiles: api
	"compatibility core"
	| profiles |
	profiles := Set new.
	self api: api featuresDo: [:feature |
		feature elementsDo: [:elem |
			(elem attributeAt: #profile) ifNotNil: [:profile |
				profiles add: profile]]].
	^ profiles asArray