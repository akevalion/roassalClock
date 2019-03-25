build ui
addImageBackground: v
	| image |
	image := self pngImage.
	v addShape: (TSBitmap new form: image).
	v
		when: TSExtentChangedEvent
		do: [ v camera zoomToFit: v extent extent: image extent ]