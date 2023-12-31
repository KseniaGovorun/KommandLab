"
Тахі - це транспорт з обмеженням пасажирів до 4 осіб, памятає свою максимальну швидкість та певний алгоритм обрахунку квитка
"
Class {
	#name : #Taxi,
	#superclass : #Transport,
	#instVars : [
		'maxSpeed'
	],
	#category : #'KL-Autotransport'
}

{ #category : #'as yet unclassified' }
Taxi >> afterTrip: distance [

	mileage := mileage + distance.
	^ mileage
]

{ #category : #initialization }
Taxi >> initialize [ 

	number := 23. 
	year := 2003.
	mileage := 0.
	places := 4.
	cost := 5.
	maxSpeed := 50.
	TO := true.
	
]

{ #category : #initialization }
Taxi >> initialize: n year: y mileage: m places: p cost: c maxSpeed: ms TO: t [

	number := n.
	year := y.
	mileage := m.
	p < 5
		ifTrue: [ places := p ]
		ifFalse: [
			Transcript
				show: 'Місць в таксі максимум доступно 4'].
	cost := c.
	TO := t.
	maxSpeed := ms.
]

{ #category : #accessing }
Taxi >> maxSpeed [

	^ maxSpeed
]

{ #category : #accessing }
Taxi >> maxSpeed: aNumber [

	maxSpeed := aNumber
]

{ #category : #calculating }
Taxi >> priceTrip: distance [

	^ distance * cost / places
]

{ #category : #printing }
Taxi >> printOn: aStream [

	aStream nextPutAll: 'Taxi[ '.
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
	maxSpeed printOn: aStream.
	aStream nextPut: $ .
	TO printOn: aStream.
	aStream nextPut: $]
]
