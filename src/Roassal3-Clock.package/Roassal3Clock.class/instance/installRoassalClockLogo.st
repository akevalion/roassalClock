build ui
installRoassalClockLogo
	<script: 'self new installRoassalClockLogo'>
	| m |
	m := self roassalCanvas createMorph.
	PolymorphSystemSettings setDesktopLogoWith: m.
	m position: 0@World menubar height.
	m extent: World extent - (0@World menubar height).
	self inform: 'Done!'.