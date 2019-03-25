accessing
gradientColors
	<script: 'self new gradientColors inspect'>
	^ TSScale ordinal range: { 
		self gradientColor: {(0 -> Color white). (1 -> Color blue)}.
		self gradientColor: {(0.25 -> Color cyan). (0.5-> Color green). (0.85 -> Color magenta)}.	
		self gradientColor: {(0 -> Color lightMagenta). (1 -> Color red)}.
		self gradientColor: {(0 -> Color lightCyan). (1 -> Color orange)}.
		self gradientColor: {(0 -> Color magenta). (1 -> Color yellow)}.
	}