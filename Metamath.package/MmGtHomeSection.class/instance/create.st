accessing
create
	| sectionContainer cardContainer |
	sectionContainer := self newSectionContainer.
	sectionContainer addChild: (self newSectionTitle: 'Metamath').
	cardContainer := self newCardsContainer.
	cardContainer addChild: self documentationCard.
	sectionContainer addChild: cardContainer.
	^ sectionContainer