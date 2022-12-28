mouse handlers
clickEvent: anEvent
	"self halt."
	anEvent consumed: true.
	anEvent currentTarget clicked.