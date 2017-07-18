testing
testSubscribeToTopic
	client close.
	self deny: client isConnected.
	self should: [ client subscribeToTopic: self topic ] raise: ConnectionClosed.
