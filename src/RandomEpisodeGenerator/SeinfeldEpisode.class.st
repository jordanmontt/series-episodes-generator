Class {
	#name : #SeinfeldEpisode,
	#superclass : #RandomEpisode,
	#instVars : [
		'directedBy',
		'writtenBy'
	],
	#category : #RandomEpisodeGenerator
}

{ #category : #accessing }
SeinfeldEpisode >> directedBy: aString [

	directedBy := aString
]

{ #category : #inspector }
SeinfeldEpisode >> inspectorTableRows [

	^ super inspectorTableRows , {
		  ('Directeb by' -> directedBy).
		  ('Written by' -> writtenBy) }
]

{ #category : #inspector }
SeinfeldEpisode >> serieName [

	^ 'Seinfeld'
]

{ #category : #accessing }
SeinfeldEpisode >> writtenBy: aString [

	writtenBy := aString
]
