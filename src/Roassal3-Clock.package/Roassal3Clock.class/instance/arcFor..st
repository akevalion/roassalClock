build ui
arcFor: timePoint
	^ RSShapeFactory arc
		in: [:arc | arc color: (self gradientColors scale: arc)];
		betaAngle: 90;
		model: timePoint;
		innerRadius: 95;
		externalRadius: 105;
		arcRadiusAuto;
		yourself.