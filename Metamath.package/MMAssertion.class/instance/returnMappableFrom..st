accessing
returnMappableFrom: a
^ a select: [ :ea | self copy canMapTo: ea ]