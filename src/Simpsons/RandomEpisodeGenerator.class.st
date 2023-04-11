Class {
	#name : #RandomEpisodeGenerator,
	#superclass : #Object,
	#instVars : [
		'randomGenerator',
		'episodes',
		'seasonThreshold'
	],
	#category : #Simpsons
}

{ #category : #api }
RandomEpisodeGenerator >> generate [

	| randomEpisode |
	randomEpisode := episodes at: (self getRandomEpisodeNumber).
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
RandomEpisodeGenerator >> loadEpisodes [

	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
RandomEpisodeGenerator >> upToSeason: anInteger [

	seasonThreshold := anInteger
]