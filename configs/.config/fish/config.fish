# Starship
starship init fish | source

# NVM (Node Version Manager)
# Só inicializa se NVM e bass estiverem instalados
if test -s "$HOME/.nvm/nvm.sh"
    set -gx NVM_DIR "$HOME/.nvm"

    # Função para carregar NVM (requer bass: omf install bass)
    function nvm
        # Verifica se bass está disponível
        if type -q bass
            bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
        else
            echo "⚠️  Bass não instalado. Execute: omf install bass"
        end
    end

    # Carregar versão padrão do Node ao iniciar (só se bass existir)
    if type -q bass
        function __load_nvm_default_node --on-event fish_prompt
            functions --erase __load_nvm_default_node
            bass source ~/.nvm/nvm.sh --no-use
        end
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