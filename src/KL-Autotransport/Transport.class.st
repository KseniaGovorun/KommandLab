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

	^ self priceTrip < aTransport priceTrip
]

{ #category : #comparing }
Transport >> > aTransport [

	^ aTransport < self
]

{ #category : #calculating }
Transport >> afterTrip [

	^ self subclassResponsibility
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

{ #category : #calculating }
Transport >> priceTrip [

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
