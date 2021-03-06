sources
exampleFileSystem

| b color |
b := RTCircularTreeMapBuilder new.
color := RTScale linear 
	domain: #(0 12000); 
	range: (Array with: Color gray with: Color red).
b shape
	color: Color transparent;
	borderColor: Color black;
	if: [ :f | f isFile ] color: [ :f | color scale: f size sqrt ].
b 
	leafWeight: [:f | f size sqrt ]; 
	explore: TRPlatform current workingDirectory
	nesting: #directories
	leaves: #files.
b build.
^ b view