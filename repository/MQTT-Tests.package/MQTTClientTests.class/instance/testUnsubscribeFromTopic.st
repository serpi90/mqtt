testing
testUnsubscribeFromTopic
	client close.
	self deny: client isConnected.
	self should: [ client unsubscribeFromTopic: self topic ] raise: ConnectionClosed.
