Class {
	#name : #SimpsonsEpisode,
	#superclass : #RandomEpisode,
	#instVars : [
		'originalAirDate'
	],
	#category : #RandomEpisodeGenerator
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

{ #category : #inspector }
SimpsonsEpisode >> serieName [

	^ 'The Simpsons'
]
