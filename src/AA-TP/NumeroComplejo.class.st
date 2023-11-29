Class {
	#name : #NumeroComplejo,
	#superclass : #Object,
	#category : #'AA-TP'
}

{ #category : #'instance creation' }
NumeroComplejo class >> new [
	self error: 'No se puede crear instancia con este constructor'
]

{ #category : #'instance creation' }
NumeroComplejo class >> newConAngulo: angulo conRadio: radio [
^AngleRadius newConAngulo: angulo conRadio: radio .
]

{ #category : #'instance creation' }
NumeroComplejo class >> newConReal: real conImaginario: imaginario [
^RealImaginary newConReal: real conImaginario: imaginario .

]

{ #category : #operation }
NumeroComplejo >> * unNumeroComplejoOReal [
	| resultadoReal resultadoImaginario resultadoComplejo |
	resultadoReal := (self real * unNumeroComplejoOReal real) - (self imaginary * unNumeroComplejoOReal imaginary) .
	resultadoImaginario := (self real * unNumeroComplejoOReal imaginary) + (self imaginary * unNumeroComplejoOReal real) .
	resultadoComplejo := self class newConReal: resultadoReal conImaginario: resultadoImaginario .
	^(resultadoImaginario isZero ifTrue: [resultadoReal] ifFalse: [resultadoComplejo])
]

{ #category : #operation }
NumeroComplejo >> + unNumeroComplejoOReal [
	| resultadoReal resultadoImaginario resultadoComplejo |
	resultadoReal := self real + unNumeroComplejoOReal real.
	resultadoImaginario := self imaginary + unNumeroComplejoOReal imaginary .
	resultadoComplejo := self class newConReal: resultadoReal conImaginario: resultadoImaginario.
	^resultadoImaginario isZero ifTrue: [ resultadoReal ] ifFalse: [ resultadoComplejo ]
]

{ #category : #operation }
NumeroComplejo >> - unNumeroComplejoOReal [
| resultadoReal resultadoImaginario resultadoComplejo |
resultadoReal := self real - unNumeroComplejoOReal real .
resultadoImaginario := self imaginary - unNumeroComplejoOReal imaginary .
resultadoComplejo := self class newConReal: resultadoReal conImaginario: resultadoImaginario .
^(resultadoImaginario isZero ifTrue: [resultadoReal] ifFalse: [resultadoComplejo])
]

{ #category : #operation }
NumeroComplejo >> / unNumeroComplejoOReal [
| denominador resultadoReal resultadoImaginario  resultadoComplejo |
denominador := unNumeroComplejoOReal real squared + unNumeroComplejoOReal imaginary squared .
resultadoReal := (self real * unNumeroComplejoOReal real) + (self imaginary * unNumeroComplejoOReal imaginary) / denominador .
resultadoImaginario := (self imaginary * unNumeroComplejoOReal real) - (self real * unNumeroComplejoOReal imaginary) / denominador .
resultadoComplejo := self class newConReal: resultadoReal conImaginario: resultadoImaginario .
^(resultadoImaginario isZero ifTrue: [resultadoReal] ifFalse: [resultadoComplejo])
]

{ #category : #accessing }
NumeroComplejo >> angle [
	^self subclassResponsibility 
]

{ #category : #accessing }
NumeroComplejo >> imaginary [
	^self subclassResponsibility
]

{ #category : #accessing }
NumeroComplejo >> radius [
	^self subclassResponsibility
]

{ #category : #accessing }
NumeroComplejo >> real [
	^self subclassResponsibility
]
