testing
testSimpleSemiColonDelimited
	| input |
	input := (String crlf join: #('1;2;3' '4;5;6' '7;8;9' '')).
	self 
		assert: ((NeoCSVReader on: input readStream) 
					separator: $; ;
					upToEnd)
		equals: #(('1' '2' '3')('4' '5' '6')('7' '8' '9'))