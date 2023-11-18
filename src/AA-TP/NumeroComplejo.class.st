Class {
	#name : #NumeroComplejo,
	#superclass : #Object,
	#instVars : [
		'real',
		'imaginary',
		'angle',
		'radius'
	],
	#category : #'AA-TP'
}

{ #category : #'instance creation' }
NumeroComplejo class >> new [
	self error: 'No se puede crear instancia con este constructor'
]

{ #category : #'instance creation' }
NumeroComplejo class >> newconAngulo: angulo conRadio: radio [
|numeroReal|
numeroReal := super new .
	numeroReal angle: angulo .
	numeroReal radius: radio .
	numeroReal real: numeroReal obtenerReal .
	numeroReal imaginary: numeroReal obtenerImaginario .
^numeroReal 
]

{ #category : #'instance creation' }
NumeroComplejo class >> newconReal: real conImaginario: imaginario [
|numeroReal|
numeroReal := super new .
	numeroReal real: real .
	numeroReal imaginary: imaginario .
	numeroReal angle: numeroReal obtenerAngulo .
	numeroReal radius: numeroReal obtenerRadio .
^numeroReal 
]

{ #category : #operation }
NumeroComplejo >> * unNumeroComplejoOReal [
| resultadoReal resultadoImaginario resultadoComplejo |
resultadoReal := (real * unNumeroComplejoOReal real) - (imaginary * unNumeroComplejoOReal imaginary) .
resultadoImaginario := (real * unNumeroComplejoOReal imaginary) + (imaginary * unNumeroComplejoOReal real) .
resultadoComplejo := self class newconReal: resultadoReal conImaginario: resultadoImaginario .
^(resultadoImaginario isZero ifTrue: [resultadoReal] ifFalse: [resultadoComplejo])
]

{ #category : #operation }
NumeroComplejo >> + unNumeroComplejoOReal [
| resultadoReal resultadoImaginario resultadoComplejo |
resultadoReal := real + unNumeroComplejoOReal real .
resultadoImaginario := imaginary + unNumeroComplejoOReal imaginary .
resultadoComplejo := self class newconReal: resultadoReal conImaginario: resultadoImaginario .
^(resultadoImaginario isZero ifTrue: [resultadoReal] ifFalse: [resultadoComplejo])
]

{ #category : #operation }
NumeroComplejo >> - unNumeroComplejoOReal [
| resultadoReal resultadoImaginario resultadoComplejo |
resultadoReal := real - unNumeroComplejoOReal real .
resultadoImaginario := imaginary - unNumeroComplejoOReal imaginary .
resultadoComplejo := self class newconReal: resultadoReal conImaginario: resultadoImaginario .
^(resultadoImaginario isZero ifTrue: [resultadoReal] ifFalse: [resultadoComplejo])
]

{ #category : #operation }
NumeroComplejo >> / unNumeroComplejoOReal [
| denominador resultadoReal resultadoImaginario  resultadoComplejo |
denominador := unNumeroComplejoOReal real squared + unNumeroComplejoOReal imaginary squared .
resultadoReal := (real * unNumeroComplejoOReal real) + (imaginary * unNumeroComplejoOReal imaginary) / denominador .
resultadoImaginario := (imaginary * unNumeroComplejoOReal real) - (real * unNumeroComplejoOReal imaginary) / denominador .
resultadoComplejo := self class newconReal: resultadoReal conImaginario: resultadoImaginario .
^(resultadoImaginario isZero ifTrue: [resultadoReal] ifFalse: [resultadoComplejo])
]

{ #category : #accessing }
NumeroComplejo >> angle [

	^ angle
]

{ #category : #accessing }
NumeroComplejo >> angle: unAngulo [

	angle := unAngulo
]

{ #category : #accessing }
NumeroComplejo >> imaginary [

	^ imaginary
]

{ #category : #accessing }
NumeroComplejo >> imaginary: unNumeroImaginario [

	imaginary := unNumeroImaginario
]

{ #category : #transform }
NumeroComplejo >> obtenerAngulo [
^imaginary arcTan: real
]

{ #category : #transform }
NumeroComplejo >> obtenerImaginario [
^radius * (angle sin)

]

{ #category : #transform }
NumeroComplejo >> obtenerRadio [
^(real squared + imaginary squared) sqrt

]

{ #category : #transform }
NumeroComplejo >> obtenerReal [
^radius * (angle cos)

]

{ #category : #accessing }
NumeroComplejo >> radius [

	^ radius
]

{ #category : #accessing }
NumeroComplejo >> radius: unRadio [

	radius := unRadio
]

{ #category : #accessing }
NumeroComplejo >> real [

	^ real
]

{ #category : #accessing }
NumeroComplejo >> real: unNumeroReal [

	real := unNumeroReal
]
