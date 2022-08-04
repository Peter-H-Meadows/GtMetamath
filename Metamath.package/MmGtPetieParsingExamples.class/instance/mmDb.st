accessing
mmDb
<gtExample>
 MmPP2ParserFirst new parse: self rawProofString .
 MmPP2ParserFirst database proofs do: [:ea | ea reparse].
 ^ MmPP2ParserFirst database .