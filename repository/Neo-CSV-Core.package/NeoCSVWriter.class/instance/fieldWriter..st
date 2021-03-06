initialize-release
fieldWriter: symbol
	"Set the field write to be used, either #quoted (the default), #raw or #object.
	This determines how field values will be written in the general case.
	#quoted will wrap fields #asString in double quotes and escape embedded double quotes
	#raw will write fields #asString as such (no separator, double quote or end of line chars allowed)
	#object will #print: fields (no separator, double quote or end of line chars allowed)"
	
	self assert: (#(quoted raw object) includes: symbol).
	fieldWriter := ('write', symbol capitalized, 'Field:') asSymbol
	