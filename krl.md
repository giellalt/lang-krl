


















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

**LEXICON VERB_IMPVPL_BACK** 

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

**LEXICON VERB_PCP_N** 

**LEXICON VERB_PRES_BACK** 

**LEXICON VERB_PRES_FRONT** 

**LEXICON VERB_PAST_BACK** 

**LEXICON VERB_PAST_FRONT** 


**LEXICON VERB_COND** 

**LEXICON VERB_COND_PASSIVE_TAIS** 

**LEXICON VERB_COND_PASSIVE_TÄIS** 


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

























Proper noun inflection
The Karelian language proper nouns inflect in the same cases as regular
nouns, but 











































Adjective inflection
The Karelian language adjectives compare.




















































# Noun inflection
This file documents Karelian noun inflection.







































































































# Symbol affixes





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

**LEXICON proššai(k)koa_verb_vaill**

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

**LEXICON VERB_ŠY/YVÄ** 

**LEXICON VERB_PIÄS/TÄ** 

**LEXICON VERB_KÄ/YVÄ** 

**LEXICON VERB_S/UAHA** 

**LEXICON VERB_MIET/TIE** 

**LEXICON VERB_LÄ/HTIE** 

**LEXICON VERB_T/UUVVA** 

**LEXICON VERB_TU/LLA** 

**LEXICON VERB_PA/ISSA** 

**LEXICON VERB_NOUŠ/ŠA** 

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

**LEXICON VERB_OP/PIE** 

**LEXICON VERB_ŠO/PIE** 

**LEXICON VERB_TUN/TIE** 

**LEXICON VERB_LUA/TIE** 

**LEXICON VERB_TI/ETEÄ** 

**LEXICON VERB_TÄYT/TYÄ** 

**LEXICON VERB_NÄYT/TYÄ** 

**LEXICON VERB_VIČER/TEÄ** 

**LEXICON VERB_PIÄT/TEÄ** 

**LEXICON VERB_TYÖN/TEÄ** 

**LEXICON VERB_LÖY/TEÄ** 

**LEXICON VERB_JÄRJEŠ/TEÄ** 

**LEXICON VERB_PI/TYÄ** 



**LEXICON VERB_OPAŠ/TUO** 

**LEXICON VERB_TOIV/UO** 

**LEXICON VERB_VOIT/TUA** 

**LEXICON VERB_KAN/TUA** 

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



# Karelian Propernouns

The file `stems/propernouns.lexc` lists just that.

**LEXICON PROPN**


















































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



# Karelian interjections

@LEXNAME*





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

































# Karelian conjunctions

conjunctions






# Karelian Adjectives
This file documents the `stems/adjectives.lexc` file for Adjective stems 
The files points to the `affixes/adjectives.lexc` file.

LEXICON Adjectives

 aito+A:ai ADJ_AI/TO ; etc.
























maybe like fin: eri, no infl.











































Prefixes
Prefixes in the Karelian language are bound to beginning of other words.



# Karelian adpositions

adpositions









# Karelian adverb stems

ADV




# Karelian Nouns
This file documents the  Karelian noun stem file.
The first part of the file contains stems, the second contains the 
intermediate morphology.

## The stem list

Nouns
 afrikkalaine+N:afrikkalai NOUN_ELAVUTTAMI/NE ;
 aihe+N:aihe NOUN_AIH/E ;
 aikakauš#lehti+N:aikakaus0leh NOUN_LEH/TI ;







## The list of intermediate lexica

These lexica point to the morphology in `affixes/nouns.lexc`

**LEXICON a_i_noun**

**LEXICON a_i_u_noun**

**LEXICON a_i_ä_noun**






























































### Intermediate lexicon, approach 2 (todo: unify)

**LEXICON rihm/a__noun**

**LEXICON NOUN_MÄT/ÄŠ**

**LEXICON NOUN_KIN/NAŠ**

**LEXICON NOUN_KYNNY/Š**



























































































































































































































# Karelian particles

**LEXICON Particles** gives the particles.

**LEXICON particle** gives tag

**LEXICON particle_vahv** gives the same tag, actually.



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

















































% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 




We describe here how abbreviations are in Karelian are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 



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
QMARK
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

HAB-ACTOR
HAB-ACTOR-NOT-HUMAN


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
REAL-WORD
REAL-WORD-NOT-ABBR
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








