build ui
shapesWithTitleFor: timePoints
	^ timePoints collectWithIndex: [ :timePoint :index | 
		| g clock |
		g := RSGroup new.
		clock := self clockFor: timePoint.
		clock scaleBy: (index > 2 ifTrue: [ 0.5 ] ifFalse: [ 1 ]).
		g add: clock.
		g add: (RSLabel new
			fontSize: 20;
			color: Color white;
			text: timePoint label;
			position: 0@(clock matrix sx * 100 + 30)).
		g asShape.
		]