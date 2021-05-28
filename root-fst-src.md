
#         Karelian morphological analyser                      

This file documents the Karelian [fst/root.lexc file](https://github.com/giellalt/lang-krl/blob/main/src/fst/root.lexc)


## Tags and other multicharacter symbols

 # Definitions for Multichar_Symbols

## Analysis symbols
The morphological analyses of wordforms for the Karelian
language are presented in this system in terms of the following symbols.
(It is highly suggested to follow existing standards when adding new tags).

The parts-of-speech are:
 * **+N +A +Adv +V**
 * **+Pron +CS +CC +Adp +Po +Pr +Interj +Pcle +Num**

The parts of speech are further split up into:
 * **+Prop +Pers +Dem +Interr +Refl +Recipr +Rel +Indef**

The Usage extents are marked using following tags:
 * **+Err/Orth**
 * **+Use/-Spell**

The nominals are inflected in the following Case and Number
 * **+Sg +Du +Pl**
 * **+Ess +Nom +Gen +Acc +Ill +Loc +Com +Com/Sh**

The possession is marked as such:
 * **+PxSg1 +PxSg2 +PxSg3 +PxDu1 +PxDu2 +PxDu3 +PxPl1 +PxPl2 +PxPl3**
The comparative forms are:
 * **+Comp +Superl**
Numerals are classified under:
 * **+Attr +Card**
 * **+Ord**
Verb moods are:
 * **+Ind +Prs +Prt +Pot +Cond +Imprt**
Verb personal forms are:
 * **+Sg1 +Sg2 +Sg3 +Du1 +Du2 +Du3 +Pl1 +Pl2 +Pl3**
Other verb forms are
 * **+Inf +Ger +ConNeg +ConNegII +Neg +ImprtII +PrsPrc +PrfPrc +Sup +VGen +VAbess**

 * **+ABBR +ACR** 
 * +Symbol = independent symbols in the text stream, like £, €, ©
Special symbols are classified with:
 * **+CLB +PUNCT +LEFT +RIGHT**
The verbs are syntactically split according to transitivity:
 * **+TV +IV**
Special multiword units are analysed with:
 * **+Multi**
Non-dictionary words can be recognised with:
 * **+Guess** (not in use (?))

Question and Focus particles:
 * **+Qst +Foc**


Semantics are classified with
 * **+Mal +Fem +Sur**
 * **+Plc**
 * **+Org**
 * **+Obj**
 * **+Ani**
 * **+Hum**
 * **+Plant**
 * **+Group**
 * **+Time**
 * **+Txt**
 * **+Route**
 * **+Measr**
 * **+Wthr**
 * **+Build**
 * **+Edu**
 * **+Veh**
 * **+Clth**


Derivations are classified under the morphophonetic form of the suffix, the
source and target part-of-speech.
 * **+V→N +V→V +V→A**
 * **+Der/xxx**


Morphophonology
To represent phonologic variations in word forms we use the following
symbols in the lexicon files:
 * **{aä} {oö} {uy}**

And following triggers to control variation
 * **{front} {back}**

## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

| Flag | Explanation |
|------|------------ |
 |  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Flag | Explanation |
|------|------------ |
 |  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear frst
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

| Flag | Explanation |
|------|------------ |
 |  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
 |  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.


## The Root and K lexica
**LEXICON Root** is where it all begins
The word forms in Karelian language start from the lexeme roots of basic
word classes, or optionally from prefixes:
 * Nouns ;
 * Verbs ;
 * Adjectives ;
 * Pronouns ;
 * Numerals ;
 * Particles ;
 * Punctuation ;
 * Symbols ;
 * ADV ;
 * PROPN ;
 * adpositions ;
 * conjunctions ;
 * interjections ;


**LEXICON K** adds clitics or goes to #
 * # ;
 * +Qst:%>{oö} # ;

