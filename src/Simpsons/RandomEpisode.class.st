Class {
	#name : #RandomEpisode,
	#superclass : #Object,
	#instVars : [
		'episode',
		'numberInSerie',
		'season',
		'title'
	],
	#category : #Simpsons
}

{ #category : #accessing }
RandomEpisode >> episode [

	^ episode
]

{ #category : #accessing }
RandomEpisode >> episode: anObject [

	episode := anObject
]

{ #category : #inspector }
RandomEpisode >> inspectorExtension: aBuilder [

	<inspectorPresentationOrder: 0 title: 'Episode'>
	| tablePresenter elements items |
	elements := self inspectorTableRows.
	items := elements collect: [ :e | StInspectorAssociationNode hostObject: e ].
	tablePresenter := aBuilder newTable.
	tablePresenter
		addColumn: (SpStringTableColumn title: 'Name' evaluated: #key);
		addColumn: (SpStringTableColumn title: 'Value' evaluated: #value);
		items: items;
		beResizable.
	^ tablePresenter
]

{ #category : #inspector }
RandomEpisode >> inspectorTableRows [

	^ {
		  ('Title' -> title).
		  ('Season' -> season).
		  ('Episode' -> episode).
		  ('Episode in Serie' -> numberInSerie) }
]

{ #category : #accessing }
RandomEpisode >> numberInSerie [

	^ numberInSerie
]

{ #category : #accessing }
RandomEpisode >> numberInSerie: anObject [

	numberInSerie := anObject
]

{ #category : #accessing }
RandomEpisode >> season [

	^ season
]

{ #category : #accessing }
RandomEpisode >> season: anObject [

	season := anObject
]

{ #category : #accessing }
RandomEpisode >> title [

	^ title
]

{ #category : #accessing }
RandomEpisode >> title: anObject [

	title := anObject
]
