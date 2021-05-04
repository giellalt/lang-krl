Nouns
Nouns in Karelian language are things.









































































































































































































































































































Adjectives
Adjectives in the Karelian language describe things.



























maybe like fin: eri, no infl.











































Verbs
Verbs in the Karelian language are actions.















































































































































































































Pronouns
Pronouns in the Karelian language are references to things.






























































Prefixes
Prefixes in the Karelian language are bound to beginning of other words.



Numerals
Numerals in Karellian language are numbers.


















































INTRODUCTION TO MORPHOLOGICAL ANALYSER OF Karelian LANGUAGE.


 # Definitions for Multichar_Symbols

## Analysis symbols
The morphological analyses of wordforms for the Karelian
language are presented in this system in terms of the following symbols.
(It is highly suggested to follow existing standards when adding new tags).

The parts-of-speech are:

The parts of speech are further split up into:

The Usage extents are marked using following tags:

The nominals are inflected in the following Case and Number

The possession is marked as such:
The comparative forms are:
Numerals are classified under:
Verb moods are:
Verb personal forms are:
Other verb forms are

 * +Symbol = independent symbols in the text stream, like £, €, ©
Special symbols are classified with:
The verbs are syntactically split according to transitivity:
Special multiword units are analysed with:
Non-dictionary words can be recognised with:

Question and Focus particles:


Semantics are classified with


Derivations are classified under the morphophonetic form of the suffix, the
source and target part-of-speech.


Morphophonology
To represent phonologic variations in word forms we use the following
symbols in the lexicon files:

And following triggers to control variation

## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:
 |  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
 |  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
 |  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
 |  @P.CmpPref.FALSE@ | Block these words from making further compounds
 |  @D.CmpLast.TRUE@ | Block such words from entering R
 |  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
 |  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
 |  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
 |  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.
 |  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
 |  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.

The word forms in Karelian language start from the lexeme roots of basic
word classes, or optionally from prefixes:


# Symbol affixes





Noun inflection
The Karelian language nouns inflect in cases.






































































































Adjective inflection
The Karelian language adjectives compare.




















































Verb inflection
The Karelian language verbs inflect in persons.






























FIXME: not sure




FIXME: ger or sup or some other




































FIXME












































Proper noun inflection
The Karelian language proper nouns inflect in the same cases as regular
nouns, but 











































=================================== !
The Karelian morphophonological/twolc rules file !
=================================== !









* *kirjut{aä}mm{aä}*
* *kirjutamma*

* ★*kirjut{aä}mm{aä}* (is not standard language)
* ★*kirjutämmä* (is not standard language)

!!!Punctuation symbols

 * __LEXICON Punctuation   __ contains the list
of punctuation symbols:
* Symbols like .,: are tagged with __+CLB__
* other symbols like +.& are tagged with __+PUNCT__, and
* paired symbols like ()«» are tagged with __+PUNCT+LEFT__
  and __+PUNCT+RIGHT__, respectively.

* Clause boundary symbols:

* Single punctuation marks


* Paired punctuation marks





 * __LEXICON PunctEnd   __ leads to # only.

!!!Symbols
Symbols are single character special signs typically denoting whole nouns. They are different from
abbreviations and acronyms by not consisting of regular, alphabetic letters.

Symbols are syntactic constituents, and thus part of the sentence analysis. That is, they are
different from punctuation: punctuation express syntactic boundaries of various kinds, symbols
are syntactic constituents.

 __LEXICON Symbols__ contains symbols of two types: those that inflect, and those that don't.

Miscellaneous symbols


Symbols from Mari OCR reading





Smileys

Emojies



We describe here how abbreviations are in Karelian are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 


















































% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 

