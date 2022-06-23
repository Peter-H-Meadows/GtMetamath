initialization
initialize

super initialize .

self geometry: BlEllipseGeometry new.

self padding: (BlInsets all: 12).

self border: (BlBorder paint: self borderColor width: 1 ).
