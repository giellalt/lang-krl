# Karelian conjunctions

conjunctions






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

































# Karelian adverb stems

ADV




# Karelian Propernouns

The file `stems/propernouns.lexc` lists just that.

**LEXICON PROPN**


















































# Karelian interjections

@LEXNAME*





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



# Karelian adpositions

adpositions









Prefixes
Prefixes in the Karelian language are bound to beginning of other words.



# Karelian Adjectives
This file documents the `stems/adjectives.lexc` file for Adjective stems 
The files points to the `affixes/adjectives.lexc` file.

LEXICON Adjectives

 aito+A:ai ADJ_AI/TO ; etc.
























maybe like fin: eri, no infl.











































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



# Karelian particles

**LEXICON Particles** gives the particles.

**LEXICON particle** gives tag

**LEXICON particle_vahv** gives the same tag, actually.


=================================== !
The Karelian morphophonological/twolc rules file !
=================================== !









* *kirjut{aä}mm{aä}*
* *kirjutamma*

* ★*kirjut{aä}mm{aä}* (is not standard language)
* ★*kirjutämmä* (is not standard language)

# Symbol affixes





Noun inflection
The Karelian language nouns inflect in cases.






































































































Proper noun inflection
The Karelian language proper nouns inflect in the same cases as regular
nouns, but 











































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

























Adjective inflection
The Karelian language adjectives compare.





















































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

