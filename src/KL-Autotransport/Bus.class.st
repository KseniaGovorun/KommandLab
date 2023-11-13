"
Bus - це транспорт з обмеженням до 50 осіб, може мати кондиціонер та має свій алгоритм пошуку вартості
"
Class {
	#name : #Bus,
	#superclass : #Transport,
	#instVars : [
		'cond',
		'condit'
	],
	#category : #'KL-Autotransport'
}

{ #category : #'as yet unclassified' }
Bus >> afterTrip: distance [

	mileage := mileage + distance.
	^ mileage
]

{ #category : #accessing }
Bus >> condit [

	^ condit
]

{ #category : #accessing }
Bus >> condit: aBoolean [

	condit := aBoolean
]

{ #category : #initialization }
Bus >> initialize [ 

	number:= 23. 
	year := 2003.
	mileage := 0.
	places := 50.
	cost := 5.
	condit := true.
	TO := true.
]


{ #category : #'class initialization' }
Bus >> initialize: n year: y mileage: m places: p cost: c condit: con TO: t [

	number := n.
	year := y.
	mileage := m.
	p < 51
		ifTrue: [ places := p ]
		ifFalse: [
			messageText := 'Місць в автобусі максимум доступно 50'.
			Transcript show: messageText.
			^ Error new message: messageText.
			].
	cost := c.
	condit := con.
	TO := t
]

{ #category : #calculating }
Bus >> priceTrip: distance [

	^ (distance * cost) / (places / 2)
]

{ #category : #printing }
Bus >> printOn: aStream [

	aStream nextPutAll: 'Bus[ '.
	number printOn: aStream.
	aStream nextPut: $ .
	year printOn: aStream.
	aStream nextPut: $ .
	mileage printOn: aStream.
	aStream nextPut: $ .
	places printOn: aStream.
	aStream nextPut: $ .
	cost printOn: aStream.
	aStream nextPut: $ .
	condit printOn: aStream.
	aStream nextPut: $ .
	TO printOn: aStream.
	aStream nextPut: $]
]
