Class {
	#name : #RandomEpisodeGenerator,
	#superclass : #Object,
	#instVars : [
		'randomGenerator',
		'episodes',
		'seasonThreshold'
	],
	#category : #RandomEpisodeGenerator
}

{ #category : #private }
RandomEpisodeGenerator >> csvFileName [

	self subclassResponsibility
]

{ #category : #api }
RandomEpisodeGenerator >> generate [

	| randomEpisode |
	randomEpisode := episodes at: (self getRandomEpisodeNumber).
	seasonThreshold ifNil: [ ^ randomEpisode ].
	
	[ randomEpisode season > seasonThreshold ] whileTrue: [
		randomEpisode := episodes at: (self getRandomEpisodeNumber) ].

	^ randomEpisode
]

{ #category : #private }
RandomEpisodeGenerator >> getRandomEpisodeNumber [

	^ randomGenerator nextIntegerBetween: 1 and: episodes size
]

{ #category : #initialization }
RandomEpisodeGenerator >> initialize [

	super initialize.
	self loadEpisodes.
	randomGenerator := Random new
]

{ #category : #private }
RandomEpisodeGenerator >> instantiateEpisodeFromCsvData: aCollection [

	^ self subclassResponsibility
]

{ #category : #private }
RandomEpisodeGenerator >> loadEpisodes [

	| rawCollection |
	rawCollection := self readToCollectionCsvWithEpisodes.

	episodes := rawCollection collect: [ :e |
		            self instantiateEpisodeFromCsvData: e ]
]

{ #category : #private }
RandomEpisodeGenerator >> readToCollectionCsvWithEpisodes [

	| csvFile |
	csvFile := '.' asFileReference / 'pharo-local' / 'iceberg' / 'jordanmontt'
		/ 'series-episodes-generator' / 'data' / self csvFileName.
	^ (NeoCSVReader on: csvFile readStream) skipHeader upToEnd
]

{ #category : #api }
RandomEpisodeGenerator >> upToSeason: anInteger [

	seasonThreshold := anInteger
]
