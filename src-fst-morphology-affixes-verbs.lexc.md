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

**LEXICON VERB_3SG_0_BACK** 

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

**LEXICON VERB_COND_FRONT** 

**LEXICON VERB_COND_BACK** 

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

**LEXICON AUX_PCP_UN**

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-krl/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>
