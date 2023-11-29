Class {
	#name : #AngleRadius,
	#superclass : #NumeroComplejo,
	#instVars : [
		'angle',
		'radius'
	],
	#category : #'AA-TP'
}

{ #category : #'instance creation' }
AngleRadius class >> newConAngulo: angulo conRadio: radio [
|numeroComplejo|
numeroComplejo := self basicNew .
numeroComplejo angle: angulo;
					radius: radio .
^numeroComplejo 
]

{ #category : #accessing }
AngleRadius >> angle [
^angle
]

{ #category : #accessing }
AngleRadius >> angle: unAngulo [

	angle := unAngulo
]

{ #category : #accessing }
AngleRadius >> imaginary [
	^radius * (angle sin)
]

{ #category : #accessing }
AngleRadius >> radius [
^radius
]

{ #category : #accessing }
AngleRadius >> radius: unRadio [

	radius := unRadio
]

{ #category : #accessing }
AngleRadius >> real [
	^radius * (angle cos)
]
