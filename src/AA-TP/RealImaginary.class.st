Class {
	#name : #RealImaginary,
	#superclass : #NumeroComplejo,
	#instVars : [
		'real',
		'imaginary'
	],
	#category : #'AA-TP'
}

{ #category : #'instance creation' }
RealImaginary class >> newConReal: real conImaginario: imaginario [
|numeroComplejo|
numeroComplejo := self basicNew .
numeroComplejo real: real;
					imaginary: imaginario .
^numeroComplejo 
]

{ #category : #accessing }
RealImaginary >> angle [
	^(imaginary  / real) arcTan
]

{ #category : #accessing }
RealImaginary >> imaginary [
	^imaginary
]

{ #category : #accessing }
RealImaginary >> imaginary: unImaginario [

	imaginary := unImaginario
]

{ #category : #accessing }
RealImaginary >> radius [
	^((real ** 2) + (imaginary ** 2)) sqrt
]

{ #category : #accessing }
RealImaginary >> real [
	^real
]

{ #category : #accessing }
RealImaginary >> real: unReal [

	real := unReal
]
