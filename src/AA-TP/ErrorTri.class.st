Class {
	#name : #ErrorTri,
	#superclass : #Tribooleano,
	#category : #'AA-TP'
}

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
^self
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
