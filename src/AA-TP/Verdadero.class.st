Class {
	#name : #Verdadero,
	#superclass : #Tribooleano,
	#classVars : [
		'instanciaUnica'
	],
	#category : #'AA-TP'
}

{ #category : #'instance creation' }
Verdadero class >> new [
^instanciaUnica ifNil: [instanciaUnica := self basicNew]
]

{ #category : #'logical operations' }
Verdadero >> & unTribooleano [
^unTribooleano

]

{ #category : #controlling }
Verdadero >> and: unBloqueAlternativo [
^unBloqueAlternativo value
]

{ #category : #controlling }
Verdadero >> esError [
^false
]

{ #category : #controlling }
Verdadero >> esFalso [
^false
]

{ #category : #controlling }
Verdadero >> esVerdadero [
^true
]

{ #category : #'logical operations' }
Verdadero >> not [
^Falso new .
]

{ #category : #controlling }
Verdadero >> or: unBloqueAlternativo [
^unBloqueAlternativo value = ErrorTri siVerdadero: [ self ] siFalso: [ self ] siError: [ ErrorTri ].
]

{ #category : #controlling }
Verdadero >> siError: unBloqueAlternativo [
^nil
]

{ #category : #controlling }
Verdadero >> siFalso: unBloqueAlternativo [
^nil
]

{ #category : #controlling }
Verdadero >> siVerdadero: unBloqueAlternativo [
^unBloqueAlternativo value
]

{ #category : #controlling }
Verdadero >> siVerdadero:  unBloqueAlternativoVerdadero siError: unBloqueAlternativoError [
^unBloqueAlternativoVerdadero value
]

{ #category : #controlling }
Verdadero >> siVerdadero: unBloqueAlternativoVerdadero  siFalso: unBloqueAlternativoFalso [
^unBloqueAlternativoVerdadero value
]

{ #category : #controlling }
Verdadero >> siVerdadero: unBloqueAlternativoVerdadero siFalso: unBloqueAlternativoFalso siError: unBloqueAlternativoError [
^unBloqueAlternativoVerdadero value
]

{ #category : #'logical operations' }
Verdadero >> | unTribooleano [
^self
]
