build ui
circleFor: timePoint
	^ RSShapeFactory circle
		paint: nil;
		border: (RSBorder new
			color: (Color lightGray alpha: 0.7);
			width: 5);
		radius: 100;
		yourself