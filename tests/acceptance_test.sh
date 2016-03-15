#!/bin/bash

declare -a arr PACK=(
    "prettytable"
    "delorean"
    "snowballstemmer"
    "wget"
    "sh"
    "fuzzywuzzy"
    "progressbar"
    "uuid"
    "bashplotlib"
)

echo Start tests
installed=0
failed=0
correct=0

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

for i in "${PACK[@]}"
do
  echo "Check: $i"
  python -c "import $i" &> /dev/null
  if [ $? -eq 0 ]; then
    echo "$i already installed"
    ((installed++))
  else
    python -c "import $i" &> /dev/null
    if [ $? -eq 0 ]; then
      printf "${GREEN}$i installed correctly${NC}\n"
      ((correct++))
    else
      printf "${RED}$i FAILED${NC}\n"
      ((failed++))
    fi
  fi
done

printf "installed: $installed, ${GREEN}correct: $correct${NC}, ${RED}failed: $failed${NC}\n"

if [ $failed -eq 0 ]
then
  exit 0
else
  exit 1
fi
