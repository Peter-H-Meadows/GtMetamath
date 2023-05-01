accessing
returnMappableFrom: a
^ a asArray reverse select: [ :ea | ea canMapTo: self vcopy "setAllVariablesToFixed" ]