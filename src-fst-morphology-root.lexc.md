
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
* **+C** TYÖÖÖÖ! this need depricating :-) 2023-11-08 Jaska

The parts of speech are further split up into:
* **+Prop +Pers +Dem +Interr +Refl +Recipr +Rel +Indef**

The Usage extents are marked using following tags:
* **+Err/Orth**
* **+Use/-Spell**
* **+Use/TTS** – **only** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+Use/-TTS** – **never** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+Use/Circ** – avoid infinite stuff in generative apps

The nominals are inflected in the following Case and Number
* **+Sg +Du +Pl**
* **+Ess +Nom +Gen +Acc +Ill +Loc +Com +Com/Sh**

The possession is marked as such:
* **+PxSg1 +PxSg2 +PxSg3 +PxDu1 +PxDu2 +PxDu3 +PxPl1 +PxPl2 +PxPl3**
The comparative forms are:
* **+Pos +Comp +Superl**
Numerals are classified under:
* **+Attr +Card**
* **+Ord**
Verb voices are:
Verb moods are:
* **+Ind +Prs +Prt +Pot +Cond +Imprt**
* **+Imp +Past** Not previously coded +Imp, +Past 2024-05-16
Verb personal forms are:
* **+Sg1 +Sg2 +Sg3 +Du1 +Du2 +Du3 +Pl1 +Pl2 +Pl3**
* **+Pe4** fourth person?

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
* **+Foc/Ka** convert in Apertium _eikä_ "ei" V Neg Act Sg3 Foc/Ka
to "ei" V Neg"<actv><p3><sg>+ja<cnjcoo>"

Semantics are classified with
* **+Sem/Act** Activity
* **+Sem/Amount** Amount
* **+Sem/Ani** Animate
* **+Sem/Aniprod** Animal Product
* **+Sem/Body** Bodypart
* **+Sem/Body-abstr** siellu, vuoig?a, jierbmi
* **+Sem/Build** Building
* **+Sem/Build-part** Part of Bulding, like the closet
* **+Sem/Cat** Category
* **+Sem/Clth** Clothes
* **+Sem/Clth-jewl** Jewelery
* **+Sem/Clth-part** part of clothes, boallu, sávdnji...
* **+Sem/Ctain** Container
* **+Sem/Ctain-abstr** Abstract container like bank account
* **+Sem/Ctain-clth**
* **+Sem/Curr** Currency like dollár, Not Money
* **+Sem/Dance** Dance
* **+Sem/Dir** Direction like GPS-kursa
* **+Sem/Domain** Domain like politics, reindeerherding (a system of actions)
* **+Sem/Drink** Drink
* **+Sem/Dummytag** Dummytag
* **+Sem/Edu** Educational event
* **+Sem/Event** Event
* **+Sem/Feat** Feature, like Árvu
* **+Sem/Feat-phys** Physiological feature, ivdni, fárda
* **+Sem/Feat-psych** Psychological feauture
* **+Sem/Feat-measr** Psychological feauture
* **+Sem/Fem** Female name
* **+Sem/Food** Food
* **+Sem/Food-med** Medicine
* **+Sem/Furn** Furniture
* **+Sem/Game** Game
* **+Sem/Geom** Geometrical object
* **+Sem/Group** Animal or Human Group
* **+Sem/Hum** Human
* **+Sem/Hum-abstr** Human abstract
* **+Sem/Ideol** Ideology
* **+Sem/Lang** Language
* **+Sem/Mal** Male name
* **+Sem/Mat** Material for producing things
* **+Sem/Measr** Measure
* **+Sem/Money** Has to do with money, like wages, not Curr(ency)
* **+Sem/Obj** Object
* **+Sem/Obj-clo** Cloth
* **+Sem/Obj-cogn** Cloth
* **+Sem/Obj-el** (Electrical) machine or apparatus
* **+Sem/Obj-ling** Object with something written on it
* **+Sem/Obj-rope** flexible ropelike object
* **+Sem/Obj-surfc** Surface object
* **+Sem/Org** Organisation
* **+Sem/Part** Feature, oassi, bealli
* **+Sem/Perc-cogn** Cognative perception
* **+Sem/Perc-emo** Emotional perception
* **+Sem/Perc-phys** Physical perception
* **+Sem/Perc-psych** Physical perception
* **+Sem/Plant** Plant
* **+Sem/Plant-part** Plant part
* **+Sem/Plc** Place
* **+Sem/Plc-abstr** Abstract place
* **+Sem/Plc-elevate** Place
* **+Sem/Plc-line** Place
* **+Sem/Plc-water** Place
* **+Sem/Pos** Position (as in social position job)
* **+Sem/Process** Process
* **+Sem/Prod** Product
* **+Sem/Prod-audio** Audio product
* **+Sem/Prod-cogn** Cognition product
* **+Sem/Prod-ling** Linguistic product
* **+Sem/Prod-vis** Visual product
* **+Sem/Rel** Relation
* **+Sem/Route** Name of a Route
* **+Sem/Rule** Rule or convention
* **+Sem/Semcon** Semantic concept
* **+Sem/Sign** Sign (e.g. numbers, punctuation) 
* **+Sem/Sport** Sport
* **+Sem/State** 
* **+Sem/State-sick** Illness
* **+Sem/Substnc** Substance, like Air and Water
* **+Sem/Sur** Surname
* **+Sem/Sur-Fem** Female Surname
* **+Sem/Sur-Mal** Male Surname
* **+Sem/Symbol** Symbol
* **+Sem/Time** Time
* **+Sem/Tool** Prototypical tool for repairing things
* **+Sem/Tool-catch** Tool used for catching (e.g. fish)
* **+Sem/Tool-clean** Tool used for cleaning
* **+Sem/Tool-it** Tool used in IT
* **+Sem/Tool-measr** Tool used for measuring
* **+Sem/Tool-music** Music instrument
* **+Sem/Tool-write** Writing tool
* **+Sem/Txt** Text (girji, lávlla...)
* **+Sem/Veh** Vehicle
* **+Sem/Wpn** Weapon
* **+Sem/Wthr** The Weather or the state of ground

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

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/root.lexc)</small>
