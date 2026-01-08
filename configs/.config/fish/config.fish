# Starship
starship init fish | source

# NVM (Node Version Manager)
# O plugin nvm.fish (via Fisher) gerencia isso automaticamente
# Não precisa de configuração manual aqui

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