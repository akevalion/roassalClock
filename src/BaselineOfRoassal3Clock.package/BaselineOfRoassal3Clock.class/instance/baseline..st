baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec 
				baseline: 'Roassal3' 
				with: [ spec repository: 'github://ObjectProfile/Roassal3/src' ].

			spec
				package: 'Roassal3-Trachel'
				with: [ spec repository: 'github://ObjectProfile/Roassal3/src' ].
			spec
				package: 'Roassal3-Scales'
				with: [ spec repository: 'github://ObjectProfile/Roassal3/src' ].
			spec
				package: 'Roassal3-Trachel-Shapes'
				with: [ spec repository: 'github://ObjectProfile/Roassal3/src' ].
			spec
				package: 'Roassal3-Animation'
				with: [ spec repository: 'github://ObjectProfile/Roassal3/src' ].
			spec
				package: 'Roassal3-Clock'
				with: [ spec
						requires:
							#('Roassal3') ].
			spec group: 'default' with: #('Roassal3-Clock') ]