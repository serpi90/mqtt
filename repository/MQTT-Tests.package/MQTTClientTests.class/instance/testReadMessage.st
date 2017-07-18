testing
testReadMessage
	client close.
	self deny: client isConnected.
	self should: [ client readMessage ] raise: ConnectionClosed.
