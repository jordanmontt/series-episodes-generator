Class {
	#name : #SeinfeldGenerator,
	#superclass : #RandomEpisodeGenerator,
	#category : #RandomEpisodeGenerator
}

{ #category : #private }
SeinfeldGenerator >> loadEpisodes [

	| rawCollection |
	rawCollection := (NeoCSVReader
		on: '/Users/sebastian/Downloads/seinfeld/seinfeld_episodes.csv' asFileReference readStream)
			skipHeader upToEnd.

	episodes := rawCollection collect: [ :e |
		SeinfeldEpisode new
			season: (e at: 1) asNumber;
			episode: (e at: 2) asNumber;
			numberInSerie: (e at: 3) asNumber;
			title: (e at: 4);
			directedBy: (e at: 5);
			writtenBy: (e at: 6);
			yourself ]
]
