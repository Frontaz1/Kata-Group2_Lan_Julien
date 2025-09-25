Class {
	#name : 'Rover',
	#superclass : 'Object',
	#instVars : [
		'direction',
		'x',
		'y',
		'xmax',
		'ymax'
	],
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'accessing' }
Rover class >> startingAt: yPosition xValue: xPosition [

	^self new y:yPosition; x:xPosition
	
]

{ #category : 'accessing' }
Rover class >> y: yPosition x: xPosition [

	^self new y:yPosition; x:xPosition
]

{ #category : 'accessing' }
Rover >> direction [
	^ direction
]

{ #category : 'initialization' }
Rover >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-"
	super initialize.
	xmax:= 5.
	ymax:= 5.
	direction := 'N'.
]

{ #category : 'as yet unclassified' }
Rover >> lookNorth [

	direction := 'N'
]

{ #category : 'as yet unclassified' }
Rover >> moveBack [ 
direction = 'S'
		ifTrue: [ 
			y := (y + 1).
			y >= ymax 
				ifTrue: [ y:=(ymax-1) ]
	].
	direction = 'N'
		ifTrue: [ 
			y := (y - 1) max: 0
	].

	direction = 'W'
		ifTrue: [ 
			x := (x + 1) min: (xmax -1)
	].
	direction = 'E'
		ifTrue: [ 
			x := (x - 1) max: 0
	]

]

{ #category : 'as yet unclassified' }
Rover >> moveForward [
	
	direction = 'N'
		ifTrue: [ 
			y := (y + 1).
			y >= ymax 
				ifTrue: [ y:=(ymax-1) ]
	].
	direction = 'S'
		ifTrue: [ 
			y := (y - 1) max: 0
	].

	direction = 'E'
		ifTrue: [ 
			x := (x + 1) min: (xmax -1)
	].
	direction = 'W'
		ifTrue: [ 
			x := (x - 1) max: 0
	]

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
		char = $L
			ifTrue: [ 
				self turnLeft ].
		char = $B
			ifTrue:[ 
				self moveBack ].
			].
		

]

{ #category : 'actions' }
Rover >> turnLeft [
	
	direction = 'N'
		ifTrue: [ 
			direction := 'W'.
			 ^self].
	
	direction = 'W'
		ifTrue: [ 
			direction := 'S'.
			^self ].
	direction = 'S'
		ifTrue: [ 
			direction := 'E'.
			^self ].
		
	direction = 'E'
		ifTrue: [ 
			direction := 'N'.
			^self ].	
]

{ #category : 'as yet unclassified' }
Rover >> turnRight [
	
	direction = 'N'
		ifTrue: [ direction := 'E'.
			^self ] 
		ifFalse: [ direction = 'E' 
				ifTrue: [ direction:= 'S'.
				^self ] 
				ifFalse: [ direction = 'S' 
					ifTrue: [ direction := 'W'.
					^self] 
					ifFalse:[ direction= 'W' 
						ifTrue:[ direction:= 'N'.
							^self ]
			 ]
		]
	]
	
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
Rover >> xmax [
	^xmax
]

{ #category : 'accessing' }
Rover >> xmax: anInteger [
	xmax:= anInteger.
]

{ #category : 'accessing' }
Rover >> y [
	^y
]

{ #category : 'accessing - structure variables' }
Rover >> y: anInteger [ 
	
	y := anInteger
]

{ #category : 'accessing' }
Rover >> ymax [
	^ymax
]

{ #category : 'accessing' }
Rover >> ymax: anInteger [
	ymax:= anInteger.
]
