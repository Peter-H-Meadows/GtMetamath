initialization
initialize

super initialize .

self geometry: BlEllipseGeometry new.

self padding: (BlInsets all: 8).

self border: (BlBorder paint: self borderColor width: 1 ).
