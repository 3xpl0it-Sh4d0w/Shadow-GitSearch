#!/usr/bin/env bash

##############################################
# Créateur              : 3xpl0it.sh4d0w     #
# Date de Création      : 20-01-2022 à 11:27 #
# Date de Modification  : 27-01-2022 à 19:11 #
##############################################

#################################################################
# Git Dorks - By : 3xpl0it Sh4d0w - Copyleft 2021               #
# ============================================================= #
# Projet sur Github : https://github.com/3xpl0it-Sh4d0w/GIT-Dox #
#################################################################

COMMAND="$1"
ARGUMENT="$2"

REQUEST="curl -s"
JSON_PARSE="jq -r"
USERAGENT='"Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0"'

LINE_BREACK="\n"
LINE="\E[30m=================================================================\E[0m"

SCRIPT_BANNER()
{
    clear
    printf "${LINE} ${LINE_BREACK}"
    printf "\E[30m[         \E[36m██████╗ ██╗████████╗    ██████╗  ██████╗ ██╗  ██╗     \E[30m] ${LINE_BREACK}"
    printf "\E[30m[        \E[36m██╔════╝ ██║╚══██╔══╝    ██╔══██╗██╔═══██╗╚██╗██╔╝     \E[30m] ${LINE_BREACK}"
    printf "\E[30m[        \E[36m██║  ███╗██║   ██║       ██║  ██║██║   ██║ ╚███╔╝      \E[30m] ${LINE_BREACK}"
    printf "\E[30m[        \E[36m██║   ██║██║   ██║       ██║  ██║██║   ██║ ██╔██╗      \E[30m] ${LINE_BREACK}"  
    printf "\E[30m[        \E[36m╚██████╔╝██║   ██║       ██████╔╝╚██████╔╝██╔╝ ██╗     \E[30m] ${LINE_BREACK}"
    printf "\E[30m[         \E[36m╚═════╝ ╚═╝   ╚═╝       ╚═════╝  ╚═════╝ ╚═╝  ╚═╝     \E[30m] ${LINE_BREACK}"
    printf "${LINE} ${LINE_BREACK}"
}

SCRIPT_MSG_HELP()
{
    printf "\E[30m[ \E[32m${0}  \E[33m-GH   =       Rechercher sur GitHub.            \E[30m] ${LINE_BREACK}"
    printf "\E[30m[ \E[32m${0}  \E[33m-GL   =       Rechercher sur GitLab.            \E[30m] ${LINE_BREACK}"
    printf "${LINE} ${LINE_BREACK}"
    printf "\E[30m[ \E[32m${0}  \E[33m-I    =       Installer le Script.              \E[30m] ${LINE_BREACK}"
    printf "\E[30m[ \E[32m${0}  \E[33m-R    =       Désinstaller le Script.           \E[30m] ${LINE_BREACK}"
    printf "\E[30m[ \E[32m${0}  \E[33m-U    =       Mettre à jour le Script.          \E[30m] ${LINE_BREACK}"
    printf "${LINE} ${LINE_BREACK}"
}

GITHUB()
{
    ARGUMENT="$1"
    SOUS_ARGUMENT="$2"

    GITHUB_API="https://api.github.com/users/"
    GITHUB_TOKEN="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"
}

GITLAB()
{
    ARGUMENT="$1"
    SOUS_ARGUMENT="$2"

    GITLAB_API="https://gitlab.com/api/v4/"
    GITLAB_TOKEN="zv-BxLAM2zU2xaxS6For"
}

SCRIPT_INSTALL()
{
    printf "IN PROGRESS \n"
}

SCRIPT_UNINSTALL()
{
    printf "IN PROGRESS \n"
}

SCRIPT_UPDATE()
{
    FILE="https://github.com/3xpl0it-Sh4d0w/GIT-Dox/git-dox.sh"
}

EXECUTE()
{
    if [[ ("$COMMAND" = "github") ]] || [[ ("$COMMAND" = "-GH") ]]
        then
            GITHUB

    elif [[ ("$COMMAND" = "gitlab") ]] || [[ ("$COMMAND" = "-GL") ]]
        then
            GITLAB

    elif [[ ("$COMMAND" = "install") ]] || [[ ("$COMMAND" = "-I") ]]
        then
            SCRIPT_INSTALL

    elif [[ ("$COMMAND" = "uninstall") ]] || [[ ("$COMMAND" = "-R") ]]
        then
            SCRIPT_UNINSTALL

    elif [[ ("$COMMAND" = "update") ]] || [[ ("$COMMAND" = "-U") ]]
        then
            SCRIPT_UPDATE

        else
            SCRIPT_BANNER
            SCRIPT_MSG_HELP
    fi
}
EXECUTE