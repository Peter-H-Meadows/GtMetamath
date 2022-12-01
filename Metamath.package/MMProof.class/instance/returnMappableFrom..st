accessing
returnMappableFrom: a
^ a select: [ :ea | ea canMapTo: self ]