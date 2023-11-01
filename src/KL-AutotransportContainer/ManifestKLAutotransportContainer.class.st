"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestKLAutotransportContainer,
	#superclass : #PackageManifest,
	#category : #'KL-AutotransportContainer-Manifest'
}

{ #category : #'code-critics' }
ManifestKLAutotransportContainer class >> ruleBadMessageRule2V1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#AutoContainer #checkAnObject: #false)) #'2023-11-02T00:25:44.405+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransportContainer class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AutoContainer)) #'2023-11-02T00:17:14.711+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransportContainer class >> ruleNoClassCommentRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AutoContainer)) #'2023-11-02T00:17:03.864+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransportContainer class >> ruleNoUnusedInstanceVariableRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AutoContainer)) #'2023-11-02T00:17:18.301+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransportContainer class >> ruleReClassNotCategorizedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AutoContainer)) #'2023-11-02T00:17:10.308+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransportContainer class >> ruleReIvarNeitherReadNorWrittenRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AutoContainer)) #'2023-11-02T00:15:16.487+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransportContainer class >> ruleUnclassifiedMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#AutoContainer #checkAnObject: #false)) #'2023-11-02T00:25:37.058+02:00') )
]

{ #category : #'code-critics' }
ManifestKLAutotransportContainer class >> ruleUsesAddRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#AutoContainer #add: #false)) #'2023-11-02T00:29:19.925+02:00') )
]
