#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in fkv:
# sh devtools/numeral_minip.sh n_21 | less
# sh devtools/numeral_minip.sh järvenpää 
# Only get the lemma you ask for:
# sh devtools/numeral_minip.sh '^pää[ :+]' 


LOOKUP=$(echo $LOOKUP)
GTHOME=$(echo $GTHOME)


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/morphology/stems/numerals.lexc | egrep $PATTERN | sed 's/% /%/g' | tr ' +' ':' | cut -d ':' -f1 | sed 's/%/% /g' | tr -d '%'>$L_FILE


P_FILE="test/data/testnumeralpradigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
  echo "${lemma}${form}" | $LOOKUP $GTHOME/langs/fkv/src/generator-gt-norm-dial_Por.xfst
  # echo "${lemma}${form}" | $LOOKUP $GTHOME/langs/fkv/src/generator-gt-norm.xfst
 done
done


