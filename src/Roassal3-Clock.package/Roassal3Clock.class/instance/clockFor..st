build ui
clockFor: timePoint
	| arc label |
	arc := self arcFor: timePoint.
	label := self labelFor: timePoint.
	self updateArc: arc.
	label text: timePoint valueText.
	arc newAnimation
		repeat;
		duration: 1 second;
		when: RSAnimationLoopEvent do: [ 
			self updateArc: arc.
			label text: timePoint valueText ].
	^ { self circleFor: timePoint. arc. label } asShape
	
	
	