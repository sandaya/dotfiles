
# .path sample:
# export PATH="thisserverdir/:$PATH
# .extra sample:
# git config --global user.name "blah"
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

shopt -s nocaseglob

#https://unix.stackexchange.com/questions/18212/bash-history-ignoredups-and-erasedups-setting-conflict-with-common-history
shopt -s histappend histverify
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

shopt -s checkwinsize
