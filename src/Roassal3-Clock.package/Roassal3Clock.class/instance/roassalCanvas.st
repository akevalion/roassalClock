build ui
roassalCanvas
	<script: 'self new roassalCanvas open setLabel:''Clock'''>
	| timePoints shapes |
	canvas := RSCanvas new.
	self addImageBackground: canvas.
	timePoints := self timePoints.
	
	shapes := self shapesWithTitleFor: timePoints.
	{(-120 @ -100).
	(120 @ -100).
	(-150 @ 100).
	(0 @ 100).
	(150 @ 100)} with: shapes do: [ :p :s | s translateTo: p ].
	canvas add: shapes asGroup asShape.
	canvas newAnimation repeat 
		duration: 10 seconds;
		scale: (NSScale linear 
			domain: {0. 0.5. 1}; 
			range: { 0.25. -0.25. 0.25 } );
		on: canvas nodes first matrix set: #shx:.
	canvas newAnimation repeat 
		duration: 1 second;
		when: RSAnimationLoopEvent do: [ self updateTimePoints: timePoints].
	^ canvas