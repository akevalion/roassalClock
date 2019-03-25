baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'Roassal Core'
				with: [ spec
						repository: 'github://ObjectProfile/Roassal3/src';
						loads: #('Core') ].
			spec
				package: 'Roassal3-Clock'
				with: [ spec
						requires:
							#('Roassal Core') ].
			spec group: 'default' with: #('Roassal3-Clock') ]