Class {
	#name : 'Rover',
	#superclass : 'Object',
	#instVars : [
		'direction',
		'x',
		'y'
	],
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'accessing' }
Rover >> direction [
	^ direction
]

{ #category : 'initialization' }
Rover >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-"
	super initialize.
	direction := 'N'.
]

{ #category : 'as yet unclassified' }
Rover >> lookNorth [

	direction := 'N'
]

{ #category : 'as yet unclassified' }
Rover >> moveForward [
	
	direction = 'N'
		ifTrue: [ 
			y := y + 1.
			^ self ]. 
	self y = 4
	   ifTrue: [ 
	
		  y := 4.
		  ^self ].
	self notYetImplemented
]

{ #category : 'actions' }
Rover >> turnLeft [
	
	direction = 'N'
		ifTrue: [ 
			direction := 'W'.
			^ self ].
	
	self notYetImplemented 
]

{ #category : 'as yet unclassified' }
Rover >> turnRight [
	
	direction = 'N'
		ifTrue: [ 
			direction := 'E'.
			^ self ].
	
	self notYetImplemented 
]

{ #category : 'accessing' }
Rover >> x [

	^ x
]

{ #category : 'accessing - structure variables' }
Rover >> x: anInteger [ 
	
	x := anInteger
]

{ #category : 'accessing' }
Rover >> y [

	^ y
]

{ #category : 'accessing - structure variables' }
Rover >> y: anInteger [ 
	
	y := anInteger
]
