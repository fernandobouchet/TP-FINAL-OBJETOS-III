Class {
	#name : #ErrorTri,
	#superclass : #Tribooleano,
	#classVars : [
		'instanciaUnica'
	],
	#category : #'AA-TP'
}

{ #category : #'instance creation' }
ErrorTri class >> new [
^instanciaUnica ifNil: [instanciaUnica := self basicNew]
]

{ #category : #'logical operations' }
ErrorTri >> & unTribooleano [
^self

]

{ #category : #controlling }
ErrorTri >> and: unBloqueAlternativo [
^self
]

{ #category : #controlling }
ErrorTri >> esError [
^true
]

{ #category : #controlling }
ErrorTri >> esFalso [
^false
]

{ #category : #controlling }
ErrorTri >> esVerdadero [
^false
]

{ #category : #'logical operations' }
ErrorTri >> not [
^self class new .
]

{ #category : #controlling }
ErrorTri >> or: unBloqueAlternativo [
^self
]

{ #category : #controlling }
ErrorTri >> siError: unBloqueAlternativo [
^unBloqueAlternativo value
]

{ #category : #controlling }
ErrorTri >> siFalso: unBloqueAlternativo [
^nil
]

{ #category : #controlling }
ErrorTri >> siVerdadero: unBloqueAlternativo [
^nil
]

{ #category : #controlling }
ErrorTri >> siVerdadero: unBloqueAlternativoVerdadero siError: unBloqueAlternativoError [
^unBloqueAlternativoError value
]

{ #category : #controlling }
ErrorTri >> siVerdadero: unBloqueAlternativoVerdadero siFalso: unBloqueAlternativoError [
^nil
]

{ #category : #controlling }
ErrorTri >> siVerdadero: unBloqueAlternativoVerdadero siFalso: unBloqueAlternativoFalso siError: unBloqueAlternativoError [
^unBloqueAlternativoError value
]

{ #category : #'logical operations' }
ErrorTri >> | unTribooleano [
^self 
]
