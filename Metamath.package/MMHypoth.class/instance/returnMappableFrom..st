accessing
returnMappableFrom: a
^ a asArray reverse select: [ :ea | self canMapTo: ea reparse "setAllVariablesToFixed" ]