#!/bin/bash
NOT_IN_WORD=''
IN_WORD=''
while getopts ":i:n:" opt; do
  case $opt in
    i)
      IN_WORD=$OPTARG
      ;;
    n)
      NOT_IN_WORD=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

GREP_IN_UNFORMATTED=''
for (( i=0; i<${#IN_WORD}; i++ )); do
    GREP_IN_UNFORMATTED+="grep ${IN_WORD:i:1}|"
done 
GREP_IN=${GREP_IN_UNFORMATTED%?}

GREP_NOT_IN_UNFORMATTED=''
for (( i=0; i<${#NOT_IN_WORD}; i++ )); do
    GREP_IN_UNFORMATTED+="grep -v ${NOT_IN_WORD:i:1}|"
done 
GREP_NOT_IN=${GREP_IN_UNFORMATTED%?}

ARG1=${@:$OPTIND:1}
grep "\<$ARG1\>" words_alpha.txt | eval $GREP_IN | eval $GREP_NOT_IN
