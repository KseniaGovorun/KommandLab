"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestKLAutotransport,
	#superclass : #PackageManifest,
	#category : #'KL-Autotransport-Manifest'
}

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #inizialize:year:mileage:places:cost:condit:TO: #false)) #'2023-10-25T21:33:11.899+03:00') #(#(#RGMethodDefinition #(#Taxi #inizialize:year:mileage:places:cost:maxSpeed:TO: #false)) #'2023-10-25T21:38:44.242+03:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleExcessiveArgumentsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #inizialize:year:mileage:places:cost:condit:TO: #false)) #'2023-10-25T21:29:33.28+03:00') #(#(#RGMethodDefinition #(#Taxi #inizialize:year:mileage:places:cost:maxSpeed:TO: #false)) #'2023-10-25T21:38:49.141+03:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleUnclassifiedMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #inizialize:year:mileage:places:cost:condit:TO: #false)) #'2023-10-25T21:29:26.402+03:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleUtilityMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #priceTrip: #false)) #'2023-10-25T21:07:55.154+03:00') #(#(#RGMethodDefinition #(#Taxi #priceTrip: #false)) #'2023-10-25T21:14:47.706+03:00') )
]
