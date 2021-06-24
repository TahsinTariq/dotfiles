export ZSH="/home/tahsin/.oh-my-zsh"
ZSH_CUSTOM="$PWD"
export QT_QPA_PLATFORMTHEME="gtk2"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="banna"
PROMPT_EOL_MARK=''
HIST_STAMPS="dd.mm.yyyy"


source $ZSH/oh-my-zsh.sh
source ~/.zsh_alias
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/plugins/autojump/autojump.plugin.zsh



plugins=(git)
alias zconf="code ~/.zshrc"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tahsin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tahsin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tahsin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tahsin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source "$HOME/.cargo/env"
eval "$(starship init zsh)"