function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo " (venv:$venv) "
}

if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte-2.91.sh
    VTE_PWD="$(__vte_osc7)"
else
    VTE_PWD=""
fi

function prompt {
    PROMPT=' > '
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PROMPT$VTE_PWD"
    echo -e "\e[96m$(date +%R)\e[0m [ \e[94m$PWD\e[0m ]$(__git_ps1)$(virtualenv_info)"
}
