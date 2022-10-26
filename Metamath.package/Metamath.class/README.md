.json := ZnClient new get: 'https://api.github.com/orgs/metamath'.
dictionary := STON fromString: json.
GhOrganization new rawData: dictionary mm

Metacello new 
  baseline: 'Metamath'; 
  repository: 'github://Peter-H-Meadows/GtMetamath';
  load.