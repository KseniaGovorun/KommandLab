"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestKLAutotransport,
	#superclass : #PackageManifest,
	#category : #'KL-Autotransport-Manifest'
}

{ #category : #'code-critics' }
ManifestKLAutotransport class >> ruleUtilityMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#Bus #priceTrip: #false)) #'2023-10-25T21:07:55.154+03:00') #(#(#RGMethodDefinition #(#Taxi #priceTrip: #false)) #'2023-10-25T21:14:47.706+03:00') )
]
