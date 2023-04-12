Class {
	#name : #SeinfeldGenerator,
	#superclass : #RandomEpisodeGenerator,
	#category : #RandomEpisodeGenerator
}

{ #category : #private }
SeinfeldGenerator >> csvFileName [

	^ 'seinfeld_episodes.csv'
]

{ #category : #private }
SeinfeldGenerator >> instantiateEpisodeFromCsvData: aCollection [

	^ SeinfeldEpisode new
		  season: (aCollection at: 1) asNumber;
		  episode: (aCollection at: 2) asNumber;
		  numberInSerie: (aCollection at: 3) asNumber;
		  title: (aCollection at: 4);
		  directedBy: (aCollection at: 5);
		  writtenBy: (aCollection at: 6);
		  yourself
]
