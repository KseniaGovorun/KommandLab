"
Клас TransportCompany - це об'єднання транспортів певної компанії, він має методи для обрахунку перевезень, перевірки пробігу та потреби ТО
"
Class {
	#name : #TransportCompany,
	#superclass : #Object,
	#instVars : [
		'name',
		'transports'
	],
	#category : #'KL-Autotransport'
}

{ #category : #adding }
TransportCompany >> add: transport [

	transports add: transport
]

{ #category : #adding }
TransportCompany >> checkTO [

	transports memory do: [ :each | each TO: false ].
	transports memory do: [ :each |
		each TO % 15 = 0 & each TO < 200000
			ifTrue: [ each TO: true ]
			ifFalse: [
				each TO < 200000
					ifTrue: [  ]
					ifFalse: [ each TO: true ] ] ]
]

{ #category : #initialization }
TransportCompany >> initialize [

	name := 'Auto'.
	transports := AutoContainer new.
]

{ #category : #initialization }
TransportCompany >> initialize: n [

	name := n.
	transports := AutoContainer new
]

{ #category : #initialization }
TransportCompany >> initialize: n transports: t [

	name := n.
	AutoContainer new checkAnObject: t.
	transports := t
]
