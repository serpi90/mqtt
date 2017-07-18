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
				group: 'runtime' with: [ spec requires: #('MQTT-Core' 'MQTT-Client') ];
				group: 'development' with: [ spec requires: #('MQTT-Tests') ];
				group: 'default' with: #('runtime') ]