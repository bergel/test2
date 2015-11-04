as yet unclassified
menuCommandOn: aBuilder
	<worldMenu>
	((aBuilder item: #RoassalPlugin; parent: #Roassal) icon: RTIcon smallRoassal)
		withSeparatorAfter;
		with: [
			self allSubclasses do: [ :cls |
				(aBuilder item: (#'Plugin: ', cls new label))
					order: 0.3; 
					parent: #RoassalPlugin;
					label: cls new label;
					icon: RTIcon smallRoassal;
					action: [ cls new run ] ] ]