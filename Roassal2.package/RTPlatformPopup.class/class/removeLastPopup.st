as yet unclassified
removeLastPopup
	TRPlatform current deletePopup: self lastPopup.
	lastPopup := nil.