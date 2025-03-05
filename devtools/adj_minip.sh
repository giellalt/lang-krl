#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in krl:
# sh devtools/adj_minip.sh a_22odd  | less
# sh devtools/adj_minip.sh lestadiolainen 
# Only get the lemma you ask for:
# sh devtools/adj_minip.sh '^lestadiolainen[ :+]' 

HLOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)

PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/morphology/stems/adjectives.lexc | egrep $PATTERN | sed 's/% /%/g' | tr ' +' ':' | cut -d ':' -f1 | sed 's/%/% /g' | tr -d '%'>$L_FILE

P_FILE="test/data/testadjparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $LOOKUP $GTLANGS/lang-krl/src/generator-gt-norm.hfstol
 done
 rm -f $L_FILE
done


