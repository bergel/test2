private
seconds: seconds
	animatedValue := VIAnimatedValue new
		evaluator: [ :t | t ];
		timer: (VITimer new cycleLength: seconds);
		yourself.
	

