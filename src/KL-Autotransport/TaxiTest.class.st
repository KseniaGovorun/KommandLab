Class {
	#name : #TaxiTest,
	#superclass : #TestCase,
	#instVars : [
		'maxSpeed'
	],
	#category : #'KL-Autotransport'
}

{ #category : #running }
TaxiTest >> setUp [
	| taxi |
	super setUp.
   taxi := Taxi new.
]

{ #category : #'as yet unclassified' }
TaxiTest >> testInizialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

    | taxi stream output |
    stream := WriteStream on: ''.
	 taxi := Taxi new.
    taxi printOn: stream.
    output := stream contents.
    self assert: output equals: 'Taxi[ 23 2003 0 4 5 50 true]'
]

{ #category : #tests }
TaxiTest >> testInizializeDefault [

	| taxi |
	taxi := Taxi new. 
	
	self assert: taxi number equals: 23.
	self assert: taxi year equals: 2003.
	self assert: taxi places equals: 4.
	self assert: taxi mileage equals: 0.
	self assert: taxi cost equals: 5.
	self assert: taxi maxSpeed equals: 50.
	self assert: taxi tO equals: true. 
]

{ #category : #tests }
TaxiTest >> testPriceTrip [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	| taxi distance result |
   taxi := Taxi new.
	distance := 10.
	result := taxi priceTrip: distance.
	
   self assert: result equals: 10 * 5 / 4.
]

{ #category : #tests }
TaxiTest >> testPrintOn [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| taxi stream output |
	taxi := Taxi new.
   stream := WriteStream on: ''.
   taxi printOn: stream.
   output := stream contents.
	self assert: output equals: 'Taxi[ 23 2003 0 4 5 50 true]'
]
