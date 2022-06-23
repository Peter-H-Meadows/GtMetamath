adding
addToWorkPane: mod 
"self halt ."
			workPane addChild: (mod copy reparse  "copyAndClean"  assertionAndEssentialHypothesisElement: controller) .