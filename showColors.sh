#!/bin/bash
#
#   This file echoes a bunch of color codes to the 
#   terminal to demonstrate what's available.  Each 
#   line is the color code of one forground color,
#   out of 17 (default + 16 escapes), followed by a 
#   test use of that color on all nine background 
#   colors (default + 8 escapes).
#   http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

T='gYw'   # The test text

echo -e "\n                 40m     41m     42m     43m\
     44m     45m     46m     47m";

for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo;
done
echo

#https://wiki.archlinux.org/title/Bash/Prompt_customizationhttps://wiki.archlinux.org/title/Bash/Prompt_customization
for C in {0..255}; do
    tput setab $C
    echo -n "$C "
done
tput sgr0
echo


echo "tmux colors"
for num in {0..255}; do
    printf "%s\033[38;5;${num}mcolour${num}\033[0m \t";

    if [ $(expr $((num+1)) % 8) -eq 0 ]; then
        printf "\n"
    fi
done
