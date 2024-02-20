
# .path sample:
# export PATH="thisserverdir/:$PATH
# .extra sample:
# git config --global user.name "blah"
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

shopt -s nocaseglob

shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

shopt -s histverify

shopt -s checkwinsize
