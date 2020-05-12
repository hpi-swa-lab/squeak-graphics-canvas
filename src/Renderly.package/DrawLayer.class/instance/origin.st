accessing
origin
	"global (absolute) coordinate"
	^ origin ifNil: [origin := self parent origin]