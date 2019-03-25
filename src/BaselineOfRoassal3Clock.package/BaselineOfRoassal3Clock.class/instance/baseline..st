baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec package: 'Roassal3' with: [
				spec repository: 'github://ObjectProfile/Roassal3/src' ].
			
			spec
				package: 'Roassal3-Clock' with: [spec requires: #('Roassal3')].
				
			spec 
				group: 'default' with: #('Roassal3-Clock') ]
			
		
	






