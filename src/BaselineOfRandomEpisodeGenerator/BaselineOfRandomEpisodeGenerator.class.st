Class {
	#name : #BaselineOfRandomEpisodeGenerator,
	#superclass : #BaselineOf,
	#category : #BaselineOfRandomEpisodeGenerator
}

{ #category : #baselines }
BaselineOfRandomEpisodeGenerator >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			package: 'RandomEpisodeGenerator' with: [
				spec baseline: 'NeoCSV' with: [ spec repository: 'github://svenvc/NeoCSV/repository' ] ].
		spec 
			group: 'Core' with: #('RandomEpisodeGenerator' ) ]
]
