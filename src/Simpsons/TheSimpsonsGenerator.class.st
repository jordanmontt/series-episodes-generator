Class {
	#name : #TheSimpsonsGenerator,
	#superclass : #RandomEpisodeGenerator,
	#category : #Simpsons
}

{ #category : #'as yet unclassified' }
TheSimpsonsGenerator class >> defaultUpToSeason [

	^ 11
]

{ #category : #initialization }
TheSimpsonsGenerator >> initialize [

	super initialize.
	seasonThreshold := self class defaultUpToSeason
]

{ #category : #private }
TheSimpsonsGenerator >> loadEpisodes [

	| rawCollection |
	rawCollection := (NeoCSVReader
		on: '/Users/sebastian/Downloads/sebas_simpsons.csv' asFileReference readStream)
			skipHeader upToEnd.

	episodes := rawCollection collect: [ :e |
		SimpsonsEpisode new
			season: (e at: 1) asNumber;
			episode: (e at: 2) asNumber;
			title: (e at: 3);
			numberInSerie: (e at: 4) asNumber;
			originalAirDate: (e at: 5) asDate;
			yourself ]
]
