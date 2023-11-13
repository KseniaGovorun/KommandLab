Class {
	#name : #BusTest,
	#superclass : #TestCase,
	#instVars : [
		'cond',
		'condit'
	],
	#category : #'KL-Autotransport'
}

{ #category : #tests }
BusTest >> testInitialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	| bus |
	bus := Bus new initialize: 30 year: 2010 mileage: 2000 places: 45 cost: 7 condit: false TO: true.
	
	self assert: bus number equals: 30.
   self assert: bus year equals: 2010.
   self assert: bus mileage equals: 2000.
   self assert: bus places equals: 45.
   self assert: bus cost equals: 7.
   self assert: bus condit equals: false.
   self assert: bus tO equals: true.
]

{ #category : #tests }
BusTest >> testInitializeDefault [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	| bus |
	bus := Bus new.
	self assert: bus number equals: 23.
   self assert: bus year equals: 2003.
   self assert: bus mileage equals: 0.
   self assert: bus places equals: 50.
   self assert: bus cost equals: 5.
   self assert: bus condit equals: true.
   self assert: bus tO equals: true.
]

{ #category : #tests }
BusTest >> testPriceTrip [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| bus |
	bus := Bus new.
   self assert: bus priceTrip equals: 5 / (50 / 2).
]

{ #category : #tests }
BusTest >> testPrintOn [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| bus stream output |
   bus := Bus new.
   stream := WriteStream on: ''.
   bus printOn: stream.
   output := stream contents.
   self assert: output equals: 'Bus[ 23 2003 0 50 5 true true]'
	
]
