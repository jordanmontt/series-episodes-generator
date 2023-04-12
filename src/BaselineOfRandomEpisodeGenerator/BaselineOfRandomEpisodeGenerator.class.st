Class {
	#name : #BaselineOfRandomEpisodeGenerator,
	#superclass : #BaselineOf,
	#category : #BaselineOfRandomEpisodeGenerator
}

{ #category : #baselines }
BaselineOfRandomEpisodeGenerator >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		"External dependencies"
		spec baseline: 'NeoCSV' with: [ spec repository: 'github://svenvc/NeoCSV/repository' ].
		"Internal dependencies"
		spec package: 'RandomEpisodeGenerator' with: [ spec requires: #( 'NeoCSV' ) ].
		spec 
			group: 'Core' with: #('RandomEpisodeGenerator' ) ]
]
