build ui
addImageBackground: v
	| image |
	image := self pngImage.
	v addShape: (RSBitmap new form: image).
	v
		when: RSExtentChangedEvent
		do: [ v camera zoomToFit: v extent extent: image extent ]