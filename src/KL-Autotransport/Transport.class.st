"
General class for transport with 6 fields: number year mileage places cost TO
TO is maintenance for auto. 
"
Class {
	#name : #Transport,
	#superclass : #Object,
	#instVars : [
		'number',
		'year',
		'mileage',
		'places',
		'cost',
		'TO'
	],
	#category : #'KL-Autotransport'
}

{ #category : #comparing }
Transport >> < aTransport [

	^ (self priceTrip:1) < (aTransport priceTrip:1)
]

{ #category : #comparing }
Transport >> > aTransport [

	^ aTransport < self
]

{ #category : #abstract }
Transport >> Trip: dictance [

	| price cnf strprice|
	price := self priceTrip: dictance.
	strprice:= price printString.
	cnf:=UIManager default
		           confirm: strprice
		           label: 'Is price gut for you?'.
		cnf 
		ifTrue: [ self afterTrip: dictance ]
		ifFalse: [ UIManager default inform: 'Trip canceled' ]
]

{ #category : #calculating }
Transport >> afterTrip: distance [

	^ self subclassResponsibility
]

{ #category : #accessing }
Transport >> cost [

	^ cost
]

{ #category : #accessing }
Transport >> cost: aNumber [

	cost := 0.1 max: aNumber
]

{ #category : #initialization }
Transport >> initialize [ 

	number := 23. 
	year := 2003.
	mileage := 0.
	places := 2.
	cost := 5.
	TO := true.
]

{ #category : #accessing }
Transport >> mileage [

	^ mileage
]

{ #category : #accessing }
Transport >> mileage: aNumber [

	mileage :=  0 max: aNumber
]

{ #category : #accessing }
Transport >> number [

	^ number
]

{ #category : #accessing }
Transport >> number: aNumber [

	number := aNumber
]

{ #category : #accessing }
Transport >> places [

	^ places
]

{ #category : #accessing }
Transport >> places: aNumber [

	places :=  1 max: aNumber
]

{ #category : #calculating }
Transport >> priceTrip: distance [

	^ self subclassResponsibility
]

{ #category : #printing }
Transport >> printOn: aStream [
	aStream nextPutAll: 'Transport[ '.
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
	TO printOn: aStream.
	aStream nextPut: $].

	
		

		 
	
]

{ #category : #accessing }
Transport >> tO [

	^ TO
]

{ #category : #accessing }
Transport >> tO: aBoolean [

	TO := aBoolean
]

{ #category : #accessing }
Transport >> year [

	^ year
]

{ #category : #accessing }
Transport >> year: aNumber [

	year := 1899 max: aNumber
]
