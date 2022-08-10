.json := ZnClient new get: 'https://api.github.com/orgs/metamath'.
dictionary := STON fromString: json.
GhOrganization new rawData: dictionary