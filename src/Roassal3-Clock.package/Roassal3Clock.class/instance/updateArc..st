build ui
updateArc: arc
	| timePoint |
	timePoint := arc model.
	arc alphaAngle: (NSScale linear
		domain:
			{timePoint minValue.
			timePoint maxValue };
		range: #(90 -270);
		scale: timePoint value)