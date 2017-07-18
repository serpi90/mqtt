baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'MQTT-Client' with: [ spec requires: #('MQTT-Core') ];
				package: 'MQTT-Core';
				package: 'MQTT-Tests' with: [ spec requires: #('MQTT-Core' 'MQTT-Client') ].
			spec
				group: 'Deployment' with: #('MQTT-Core' 'MQTT-Client');
				group: 'Tests' with: #('MQTT-Tests');
				group: 'Development' with: #('Deployment' 'Tests');
				group: 'default' with: #('Deployment') ]
