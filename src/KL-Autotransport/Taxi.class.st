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

{ #category : #accessing }
Taxi >> maxSpeed [

	^ maxSpeed
]

{ #category : #accessing }
Taxi >> maxSpeed: aNumber [

	maxSpeed := aNumber
]

{ #category : #calculating }
Taxi >> priceTrip [

	^ cost / places
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
