Class {
	#name : #SeinfeldEpisode,
	#superclass : #RandomEpisode,
	#instVars : [
		'directedBy',
		'writtenBy'
	],
	#category : #Simpsons
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

{ #category : #accessing }
SeinfeldEpisode >> writtenBy: aString [

	writtenBy := aString
]
