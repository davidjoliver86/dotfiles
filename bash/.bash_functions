function prompt {
    PROMPT=' > '
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PROMPT"
    echo -e "\e[96m$(date +%R)\e[0m [ \e[94m$PWD\e[0m ]$(__git_ps1)"
}
