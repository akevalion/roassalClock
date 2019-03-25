build ui
roassalView
	<script: 'self new roassalView open setLabel:''Clock'''>
	| v timePoints elements |
	v := RSView new.
	self addImageBackground: v.
	timePoints := self timePoints.
	elements := shapeWithTitle elementsOn: timePoints.
	v addAll: elements.
	v add: v elements asElement.
	v elements first matrix shx: 0.25.
	v animation repeat 
		duration: 10 seconds;
		scale: (TSScale linear domain: {0. 0.5. 1}; range: { -0.25. 0.25. -0.25 } );
		on: v elements first matrix set: #shx:.
	v animation repeat 
		duration: 1 second;
		onStepDo: [ :t ];
		when: TSAnimationLoopEvent do: [ 
			self updateTimePoints: timePoints.
			elements do: [ :e | e shapes copy do: #remove ].
			shapeWithTitle updateElements: elements.
			 ].
	
	^ v