Class {
	#name : #SimpsonsEpisode,
	#superclass : #RandomEpisode,
	#instVars : [
		'originalAirDate'
	],
	#category : #Simpsons
}

{ #category : #'as yet unclassified' }
SimpsonsEpisode class >> season: s episode: e [

	^ self new
		season: s;
		episode: e;
		yourself
]

{ #category : #inspector }
SimpsonsEpisode >> inspectorTableRows [

	^ super inspectorTableRows
	  , { ('Original air date' -> originalAirDate) }
]

{ #category : #accessing }
SimpsonsEpisode >> originalAirDate [

	^ originalAirDate
]

{ #category : #accessing }
SimpsonsEpisode >> originalAirDate: anObject [

	originalAirDate := anObject
]

{ #category : #printing }
SimpsonsEpisode >> printOn: aStream [ 

	aStream << 'The Simpsons season ' << season asString << ' episode ' << episode asString
]
