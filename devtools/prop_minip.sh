#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in krl:
# sh devtools/prop_minip.sh prop_42_sur | dkrlNorm | less
# sh devtools/prop_minip.sh Sirainen | dkrlNorm 


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/stems/propernouns.lexc | grep $PATTERN | sed 's/% /%/g' | tr ' +' ':' | cut -d ':' -f1 | sed 's/%/% /g' | tr -d '%'>$L_FILE

P_FILE="test/data/testpropparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $LOOKUP $GTHOME/startup-langs/krl/src/generator-gt-norm.xfst
 done
 rm -f $L_FILE
done

