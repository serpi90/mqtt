running
setUp
	client := self clientClass new.
	client host: self host.
	client timeout: self timeout.
	client clientId: self className, '>>#', self selector asString.
	client open