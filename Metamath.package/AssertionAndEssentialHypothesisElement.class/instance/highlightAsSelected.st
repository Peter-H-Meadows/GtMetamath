highlighting
highlightAsSelected
selectedMarkerElement background: Color gray .
"
self announcer announce: (MmUseableSelectedAnnouncement new element: self)."


self announcer announce: (MmWantedSelectedAnnouncement new element: self).

"selected := true .
selectedMarkerElement removeFromParent.
self addChild: selectedMarkerElement."