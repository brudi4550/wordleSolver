#!/bin/bash
LANGUAGE="en"
while getopts "l:i:n:" opt; do
  case $opt in
    l)
      LANGUAGE=$OPTARG
      ;;
    i)
      IN_WORD=$OPTARG
      for (( i=0; i<${#IN_WORD}; i++ )); do
	  GREP_UNFORMATTED+=" grep ${IN_WORD:i:1} |"
      done 
      ;;
    n)
      NOT_IN_WORD=$OPTARG
      for (( i=0; i<${#NOT_IN_WORD}; i++ )); do
          GREP_UNFORMATTED+=" grep -v ${NOT_IN_WORD:i:1} |"
      done 
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done
GREP_FORMATTED=${GREP_UNFORMATTED%?}
ARG1=${@:$OPTIND:1}
ARG1_FORMATTED=${ARG1//[,]/.}
case $LANGUAGE in
    "en")
	grep "\<$ARG1_FORMATTED\>" languages/words_english.txt | eval $GREP_FORMATTED
    ;;
    "de")
	grep "\<$ARG1_FORMATTED\>" languages/words_german.txt | eval $GREP_FORMATTED
    ;;
    "it")
	grep "\<$ARG1_FORMATTED\>" languages/words_italian.txt | eval $GREP_FORMATTED
    ;;
    "nl")
	grep "\<$ARG1_FORMATTED\>" languages/words_dutch.txt | eval $GREP_FORMATTED
    ;;
    "fr")
	grep "\<$ARG1_FORMATTED\>" languages/words_french.txt | eval $GREP_FORMATTED
    ;;
    "es")
	grep "\<$ARG1_FORMATTED\>" languages/words_spanish.txt | eval $GREP_FORMATTED
    ;;
    "no")
	grep "\<$ARG1_FORMATTED\>" languages/words_norwegian.txt | eval $GREP_FORMATTED
    ;;
esac
