accessing
valueText
	^ valueText ifNil: [ self value asString ]