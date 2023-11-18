Class {
	#name : #Tribooleano,
	#superclass : #Object,
	#category : #'AA-TP'
}

{ #category : #'logical operations' }
Tribooleano >> & unTribooleano [
self subclassResponsibility

]

{ #category : #controlling }
Tribooleano >> and: unBloqueAlternativo [
self subclassResponsibility
]

{ #category : #controlling }
Tribooleano >> esError [
self subclassResponsibility 
]

{ #category : #controlling }
Tribooleano >> esFalso [
self subclassResponsibility 
]

{ #category : #controlling }
Tribooleano >> esVerdadero [
self subclassResponsibility 
]

{ #category : #'logical operations' }
Tribooleano >> not [
self subclassResponsibility
]

{ #category : #controlling }
Tribooleano >> or: unBloqueAlternativo [
self subclassResponsibility
]

{ #category : #controlling }
Tribooleano >> siError: unBloqueAlternativo [
self subclassResponsibility 
]

{ #category : #controlling }
Tribooleano >> siFalso: unBloqueAlternativo [
self subclassResponsibility 
]

{ #category : #controlling }
Tribooleano >> siVerdadero: unBloqueAlternativo [
self subclassResponsibility 
]

{ #category : #controlling }
Tribooleano >> siVerdadero: unBloqueAlternativo siError: otroBloqueAlternativo [
self subclassResponsibility 
]

{ #category : #controlling }
Tribooleano >> siVerdadero: unBloqueAlternativo siFalso: otroBloqueAlternativo [
self subclassResponsibility 
]

{ #category : #controlling }
Tribooleano >> siVerdadero: unBloqueAlternativo siFalso: otroBloqueAlternativo siError: ultimoBloqueAlternativo [
self subclassResponsibility 
]

{ #category : #'logical operations' }
Tribooleano >> | unTribooleano [
self subclassResponsibility 
]
