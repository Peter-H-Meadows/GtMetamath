The set of mandatory variables associated with an assertion is the set
of (zero or more) variables in the assertion and in any active $e statements.
The (possibly empty) set of mandatory hypotheses is the set of all active
$f statements containing mandatory variables, together with all active $e
statements. The set of mandatory $d statements associated with an
assertion are those active $d statements whose variables are both among the
assertion’s mandatory variables.


A proof is scanned in order of its label sequence. If the label refers to an
active hypothesis, the expression in the hypothesis is pushed onto a stack.
If the label refers to an assertion, a (unique) substitution must exist that,
when made to the mandatory hypotheses of the referenced assertion, causes
them to match the topmost (i.e. most recent) entries of the stack, in order
of occurrence of the mandatory hypotheses, with the topmost stack entry
matching the last mandatory hypothesis of the referenced assertion. As many
stack entries as there are mandatory hypotheses are then popped from the
stack. The same substitution is made to the referenced assertion, and the
result is pushed onto the stack. After the last label in the proof is processed,
the stack must have a single entry that matches the expression in the $p
statement containing the proof.