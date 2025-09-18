Class {
	#name : 'RoverTest',
	#superclass : 'TestCase',
	#instVars : [
		'rover'
	],
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'tests' }
RoverTest >> testInitialDirection [
 | rover |
	rover := Rover new.
	self assert: rover direction equals: 'N'.
]

{ #category : 'tests' }
RoverTest >> testMoveOn [
	
	"Ce test permet de vérifier le déplacement du rover 
	etat initial : le robot regarde vers le nord et se trouve au centre du plateau (2,2) sur un plateque de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (2,3)
	"
	rover := Rover new.
	rover lookNorth.
	rover x: 2.
	rover y: 2.
	
	rover moveForward.
	
	self assert: rover x equals: 2.
	self assert: rover y equals: 3.
]

{ #category : 'tests' }
RoverTest >> testMoveOut [
	
	"Ce test permet de vérifier le déplacement du rover en dehors du plateau
	etat initial : le robot regarde vers le nord et se trouve au bord du plateau (2,4) sur un plateque de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (2,4)
	"
	rover := Rover new.
	rover lookNorth.
	rover x: 2.
	rover y: 4.
	
	rover moveForward.
	
	self assert: rover x equals: 2.
	self assert: rover y equals: 4.
]

{ #category : 'tests' }
RoverTest >> testTurnLeft [

	| rover |
	rover := Rover new.
	
	rover turnLeft.

	self assert: rover direction equals: 'W'.
]

{ #category : 'tests' }
RoverTest >> testTurnRight [

	| rover |
	rover := Rover new.
	
	rover turnRight.

	self assert: rover direction equals: 'E'.
]
