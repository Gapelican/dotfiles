# Starship
starship init fish | source

# fnm (Fast Node Manager) - Troca automática de versão do Node
if type -q fnm
    fnm env --use-on-cd | source
end

# Aliases úteis
alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../..'

# Laravel
alias art='php artisan'
alias sail='./vendor/bin/sail'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'

# Variáveis de ambiente
set -x EDITOR vim

# PATH - Herd Lite (PHP)
set -gx PATH $HOME/.config/herd-lite/bin $PATH

# PATH - Composer
set -gx PATH $PATH ~/.config/composer/vendor/bin