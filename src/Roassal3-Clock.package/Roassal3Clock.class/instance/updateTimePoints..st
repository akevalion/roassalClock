model updates
updateTimePoints: points
	| current date month time  |
	current := DateAndTime now.
	
	date := current asDate.
	time := current asTime.
	
	points first
		label: date year asString;
		value: date monthIndex;
		valueText: (Month nameOfMonth: date monthIndex);
		minValue: 0;
		maxValue: 12.
	month := date asMonth.
	points second  
		label: 'Days';
		value: date dayOfMonth;
		minValue: 0;
		maxValue: month daysInMonth.
		
	points third
		label: 'Hours';
		value: time hours;
		minValue: 0;
		maxValue: 24.
		
	points fourth
		label: 'Minutes';
		value: time minutes;
		minValue: 0;
		maxValue: 60.
		
	points fifth
		label: 'Seconds';
		value: time seconds;
		minValue: 0;
		maxValue: 60.