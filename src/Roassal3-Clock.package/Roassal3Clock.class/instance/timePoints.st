accessing
timePoints
	<script: 'self new timePoints inspect'>
	| points |
	points := OrderedCollection new.
	
	1 to: 5 do: [ :i | points add: TimePoint new ].
	self updateTimePoints: points.
	^ points.