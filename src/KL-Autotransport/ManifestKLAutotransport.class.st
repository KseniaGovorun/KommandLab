"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestKLAutotransport,
	#superclass : #PackageManifest,
	#category : #'KL-Autotransport-Manifest'
}

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#Bus)) #'2023-11-01T19:08:48.997+02:00') #(#(#RGClassDefinition #(#Taxi)) #'2023-11-01T19:09:00.273+02:00') #(#(#RGClassDefinition #(#TransportCompany)) #'2023-11-13T22:07:24.056+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #inizialize:year:mileage:places:cost:condit:TO: #false)) #'2023-10-25T21:33:11.899+03:00') #(#(#RGMethodDefinition #(#Taxi #inizialize:year:mileage:places:cost:maxSpeed:TO: #false)) #'2023-10-25T21:38:44.242+03:00') #(#(#RGMethodDefinition #(#Bus #initialize #false)) #'2023-10-25T22:08:23.491+03:00') #(#(#RGMethodDefinition #(#Taxi #initialize:year:mileage:places:cost:maxSpeed:TO: #false)) #'2023-11-13T22:25:02.521+02:00') #(#(#RGMethodDefinition #(#Bus #initialize:year:mileage:places:cost:condit:TO: #false)) #'2023-11-13T22:25:27.689+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleEquivalentSuperclassMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #< #false)) #'2023-10-26T15:26:43.19+03:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleExcessiveArgumentsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #inizialize:year:mileage:places:cost:condit:TO: #false)) #'2023-10-25T21:29:33.28+03:00') #(#(#RGMethodDefinition #(#Taxi #inizialize:year:mileage:places:cost:maxSpeed:TO: #false)) #'2023-10-25T21:38:49.141+03:00') #(#(#RGMethodDefinition #(#Taxi #initialize:year:mileage:places:cost:maxSpeed:TO: #false)) #'2023-11-13T22:25:05.791+02:00') #(#(#RGMethodDefinition #(#Bus #initialize:year:mileage:places:cost:condit:TO: #false)) #'2023-11-13T22:25:24.611+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleMissingSuperSendsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #initialize #false)) #'2023-10-25T22:08:19.826+03:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleNoUnusedInstanceVariableRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#Bus)) #'2023-11-01T19:08:52.412+02:00') #(#(#RGClassDefinition #(#TransportCompany)) #'2023-11-13T22:07:21.143+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleReClassNotCategorizedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#Transport)) #'2023-11-01T19:08:24.65+02:00') #(#(#RGClassDefinition #(#Bus)) #'2023-11-01T19:08:42.778+02:00') #(#(#RGClassDefinition #(#Taxi)) #'2023-11-01T19:09:06.838+02:00') #(#(#RGClassDefinition #(#TransportCompany)) #'2023-11-13T22:07:29.645+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleReInstanceVariableCapitalizationRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#Transport)) #'2023-11-01T19:08:18.603+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleReIvarNeitherReadNorWrittenRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#Bus)) #'2023-11-01T19:08:38.434+02:00') #(#(#RGClassDefinition #(#TransportCompany)) #'2023-11-13T22:07:26.441+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleReVariableAssignedLiteralRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#Taxi)) #'2023-11-01T19:09:04.341+02:00') #(#(#RGClassDefinition #(#TransportCompany)) #'2023-11-13T22:41:09.639+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleUnclassifiedMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #inizialize:year:mileage:places:cost:condit:TO: #false)) #'2023-10-25T21:29:26.402+03:00') #(#(#RGMethodDefinition #(#Bus #afterTrip: #false)) #'2023-11-01T19:06:16.519+02:00') #(#(#RGMethodDefinition #(#Taxi #afterTrip: #false)) #'2023-11-01T19:07:05.227+02:00') #(#(#RGMethodDefinition #(#Transport #Trip: #false)) #'2023-11-01T19:17:26.903+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleUncommonMessageSendRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#TransportCompany #checkTO #false)) #'2023-11-13T22:59:01.676+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleUtilityMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #priceTrip: #false)) #'2023-10-25T21:07:55.154+03:00') #(#(#RGMethodDefinition #(#Taxi #priceTrip: #false)) #'2023-10-25T21:14:47.706+03:00') #(#(#RGMethodDefinition #(#Bus #afterTrip: #false)) #'2023-11-01T19:06:19.011+02:00') #(#(#RGMethodDefinition #(#Taxi #afterTrip: #false)) #'2023-11-01T19:07:02.904+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleVariableReferencedOnceRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#TransportCompany)) #'2023-11-13T22:41:06.668+02:00') )
]
