baselines
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec baseline: 'GToolkit' with: [ spec 
				repository: 'github://feenkcom/gtoolkit/src' ].
		spec
			package: 'GT-InspectorReplayer' with: [ spec requires: #('GToolkit') ].
			
		spec 
			group: 'default' with: #('GT-InspectorReplayer').
	]