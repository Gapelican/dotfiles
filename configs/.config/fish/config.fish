# Starship
starship init fish | source

# NVM (Node Version Manager)
set -gx NVM_DIR "$HOME/.nvm"

# Função para carregar NVM (usando bass)
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

# Carregar versão padrão do Node ao iniciar
if test -s "$NVM_DIR/nvm.sh"
    function __load_nvm_default_node --on-event fish_prompt
        functions --erase __load_nvm_default_node
        bass source ~/.nvm/nvm.sh --no-use
    end
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