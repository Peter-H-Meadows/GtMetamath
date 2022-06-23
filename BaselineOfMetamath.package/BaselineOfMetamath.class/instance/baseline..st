baseline
baseline: spec
	
	<baseline>
	
	spec for: #common do: [ spec package: 'Metamath' ]
	
	"spec for: #'common' do: [
	
		spec baseline: 'ExternalProject' with: [
			spec repository: 'github://<organization>/<repository>:main/src' ].
			
		spec package: 'Metamath'.
		spec package: 'PackageTwo' with: [ 
			spec requires: #( 'ExternalProject' 'Metamath' ) ]
	]"