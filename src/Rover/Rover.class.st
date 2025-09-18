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
			y > 4
				ifTrue: [
					y := 4. 
					 ].
			^self.
	].

	direction = 'E'
		ifTrue: [ 
			x := x +1.
			x > 4 
				ifTrue: [ 
					x:=4.
					 ].
				^self.
			 ].
		
	self notYetImplemented
]

{ #category : 'as yet unclassified' }
Rover >> moveString: aString [ 
	aString do: [ 
		:char | 
		char = $M
			ifTrue: [ 
				self moveForward ].
		char = $R
			ifTrue: [ 
				self turnRight ]. 
			].

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
