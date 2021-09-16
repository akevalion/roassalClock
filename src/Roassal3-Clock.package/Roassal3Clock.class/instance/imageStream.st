accessing
imageStream
	| client file |
	file := './pharo-local/iceberg/akevalion/roassalClock/img/rclock.png' asFileReference.
	file exists 
		ifTrue: [ ^ file binaryReadStream ].
	(client := ZnEasy client)
		url:
			'https://www.dropbox.com/s/b1akk024ct3sule/rclock.png?raw=1';
		accept: ZnMimeType imagePng;
		signalProgress: true;
		get.
	
	file binaryWriteStreamDo: [ :s | s nextPutAll: client entity readStream contents ].
	^ client entity readStream.