Class {
	#name : #Falso,
	#superclass : #Tribooleano,
	#classVars : [
		'instanciaUnica'
	],
	#category : #'AA-TP'
}

{ #category : #'instance creation' }
Falso class >> new [
^instanciaUnica ifNil: [instanciaUnica := self basicNew]
]

{ #category : #'logical operations' }
Falso >> & unTribooleano [
^self

]

{ #category : #controlling }
Falso >> and: unBloqueAlternativo [
^unBloqueAlternativo value = ErrorTri siVerdadero: [ self ] siFalso: [ self ] siError: [ ErrorTri ].


]

{ #category : #controlling }
Falso >> esError [
^false
]

{ #category : #controlling }
Falso >> esFalso [
^true
]

{ #category : #controlling }
Falso >> esVerdadero [
^false
]

{ #category : #'logical operations' }
Falso >> not [
^Verdadero new .
]

{ #category : #controlling }
Falso >> or: unBloqueAlternativo [
^unBloqueAlternativo value
]

{ #category : #controlling }
Falso >> siError: unBloqueAlternativo [
^nil
]

{ #category : #controlling }
Falso >> siFalso: unBloqueAlternativo [
^unBloqueAlternativo value
]

{ #category : #controlling }
Falso >> siVerdadero: unBloqueAlternativo [
^nil
]

{ #category : #controlling }
Falso >> siVerdadero: unBloqueAlternativoVerdadero siError: unBloqueAlternativoError [
^nil
]

{ #category : #controlling }
Falso >> siVerdadero: unBloqueAlternativoVerdadero siFalso: unBloqueAlternativoFalso [
^unBloqueAlternativoFalso value
]

{ #category : #controlling }
Falso >> siVerdadero: unBloqueAlternativoVerdadero siFalso: unBloqueAlternativoFalso siError: unBloqueAlternativoError [
^unBloqueAlternativoFalso value
]

{ #category : #'logical operations' }
Falso >> | unTribooleano [
^unTribooleano
]
