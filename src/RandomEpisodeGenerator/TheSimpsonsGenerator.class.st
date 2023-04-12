Class {
	#name : #TheSimpsonsGenerator,
	#superclass : #RandomEpisodeGenerator,
	#category : #RandomEpisodeGenerator
}

{ #category : #'as yet unclassified' }
TheSimpsonsGenerator class >> defaultUpToSeason [

	^ 11
]

{ #category : #private }
TheSimpsonsGenerator >> csvFileName [

	^ 'simpsons_episodes.csv'
]

{ #category : #initialization }
TheSimpsonsGenerator >> initialize [

	super initialize.
	seasonThreshold := self class defaultUpToSeason
]

{ #category : #private }
TheSimpsonsGenerator >> instantiateEpisodeFromCsvData: aCollection [

	^ SimpsonsEpisode new
			season: (aCollection at: 1) asNumber;
			episode: (aCollection at: 2) asNumber;
			title: (aCollection at: 3);
			numberInSerie: (aCollection at: 4) asNumber;
			originalAirDate: (aCollection at: 5) asDate;
			yourself 
]
