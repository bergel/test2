DEPRECATED - edge construction
buildEdgesFromObjects: objects from: fromBlock to: toBlock scope: aGroup
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"
	self deprecated: 'Please use RTEdgeBuilder instead'.
	^ self buildEdgesFromObjects: objects from: fromBlock to: toBlock using: RTLine new scope: aGroup