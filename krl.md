# Karelian language model documentation

All doc-comment documentation in one large file.

---

# src-cg3-functions.cg3.md 



* Sets for POS sub-categories

* Sets for Semantic tags

* Sets for Morphosyntactic properties

* Sets for verbs

- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.

* The set COPULAS is for predicative constructions

* NP sets defined according to their morphosyntactic features

* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

* Miscellaneous sets

* Border sets and their complements

* Syntactic sets

These were the set types.

## HABITIVE MAPPING

* **hab1** 

* **hab2** 

* **hab3** (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.

* **habNomLeft** 

* **hab4** 	

* **hab6** 

* **hab7** 

* **hab8** This is not HAB
* **hab5**  This is not HAB

* **habDain** (<hab> @ADVL>) for (Pron Dem Pl Loc) if leat followed by Nom to the right

* **habGen** (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial

* **spred<obj** (@SPRED<OBJ) for Acc; the object of an SPRPED. Not to be mistaken with OPRED. If SPRED is to the left, and copulas is to the left of it. Nom or Hab are found sentence initially.

* **Hab<spred** (@<SPRED) for Nom; if copulas, goallut or jápmit is FMAINV and habitive or human Loc is found to the left. OR: if Ill or @Pron< followed by HAB are found to the left.

* **Hab>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween HAB and <ext>.

* **Nom>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween Nom and <ext> @<SUBJ.

* **<spred** (<ext> @<SUBJ) for Nom; if copulas to the left, and some kind of adverb, N Loc, time related word or Po to the left of it. OR: if Ill or @Pron< to the left, followed by copulas and the before mentioned to the left of copulas. 

* **<spred** (<ext> @<SUBJ) for Nom, but not for Pers. To the left boahtit or heaŋgát as MAINV, and futher to the left is some kind of place related word, or time related word

* **<spredQst1** (<ext> @<SUBJ) for Nom in a typically question sentence; if A) Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. B) same as a, only the Qst-pcle is attached to copulas. C) Qst to the left, with copulas to its left, but not if two Nom:s are found somewhere to the right. D) copulas to the left, and BOS to the left. E) Loc or Ill to the left, and Loc or Hab to the left of this, Qst and copulas to the left. F) Num @>N to the left, Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. NOTE) for all these rules; human, Loc or Sem/Plc not allowed to the right.

* **<spredQst2** (@<SPRED) for Nom; in a typically question sentence; differs from <spredQst1 by not beeing as restricted to the right. Though you are not allowed to be Pers or human.

* **Nom<spredQst** (@<SPRED) for Nom; in a typically question sentence. Differs from <spredQst2 by letting Nom be found between SPRED and copulas

* **<spred** (@<SPRED) for A Nom or N Nom if; the subject Nom is on the same side of copulas as you: on the right side of copulas

* **<spredVeara** (@<SPRED) for veara + Nom; if genitive immediately to the right, and intransitive mainverb to the right of genitive

* **leftCop<spred** (@<SPRED) for Nom; if copulas is the main verb to the left, and there is no Ess found to the left of cop (note that Loc is allowed between target and cop). OR: if you are Coll or Sem/Group with copulas to your left. 

* **<spredLocEXPERIMENT** (@<SPRED) for material Loc; if you are to the right of copulas, and the Nom to the left of copulas is not a hab-actor

* **NumTime** (@<SPRED) for A Nom

* **<spredSg** (@<SPRED) for Sg Nom	

* **<spredPg** (@<SPRED) for Pl Nom	

* **<spred** (@<SPRED) for Nom; if copulas to the left, and Nom or sentence boundary to the left of copulas. First one to the right is EOS.

* **<spred** (@<SPRED) for N Ess

* **spredEss>** (@SPRED>) for N Ess; if copulas to the right of you, and if an NP with nom-case first one to your left.

* **HABSpredSg>** (@SPRED>) for Nom; if habitive first one to the left, followed by copulas.

* **GalleSpred>** (@SPRED>) for Num Nom; if sentence initial

* **spredSgMII>** (@SPRED>)

* **r492>** (@SPRED>) for Interr Gen; consisting only of negations. You are not allowed to be MII. You are not allowed to have an adjective or noun to yor right. You are not allowed to have a verb to your right; the exception beeing an aux.

* **AdjSpredSg>** (@SPRED>) for A Sg Nom; if copulas to the right, but not if A or @<SPRED are found to the right of copulas

* **SpredSg>Hab** (@SPRED>) for Nom; if you are sentence initial, copulas is located to the right, and there is a habitive to the right of copulas

* **Spred>SubjInf** (@SPRED>) for Nom; if copulas to the right, and the subject of copulas is an Inf to the right

* **spredCoord** (@<SPRED) coordination for Nom; only if there already is a SPRED to the left of CNP. Not if there is some kind of comparison involved.

* **subj>Sgnr1** (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left) 

* **subj>Du** (@SUBJ>) for dual nominatives, including Coll Nom. VFIN + Du3 to the right. 
* **subj>Pl** (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* **subj>Pl** (@SUBJ>) for plural nominatives

* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).

* **f<advl** (@-F<ADVL) for infinite adverbials

* **f<advl** (@-F<ADVL) for infinite adverbials

* **s-boundary=advl>** (@ADVL>) for ADVL that resemble s-booundaries. Mainverb to the right.

* **-fobj>** (@-FOBJ>) for Acc 

* **-fobj>** (@-FOBJ>) for Acc

* **advl>mainV** (@ADVL>) if; finite mainverb not found to the left, but the finite mainverb is found to the right.

* **<advl** (@<ADVL) if; finite mainverb found to the left. Not if a comma is found immediately to the left and a finite mainverb is located somewhere to the right of this comma.

* **<advlPoPr** (@<ADVL) if mainverb to the left.
* **advlPoPr>** (@<ADVL) if mainverb to the right.

* **advlEss>** (@<ADVL) for weather and time Ess, if FMAINV to the left.

* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.

* **advlBOS>** (@ADVL>) if; you are N Ill and found sentnece initially. First one to your right is a clause.

* **<advlPoEOS** (@<ADVL) for Po; if you are found at the very end of a sentence. A mainverb is needed to the right though.

* **cleanupILL<advl** (@<ADVL) for N Ill if; there are no boundarysymbols to your left, if you arent already @N< OR @APP-N<, and no mainverb is to yor left.

* **<opredAAcc** (@<OPRED) for A Acc; if an other accusative to the left, and a transtive verb to the left of it. OR: if a transitive verb to the left, and an accusative to the left of it.

### sma object

* **<advlEss** (@<ADVL) for ESS-ADVL if; FMAINV to the left
* **<spredEss** (@<SPRED) for N Ess if; FMAINV to the left is intransitive or bargat

## SUBJ MAPPING - leftovers

## OBJ MAPPING - leftovers

## HNOUN MAPPING

* * *

<small>This (part of) documentation was generated from [src/cg3/functions.cg3](https://github.com/giellalt/lang-krl/blob/main/src/cg3/functions.cg3)</small>

---

# src-fst-morphology-affixes-adjectives.lexc.md 

Adjective inflection
The Karelian language adjectives compare.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/adjectives.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/affixes/adjectives.lexc)</small>

---

# src-fst-morphology-affixes-nouns.lexc.md 

# Noun inflection
This file documents Karelian noun inflection.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/nouns.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/affixes/nouns.lexc)</small>

---

# src-fst-morphology-affixes-prefixes.lexc.md 

Prefixes
Prefixes in the Karelian language are bound to beginning of other words.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/prefixes.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/affixes/prefixes.lexc)</small>

---

# src-fst-morphology-affixes-propernouns.lexc.md 

Proper noun inflection
The Karelian language proper nouns inflect in the same cases as regular
nouns, but 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/propernouns.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/affixes/propernouns.lexc)</small>

---

# src-fst-morphology-affixes-symbols.lexc.md 


# Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/symbols.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/affixes/symbols.lexc)</small>

---

# src-fst-morphology-affixes-verbs.lexc.md 

# Karelian Verb inflection
The verb lexicon contains two groups of continuation lexica
One, with names like VERB_KUUL/UO (in capital letters and indicating stem)
have analyses like the Finnish fst (without twolc). The other group has
contlexes with nams *verb, verb_frekv, verb_intr*, etc. They have
analyses more like the Kven and Meänkieli ones (with gradation and
harmony as twolc processes.

**TODO:** Clean up this and go for one of the two.

## Intermediate lexica, for now pointing to present tense only.

**LEXICON verb**
**LEXICON verb_deskr**
**LEXICON verb_fakt**
**LEXICON verb_fakt.kaus**
... etc. some 20 similar lexica.

## Morphological lexica

### Lexica pointing to final lexica

**LEXICON vinfl** going to strong (no trigger)  and weak (^WG trigger)
+Act+Ind:^WG verb_weak_pres ;
+Act+Ind: verb_strong_pres ;

### Final lexica (only pointing to K)

**LEXICON verb_weak_pres**

**LEXICON verb_strong_pres** 

**LEXICON verb_3pl_pres**

**LEXICON VERB_CONNEG_0** 

**LEXICON VERB_PAST_3SG_0** 

**LEXICON VERB_3SG_U** 

**LEXICON VERB_3SG_Y** 

**LEXICON VERB_PASSIVE_H** 

**LEXICON VERB_PAST_PASSIVE_H** 

**LEXICON VERB_PAST_PASSIVE_TIH_BACK** 

**LEXICON VERB_PAST_PASSIVE_TIH_FRONT** 

**LEXICON VERB_IMPV_KAH**

**LEXICON VERB_IMPVPL1_KA**

**LEXICON VERB_IMPVPL2_KUA** 

**LEXICON VERB_IMPV_KÄH**

**LEXICON VERB_IMPVPL1_KÄ** 

**LEXICON VERB_IMPVPL2_KYÄ** 

**LEXICON VERB_IMPV** 

**LEXICON VERB_INF_MÄ** 

**LEXICON VERB_INF_MA** 

**LEXICON VERB_INF_TA** 

**LEXICON VERB_INF_TÄ** 

FIXME: not sure
**LEXICON VERB_INF_AS** 

**LEXICON VERB_INF_A** 

FIXME: ger or sup or some other
**LEXICON VERB_INF_EN** 

**LEXICON VERB_INF_Ä** 

**LEXICON VERB_INF_Ö** 

**LEXICON VERB_INF_O** 

**LEXICON VERB_INF_E** 

**LEXICON VERB_PCP_TU** 

**LEXICON VERB_PCP_TY** 

**LEXICON VERB_PCP_TAVA** 

**LEXICON VERB_PCP_TÄVÄ** 

**LEXICON VERB_PCP_N** 

**LEXICON VERB_PCP_UN** 

**LEXICON PCP_UN** verbal adjective kuollun, kuollehet

**LEXICON VERB_PCP_YN** 

**LEXICON PCP_YN** verbal adjective nähnyn, nähnehet

**LEXICON VERB_PRES_BACK** 

**LEXICON VERB_PRES_FRONT** 

**LEXICON VERB_PAST_BACK** 

**LEXICON VERB_PAST_FRONT** 

**LEXICON VERB_COND** 

**LEXICON VERB_COND_PASSIVE_TAIS** 

**LEXICON VERB_COND_PASSIVE_TÄIS** 

**LEXICON AUX_IMPVSP3_KAH** 

**LEXICON AUX_IMPVPL1_KA** 

**LEXICON AUX_IMPVPL2_KUA** 

**LEXICON AUX_PCP** 
FIXME

**LEXICON AUX_3SG_PI** 

**LEXICON AUX_3SG_0**

**LEXICON AUX_3SG_Y** 

**LEXICON AUX_CONNEG_0** 

**LEXICON AUX_PRES_FRONT** 

**LEXICON AUX_PRES_BACK** 

**LEXICON AUX_PAST_WEAK_BACK** 

**LEXICON AUX_PAST_3SG_0** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>

---

# src-fst-morphology-phonology.twolc.md 

# The Karelian morphophonological/twolc rules file 

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-krl/blob/main/src/fst/phonology.twolc) 

## Alphabets and sets

### Alpahbet
- **a b c č d e f g h i j k l m n o p q r s š t u v w x y z ž**
- **á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã**
- **A B C Č D E F G H I J K L M N O P Q R S Š T U V W X Y Z Ž**
- **Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã**
- **%{aä%}:a %{aä%}:ä**
- **%{oö%}:o %{oö%}:ö**
- **%{uy%}:u %{uy%}:y**
- **%>:0 ;**

### Sets

- **Vow = a e i o u y**
  **á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý ;**
- **Cns = b c č d f g h j k l m n p q r s š t v w x z ž ;**
- **Front = ä ö y ;**
- **Back = a o u ;**

## Rules

**Rule: Vowel harmony basic** 

**Tests:**
* *kirjut{aä}mm{aä}*
* *kirjutamma*
* ★*kirjut{aä}mm{aä}* (is not standard language)
* ★*kirjutämmä* (is not standard language)

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/phonology.twolc)</small>

---

# src-fst-morphology-root.lexc.md 


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
* **+Use/NG** do not generate jaska 20250826
* **+Use/SpellNoSugg** recognized but not suggested in speller
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
* **+CLB +PUNCT +LEFT +RIGHT +MIDDLE**
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

| Flag diacritic | Explanation
| :------------- |:-----------
| @U.number.one@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.two@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.three@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.four@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.five@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.six@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.seven@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.eight@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.nine@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.zero@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.one@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.two@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.three@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.four@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.five@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.six@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.seven@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.eight@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.nine@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.ten@ | Flag used to give arabic numerals in smj different cases ;
|  @P.number.zero@ | Flag used to give arabic numerals in smj different cases ;

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

---

# src-fst-morphology-stems-adjectives.lexc.md 

# Karelian Adjectives
This file documents the `stems/adjectives.lexc` file for Adjective stems 
The files points to the `affixes/adjectives.lexc` file.

LEXICON Adjectives

aito+A:ai ADJ_AI/TO ; etc.

maybe like fin: eri, no infl.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adjectives.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/adjectives.lexc)</small>

---

# src-fst-morphology-stems-adpositions.lexc.md 

# Karelian adpositions

adpositions

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adpositions.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/adpositions.lexc)</small>

---

# src-fst-morphology-stems-adverbs.lexc.md 

# Karelian adverb stems

ADV

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adverbs.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/adverbs.lexc)</small>

---

# src-fst-morphology-stems-conjunctions.lexc.md 

# Karelian conjunctions

conjunctions

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/conjunctions.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/conjunctions.lexc)</small>

---

# src-fst-morphology-stems-interjections.lexc.md 

# Karelian interjections

@LEXNAME*

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/interjections.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/interjections.lexc)</small>

---

# src-fst-morphology-stems-nouns.lexc.md 

# Karelian Nouns
This file documents the Karelian noun stem file.
The first part of the file contains stems, the second contains the 
intermediate morphology.

## The stem list

Nouns

afrikkalaine+N:afrikkalai NOUN_ELAVUTTAMI/NE ;
aihe+N:aihe NOUN_AIH/E ;
aikakaušlehti+N:aikakaus#leh NOUN_LEH/TI ;

## The list of intermediate lexica

These lexica point to the morphology in `affixes/nouns.lexc`

**LEXICON a_i_noun**

**LEXICON a_i_u_noun**

**LEXICON a_i_ä_noun**

### Intermediate lexicon, approach 2 (todo: unify)

**LEXICON rihm/a__noun**

**LEXICON NOUN_MÄT/ÄŠ**

**LEXICON NOUN_KIN/NAŠ**

**LEXICON NOUN_EHOK/AŠ**

**LEXICON NOUN_KYNNY/Š**

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nouns.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/nouns.lexc)</small>

---

# src-fst-morphology-stems-numerals.lexc.md 

# Numerals
The Numerals are analysed as the ones for Finnish.

**LEXICON Numerals**

**LEXICON cardinal**

**LEXICON cardinal_vaill**

**LEXICON ordinal**

**LEXICON NUM_Y/KSI**

**LEXICON NUM_KA/KŠI**

**LEXICON NUM_KOLM/E**

... etc.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/numerals.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/numerals.lexc)</small>

---

# src-fst-morphology-stems-particles.lexc.md 

# Karelian particles

**LEXICON Particles** gives the particles.

**LEXICON particle** gives tag

**LEXICON particle_vahv** gives the same tag, actually.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/particles.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/particles.lexc)</small>

---

# src-fst-morphology-stems-pronouns.lexc.md 

# Karelian Pronouns
The file list pronoun stems .

**LEXICON Pronouns**

**LEXICON PRON_MI/NÄ**

**LEXICON PRON_MI/E**

**LEXICON PRON_H/IÄN**

**LEXICON PRON_M/YÖ**

**LEXICON PRON_TÄ/MÄ**

**LEXICON PRON_NÄ/MÄ**

**LEXICON PRON_T/UO**

**LEXICON PRON_N/UO**

**LEXICON PRON_Š/E**

**LEXICON PRON_N/E**

**LEXICON PRON_IČ/E**

**LEXICON PRON_KAI/KKI**

**LEXICON PRON_KU/DAI**

**LEXICON PRON_MOLOM/PI**

**LEXICON PRON_JOKAHI/NI**

**LEXICON PRON_KUMPA/INE**

**LEXICON PRON_KE/N**

**LEXICON PRON_MI**

**LEXICON PRON_KU**

**LEXICON PRON_JOKA**

**LEXICON PRON_MON/I**

**LEXICON PRON_MU/U**

**LEXICON PRON_TOI/NI**

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/pronouns.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/pronouns.lexc)</small>

---

# src-fst-morphology-stems-propernouns.lexc.md 

# Karelian Propernouns

The file `stems/propernouns.lexc` lists just that.

**LEXICON PROPN**

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/propernouns.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/propernouns.lexc)</small>

---

# src-fst-morphology-stems-verbs.lexc.md 

# Documenting the Karelian Verb lexicon.

The verb lexicon contains two groups of continuation lexica
One, with names like VERB_KUUL/UO (in capital letters and indicating stem)
have analyses like the Finnish fst (without twolc). The other group has
contlexes with nams *verb, verb_frekv, verb_intr*, etc. They have
analyses more like the Kven and Meänkieli ones (with gradation and
harmony as twolc processes.

**TODO:** Clean up this and go for one of the two.

**LEXICON Verbs** contains the stem list
* olla+V:o AUX_O/LLA ;
* ei+V+Neg:e AUX_E/I ;
* voija+V:vo AUX_VO/IJA ;
* piteä+V:pi AUX_PI/TEÄ ;
... some 200 more verbs

### The second list of verbs
This contains just the infinitive and points to defect paradigms for now.

* aakkoa verb ;
* ahahella verb_frekv ;
* ahavakoittuo verb ; 
* ahavastuo verb ;

## The intermediate lexica
These lexica redirects the stem to different person-number sublexica.

**LEXICON kavota_katuo_verb** ... This lexicon does not work, as both stems go to the same contlex.
* kavota verb ; 
* kavota:katuo verb ; 

**LEXICON proššai(k)koa_verb_vaill**

**LEXICON sevota_verb**

**LEXICON stavaikkoa_verb_vaill** 

**LEXICON tavai(k)koa_tavaite_verb_vaill**

**LEXICON tuta_verb**

**LEXICON viyhtie_verb**

**LEXICON voulie_vuolie_verb**

**LEXICON kirjut/tua__verb** 

**LEXICON VERB_J/IÄHÄ** 

**LEXICON VERB_V/IIJÄ** 

**LEXICON VERB_L/UUVVA** 

**LEXICON VERB_Š/YYVÄ** 

**LEXICON VERB_J/UUVA** 

**LEXICON VERB_PIÄS/TÄ** 

**LEXICON VERB_KÄ/YVÄ** 

**LEXICON VERB_S/UAHA** 

**LEXICON VERB_MIET/TIE** 

**LEXICON VERB_LÄ/HTIE** 

**LEXICON VERB_T/UUVVA** 

**LEXICON VERB_TU/LLA** 

**LEXICON VERB_KUOL/LA** 

**LEXICON VERB_PA/ISSA** 

**LEXICON VERB_NOU/ŠŠA** 

**LEXICON VERB_PAN/NA** 

**LEXICON VERB_MÄN/NÄ** 

**LEXICON VERB_TARVI/TA** 

**LEXICON VERB_MERKI/TÄ** 

**LEXICON VERB_STARINOI/JA** 

**LEXICON VERB_IKÄVÖI/JÄ** 

**LEXICON VERB_ŠAN/OA** 

**LEXICON VERB_MUISTEL/EHTOA** 

**LEXICON VERB_KAŠV/OA** 

**LEXICON VERB_AL/KOA** 

**LEXICON VERB_AN/TOA** 

**LEXICON VERB_PAIS/TOA** 

**LEXICON VERB_KAČ/ČUO** 

**LEXICON VERB_KAČ/ČOA** 

**LEXICON VERB_KOROŠ/TOA** 

**LEXICON VERB_VALMIS/TOA** 

**LEXICON VERB_TAH/TOA** 

**LEXICON VERB_TAP/POA** 

**LEXICON VERB_SOIT/TOA** 

**LEXICON VERB_OT/TOA** 

**LEXICON VERB_TANŠŠI/E** 

**LEXICON VERB_EČ/ČIE** 

**LEXICON VERB_POIMI/E** 

**LEXICON VERB_IT/KIE** 

**LEXICON VERB_KITK/IE** 

**LEXICON VERB_LAŠ/KIE** 

**LEXICON VERB_KÄŠ/KIE** 

**LEXICON VERB_OP/PIE** 

**LEXICON VERB_ŠO/PIE** 

**LEXICON VERB_TUN/TIE** 

**LEXICON VERB_LUA/TIE** 

**LEXICON VERB_TI/ETEÄ** 

**LEXICON VERB_TÄYT/TYÄ** 

**LEXICON VERB_TYÖN/TYÄ** 

**LEXICON VERB_NÄYT/TYÄ** 

**LEXICON VERB_VIČER/TEÄ** 

**LEXICON VERB_PIÄT/TEÄ** 

**LEXICON VERB_TYÖN/TEÄ** 

**LEXICON VERB_LÖY/TEÄ** 

**LEXICON VERB_JÄRJEŠ/TEÄ** 

**LEXICON VERB_PI/TYÄ** 

**LEXICON VERB_PIÄŠ/TYÄ** 

**LEXICON VERB_OPAŠ/TUA** 

**LEXICON VERB_OPAŠ/TUO** 

**LEXICON VERB_TOIV/UO** 

**LEXICON VERB_VOIT/TUA** 

**LEXICON VERB_KAN/TUA** 

**LEXICON VERB_AUT/TUA**

**LEXICON VERB_RUA/TUA**

**LEXICON VERB_RUA/TUO** 

**LEXICON VERB_KUUL/UO** 

**LEXICON VERB_LOP/PUO** 

**LEXICON VERB_RYH/TYÖ** 

**LEXICON VERB_ILMEŠ/TYÖ** 

**LEXICON VERB_IS/TUO** 

**LEXICON VERB_RIK/KUO** 

**LEXICON VERB_ROIK/KUO** 

**LEXICON VERB_SAT/TUO** 

**LEXICON VERB_KER/TUO** 

**LEXICON VERB_ŠI/TUO** 

**LEXICON VERB_KUČ/ČUO** 

**LEXICON VERB_VAI/PUO** 

**LEXICON VERB_KER/ÄTÄ** 

**LEXICON VERB_KER/ITÄ** 

**LEXICON VERB_N/ÄHÄ** 

**LEXICON VERB_AV/ATA** 

**LEXICON VERB_RU/VETA** 

**LEXICON VERB_KERÄ/TÄ** 

**LEXICON VERB_LEIK/ATA** 

**LEXICON VERB_ŠAL/VATA** 
**LEXICON VERB_ŠAL/VATA** 

**LEXICON VERB_NIM/ETÄ** 

**LEXICON VERB_TYK/YTÄ** 

**LEXICON VERB_HYREYTY/Ä** 

**LEXICON VERB_PUREŠKEL/LA** 

**LEXICON VERB_AJAT/ELLA** 

**LEXICON VERB_LEVÄHEL/LÄ** 

**LEXICON VERB_OM/MELLA** 

**LEXICON AUX_O/LLA** 

**LEXICON AUX_E/I** 

**LEXICON AUX_VO/IJA** 

**LEXICON AUX_PI/TEÄ** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/verbs.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/stems/verbs.lexc)</small>

---

# src-fst-phonetics-txt2ipa.xfscript.md 



retroflex plosive, voiceless			t`  ʈ	    0288, 648 (` = ASCII 096)
retroflex plosive, voiced			d`	ɖ		0256, 598
labiodental nasal					F 	ɱ		0271, 625
retroflex nasal						n` 	ɳ		0273, 627
palatal nasal						J 	ɲ		0272, 626
velar nasal							N 	ŋ		014B, 331
uvular nasal							N\	ɴ		0274, 628
	
bilabial trill						B\ 	ʙ		0299, 665
uvular trill							R\ 	ʀ		0280, 640
alveolar tap							4	ɾ		027E, 638
retroflex flap						r` 	ɽ		027D, 637
bilabial fricative, voiceless		p\ 	ɸ		0278, 632
bilabial fricative, voiced			B 	β		03B2, 946
dental fricative, voiceless			T 	θ		03B8, 952
dental fricative, voiced				D 	ð		00F0, 240
postalveolar fricative, voiceless	S	ʃ		0283, 643
postalveolar fricative, voiced		Z 	ʒ		0292, 658
retroflex fricative, voiceless		s` 	ʂ		0282, 642
retroflex fricative, voiced			z` 	ʐ		0290, 656
palatal fricative, voiceless			C 	ç		00E7, 231
palatal fricative, voiced			j\ 	ʝ		029D, 669
velar fricative, voiced	        	G 	ɣ		0263, 611
uvular fricative, voiceless			X	χ		03C7, 967
uvular fricative, voiced				R 	ʁ		0281, 641
pharyngeal fricative, voiceless		X\ 	ħ		0127, 295
pharyngeal fricative, voiced			?\ 	ʕ		0295, 661
glottal fricative, voiced			h\	ɦ		0266, 614

alveolar lateral fricative, vl.		K 
alveolar lateral fricative, vd.		K\

labiodental approximant				P (or v\) 
alveolar approximant					r\ 
retroflex approximant				r\` 
velar approximant					M\

retroflex lateral approximant		l` 
palatal lateral approximant			L 
velar lateral approximant			L\
Clicks

bilabial								O\	(O = capital letter) 
dental								|\
(post)alveolar						!\ 
palatoalveolar						=\ 
alveolar lateral						|\|\
Ejectives, implosives

ejective								_>	e.g. ejective p		p_>
implosive							_<	e.g. implosive b	b_<
Vowels

close back unrounded					M
close central unrounded 				1 
close central rounded				} 
lax i								I 
lax y								Y 
lax u								U

close-mid front rounded				2 
close-mid central unrounded			@\ 
close-mid central rounded			8 
close-mid back unrounded				7

schwa	ə							@

open-mid front unrounded				E 
open-mid front rounded				9
open-mid central unrounded			3 
open-mid central rounded				3\ 
open-mid back unrounded				V 
open-mid back rounded				O

ash (ae digraph)						{ 
open schwa (turned a)				6

open front rounded					& 
open back unrounded	        		A 
open back rounded					Q
Other symbols

voiceless labial-velar fricative		W 
voiced labial-palatal approx.		H 
voiceless epiglottal fricative		H\ 
voiced epiglottal fricative			<\ 
epiglottal plosive					>\

alveolo-palatal fricative, vl. 		s\ 
alveolo-palatal fricative, voiced	z\ 
alveolar lateral flap				l\ 
simultaneous S and x					x\ 
tie bar								_
Suprasegmentals

primary stress						" 
secondary stress						% 
long									: 
half-long							:\ 
extra-short							_X 
linking mark							-\
Tones and word accents

level extra high						_T 
level high							_H
level mid							_M 
level low							_L 
level extra low						_B
downstep								! 
upstep								^	(caret, circumflex)

contour, rising						 
contour, falling						_F 
contour, high rising					_H_T 
contour, low rising					_B_L 

contour, rising-falling				_R_F 
(NB Instead of being written as diacritics with _, all prosodic 
marks can alternatively be placed in a separate tier, set off 
by < >, as recommended for the next two symbols.)
global rise						<R> 
global fall						<F>
Diacritics						
									
voiceless						_0	(0 = figure), e.g. n_0
voiced							_v 
aspirated						_h 
more rounded						_O	(O = letter) 
less rounded						_c 
advanced							_+
retracted						_-
centralized						_" 
syllabic							=	(or _=) e.g. n= (or n_=) 
non-syllabic						_^ 
rhoticity						`
									
breathy voiced					_t 
creaky voiced					_k
linguolabial						_N 
labialized						_w 
palatalized						'	(or _j) e.g. t' (or t_j) 
velarized						_G 
pharyngealized					_?\
									
dental							_d 
apical							_a 
laminal							_m
nasalized						~	(or _~) e.g. A~ (or A_~) 
nasal release					_n
lateral release					_l 
no audible release				_}

velarized or pharyngealized		_e 
velarized l, alternatively		5 
raised							_r 
lowered							_o 
advanced tongue root				_A 
retracted tongue root			_q

* * *

<small>This (part of) documentation was generated from [src/fst/phonetics/txt2ipa.xfscript](https://github.com/giellalt/lang-krl/blob/main/src/fst/phonetics/txt2ipa.xfscript)</small>

---

# src-fst-transcriptions-transcriptor-abbrevs2text.lexc.md 



We describe here how abbreviations are in Karelian are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---

# src-fst-transcriptions-transcriptor-numbers-digit2text.lexc.md 



% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-numbers-digit2text.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/transcriptions/transcriptor-numbers-digit2text.lexc)</small>

---

# tools-grammarcheckers-grammarchecker.cg3.md 


[ L A N G U A G E ]  G R A M M A R   C H E C K E R

# DELIMITERS

# TAGS AND SETS

## Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

### Beginning and end of sentence
BOS
EOS

### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
PPUNCT
PUNCT

COMMA
¶

### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall

### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess

Err/Orth

### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

PROP-ATTR
PROP-SUR

TIME-N-SET

###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X

## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

### Sets for Single-word sets

INITIAL

### Sets for word or not

WORD
NOT-COMMA

### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets

NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC

### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V

### Pronoun sets

### Adjectival sets and their complements

### Adverbial sets and their complements

### Sets of elements with common syntactic behaviour

### NP sets defined according to their morphosyntactic features

### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

### Border sets and their complements

### Grammarchecker sets

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-krl/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

---

# tools-tokenisers-tokeniser-disamb-gt-desc.pmscript.md 

# Tokeniser for krl

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

## Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-krl/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

# tools-tokenisers-tokeniser-gramcheck-gt-desc.pmscript.md 

# Grammar checker tokenisation for krl

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-krl/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

# tools-tokenisers-tokeniser-tts-cggt-desc.pmscript.md 

# TTS tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-tts-cggt-desc.pmscript](https://github.com/giellalt/lang-krl/blob/main/tools/tokenisers/tokeniser-tts-cggt-desc.pmscript)</small>
