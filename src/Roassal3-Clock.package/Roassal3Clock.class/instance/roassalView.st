build ui
roassalView
	<script: 'self new roassalView open setLabel:''Clock'''>
	|  timePoints elements |
	view := RSView new.
	self addImageBackground: view.
	timePoints := self timePoints.
	elements := shapeWithTitle elementsOn: timePoints.
	
	view add: elements asElement.
	view newAnimation repeat 
		duration: 10 seconds;
		scale: (TSScale linear 
			domain: {0. 0.5. 1}; 
			range: { 0.25. -0.25. 0.25 } );
		on: view elements first matrix set: #shx:.
	view newAnimation repeat 
		duration: 1 second;
		when: TSAnimationLoopEvent do: [ 
			self updateTimePoints: timePoints.
			 ].
	^ view