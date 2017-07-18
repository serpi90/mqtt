testing
testSendMessageToTopic
	client close.
	self deny: client isConnected.
	self should: [ client sendMessage: self message toTopic: self topic ] raise: ConnectionClosed.
