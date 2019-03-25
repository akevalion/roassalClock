accessing
gradientColor: ramp
	| r x1 x2 |
	r := SharedRandom globalGenerator.
	x1 := -108.
	x2 := 108.
	r next > 0.5 ifTrue: [ 
		x1 := x1 negated.
		x2 := x2 negated ].
	^ LinearGradientPaint new
		colorRamp: ramp;
		start: x1@ (r rsNext: -108 and: 108);
		stop: x2@ (r rsNext: -108 and: 108)