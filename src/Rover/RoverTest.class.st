Class {
	#name : 'RoverTest',
	#superclass : 'TestCase',
	#instVars : [
		'rover'
	],
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'as yet unclassified' }
RoverTest >> testAnotherTestGetPosition [
	
	rover := NewRover y:1 x:2.
	
	self assert: rover x equals: 2.
	self assert: rover y equals: 1.
]

{ #category : 'tests' }
RoverTest >> testGetPosition [
	
	rover := Rover new.
	rover x: 0 .
	rover y: 0.
	
	self assert: rover x equals: 0.
	self assert: rover y equals: 0.
]

{ #category : 'tests' }
RoverTest >> testGetPositionWithStartingAt [
	
	rover := Rover y: 1 x: 1. 
	
	self assert: rover x equals: 1.
	self assert: rover y equals: 1.
]

{ #category : 'tests' }
RoverTest >> testInitialDirection [

	rover := Rover new.
	self assert: rover direction equals: 'N'.
]

{ #category : 'tests' }
RoverTest >> testInitializeYmaxAndXmax [

		rover := Rover new.
		self assert: rover ymax equals: 5.
		self assert: rover xmax equals: 5.
]

{ #category : 'tests' }
RoverTest >> testLookNorth [
	rover := Rover new. 
	rover lookNorth.
	self assert: rover direction equals: 'N'
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
RoverTest >> testRoad [
	rover := Rover new.
	rover x: 0.
	rover y: 0.
	rover lookNorth.
	rover moveForward.
	rover turnRight.
	rover moveForward.
	
self assert: rover x equals: 1.
self assert: rover y equals: 1.
]

{ #category : 'tests' }
RoverTest >> testRoadWithAStringInstruction [
	rover := Rover new.
	rover x: 0.
	rover y: 0.
	rover lookNorth.
	rover moveString: 'MMRMRML'.
		
	
self assert: rover x equals: 1.
self assert: rover y equals: 1.
self assert: rover direction equals: 'E'.
]

{ #category : 'tests' }
RoverTest >> testRoadWithAStringInstructionWithMoveBack [
	rover := Rover new.
	rover x: 0.
	rover y: 0.
	rover lookNorth.
	rover moveString: 'MMRMRMLB'.
		
	
self assert: rover x equals: 0.
self assert: rover y equals: 1.
self assert: rover direction equals: 'E'.
]

{ #category : 'tests' }
RoverTest >> testTurnLeft [

	| rover |
	rover := Rover new.
	
	rover turnLeft.

	self assert: rover direction equals: 'W'.
	
	rover turnLeft.
	self assert: rover direction equals: 'S'.
]

{ #category : 'tests' }
RoverTest >> testTurnRight [

	| rover |
	rover := Rover new.
	
	rover turnRight.

	self assert: rover direction equals: 'E'.
]
