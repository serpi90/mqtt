testing
testPing2
	client close.
	self deny: client isConnected.
	self should: [ client ping ] raise: ConnectionClosed.