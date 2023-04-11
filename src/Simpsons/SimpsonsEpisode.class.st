Class {
	#name : #SimpsonsEpisode,
	#superclass : #Object,
	#instVars : [
		'season',
		'episode',
		'title',
		'numberInSerie',
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

{ #category : #accessing }
SimpsonsEpisode >> episode [

	^ episode
]

{ #category : #accessing }
SimpsonsEpisode >> episode: anObject [

	episode := anObject
]

{ #category : #accessing }
SimpsonsEpisode >> numberInSerie [

	^ numberInSerie
]

{ #category : #accessing }
SimpsonsEpisode >> numberInSerie: anObject [

	numberInSerie := anObject
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

{ #category : #accessing }
SimpsonsEpisode >> season [

	^ season
]

{ #category : #accessing }
SimpsonsEpisode >> season: anObject [

	season := anObject
]

{ #category : #accessing }
SimpsonsEpisode >> title [

	^ title
]

{ #category : #accessing }
SimpsonsEpisode >> title: anObject [

	title := anObject
]
