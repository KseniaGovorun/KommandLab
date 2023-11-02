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

{ #category : #reading }
AutoContainer >> readFromFile: fileName [
	 | file data |
	 file := fileName asFileReference  readStream.
	
	 data:= STON fromStream: file.
	 memory := data.
	
	^data.
]

{ #category : #writing }
AutoContainer >> saveToFile: fileName [ 
	| file data |
	file := fileName asFileReference writeStream.
	data:= STON toStringPretty:  memory.
   file nextPutAll: data.

   file close.
]
