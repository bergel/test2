tests
testBitmapShape2
	| shape e form |
	shape := RTBitmap new.
	shape form: #yourself.
	form := TRPlatform current colorFormClass extent: 600 @ 523 depth: 32.
	e := shape elementOn: form.
	self assert: e trachelShape form equals: form.