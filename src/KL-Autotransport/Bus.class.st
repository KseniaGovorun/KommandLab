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

{ #category : #initialization }
Bus >> initialize [ 

	number := 23. 
	year := 2003.
	mileage := 0.
	places := 50.
	cost := 5.
	condit := true.
	TO := true.
]

{ #category : #calculating }
Bus >> priceTrip [

	^ cost / (places / 2)
]

{ #category : #calculating }
Bus >> priceTrip: distance [

	^ distance * cost / (places / 2)
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
