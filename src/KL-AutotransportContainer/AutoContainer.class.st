"
Клас для класів іншого пакету, щоб створювати контейнери з транспортом: автобуси і таксі 
"
Class {
	#name : #AutoContainer,
	#superclass : #Object,
	#instVars : [
		'memory'
	],
	#category : #'KL-AutotransportContainer'
}

{ #category : #adding }
AutoContainer >> add: aTransport [

	self checkAnObject: aTransport.
	^ memory add: aTransport
]

{ #category : #accessing }
AutoContainer >> at: anIndex [

	^ memory at: anIndex
]

{ #category : #accessing }
AutoContainer >> at: anIndex put: aTransport [

	self checkAnObject: aTransport.
	^ memory at: anIndex put: aTransport
]

{ #category : #'as yet unclassified' }
AutoContainer >> checkAnObject: anObject [

	(anObject isKindOf: Transport) ifFalse: [
		^ self error: 'AutoContainer contains only Transports instances' ]
]

{ #category : #enumerating }
AutoContainer >> do: aBlock [

	memory do: aBlock
]

{ #category : #initialization }
AutoContainer >> initialize [

	memory := OrderedCollection new
]

{ #category : #accessing }
AutoContainer >> memory [

	^ memory
]
