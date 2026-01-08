#!/bin/bash

echo "📗 Instalando NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo ""
echo "🔧 Configurando NVM..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo ""
echo "📦 Instalando Node.js LTS..."
nvm install --lts
nvm use --lts

echo ""
echo "🎣 Instalando Fisher (gerenciador de plugins do Fish)..."
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"

echo ""
echo "🔧 Instalando nvm.fish (plugin NVM para Fish)..."
fish -c "fisher install jorgebucaran/nvm.fish"

echo ""
echo "✅ Node.js instalado com sucesso!"
echo ""
echo "⚠️  IMPORTANTE: Reinicie o terminal ou execute: source ~/.config/fish/config.fish"
echo ""
node --version
npm --version