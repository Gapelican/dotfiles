#!/bin/bash

echo "📗 Instalando NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "🔧 Configurando NVM no Fish..."
mkdir -p ~/.config/fish/conf.d
echo 'set -gx NVM_DIR "$HOME/.nvm"' > ~/.config/fish/conf.d/nvm.fish

# Instalar Bass para compatibilidade NVM com Fish
echo "🎸 Instalando Bass (helper para Fish)..."
curl -L https://get.oh-my.fish | fish
omf install bass

# Adicionar função NVM ao Fish
cat >> ~/.config/fish/functions/nvm.fish << 'EOF'
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
EOF

echo "📦 Instalando Node.js LTS..."
source ~/.nvm/nvm.sh
nvm install --lts
nvm use --lts

echo "✅ Node.js instalado! Versão:"
node --version
npm --version