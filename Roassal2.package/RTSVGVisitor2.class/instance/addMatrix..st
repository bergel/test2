helpers
addMatrix: m
	stream nextPutAll: 'matrix:{shx: ', (self number: m shx), 
		', shy: ',  (self number: m shy), 
		', sx: ', (self number: m sx), 
		', sy: ', (self number: m sy), 
		', x: ', (self number: m x), ', y: ', (self number: m y), '}}, '.
	