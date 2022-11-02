accessing
database
	| logicalDB db |
	logicalDB := LeDatabasesRegistry defaultLogicalDatabase.
	db := logicalDB databases 
		detect: [ :each | each databaseName = self databaseName ]
		ifNone: [
			logicalDB properties addRegisteredDirectory: self databaseLocation.
			logicalDB reload.
			logicalDB databases.
			logicalDB databaseNamed: self databaseName ].
	^ db