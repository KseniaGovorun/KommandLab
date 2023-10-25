Class {
	#name : #TransportTest,
	#superclass : #TestCase,
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

{ #category : #tests }
TransportTest >> testComparing [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	
    | transport1 transport2 |
    transport1 := Bus new cost: 10.0.
    transport2 := Taxi new cost: 60.0.
	 self assert: (transport1 < transport2) equals: true.

]

{ #category : #tests }
TransportTest >> testGetters [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	 | transport |
    transport := Transport new.

    "Test initialization"
    self assert: transport number equals: 23.
    self assert: transport year equals: 2003.
    self assert: transport mileage equals: 0.
    self assert: transport places equals: 2.
    self assert: transport cost equals: 5.
    self assert: transport tO equals: true.
]

{ #category : #'as yet unclassified' }
TransportTest >> testSetters [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	
    | transport |
    transport := Transport new.

	 "Test 'number' field setter"
    transport number: 42.
    self assert: transport number equals: 42.

    "Test 'year' field setter"
    transport year: 2022.
    self assert: transport year equals: 2022.

    "Test incorrect value 'year' field setter"
    transport year: 421.
    self assert: transport year equals: 1899.

    "Test 'mileage' field setter"
    transport mileage: 5000.
    self assert: transport mileage equals: 5000.

    "Test 'places' field setter"
    transport places: 4.
    self assert: transport places equals: 4.

    "Test incorrect value 'places' field setter"
    transport places: 0.
    self assert: transport places equals: 1.

    "Test 'cost' field setter"
    transport cost: 10.5.
    self assert: transport cost equals: 10.5.

    "Test 'TO' field setter"
    transport tO: false.
    self assert: transport tO equals: false.
]

{ #category : #tests }
TransportTest >> testTransportPrintOn [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| transport stream result |
    transport := Transport new number: 123; year: 2020; mileage: 15000; places: 4; cost: 30.5; tO: false.

    stream := WriteStream on: ''.
    transport printOn: stream.
    result := stream contents.
	 self assert: result equals: 'Transport[ 123 2020 15000 4 30.5 false]'.
]
