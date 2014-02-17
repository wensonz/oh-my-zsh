function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo 'Hg' && return
    # echo '○'
    echo ''
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT='
%{$FG[033]%}┌%{$reset_color%} %{%F{135}%}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} %{%F{166}%}%m%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
%{$FG[033]%}└%{$reset_color%} $(virtualenv_info)$(prompt_char) %{$fg[blue]%}>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
