initialization
initializeShapes
	| positions |
	circle := RSShapeBuilder circle
		paint: nil;
		border: (TSBorder new
			color: (Color lightGray alpha: 0.7);
			width: 5);
		radius: 100.
	arc := RSShapeBuilder arc
		color: self gradientColors;
		betaAngle: 90;
		alphaAngle: [ :m | 
			TSScale linear
				domain:
					{m minValue.
					m maxValue};
				range: {90 . -270};
				scale: m value ];
		innerRadius: 95;
		externalRadius: 105;
		arcRadiusAuto.
	label := RSShapeBuilder label
		color: Color white;
		text: #valueText;
		fontSize: 30.
	positions := TSScale ordinal
		range:
			{(-120 @ -100).
			(120 @ -100).
			(-150 @ 100).
			(0 @ 100).
			(150 @ 100)}.
	shape := RSShapeBuilder composite
		shapes: [ :m | | a l |
			a :=  arc elementOn: m.
			l := label elementOn: m.
			view newAnimation repeat; duration: 1 second;
				when: TSAnimationLoopEvent do: [ 
					arc updateElement: a.
					label updateElement: l ].
			TSGroup new
				add: (circle elementOn: m);
				add: a ;
				add: l;
				yourself ].
	shapeWithTitle := RSShapeBuilder composite
		onElement;
		shapes: [ :e | 
			| g com |
			g := TSGroup new.
			com := shape elementOn: e model.
			com scaleBy: (e index > 2 ifTrue: [ 0.5 ] ifFalse: [ 1 ]).
			g add: com.
			g add: (TSLabel new
				fontSize: 20;
				color: Color white;
				text: e model label;
				position: 0 @ (com matrix sx * 100 + 30)).
			g ];
		translateTo: [ :e | positions scale: e ]