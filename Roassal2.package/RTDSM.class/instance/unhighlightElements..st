UI
unhighlightElements: someElements
	someElements do: [ :e | e trachelShape color: (e trachelShape color alpha: 0.4) ]