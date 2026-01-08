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
echo "🎸 Instalando Oh My Fish para compatibilidade..."
curl -L https://get.oh-my.fish | fish

echo ""
echo "🔧 Instalando Bass (helper do NVM para Fish)..."
fish -c "omf install bass"

echo ""
echo "✅ Node.js instalado com sucesso!"
echo ""
echo "⚠️  IMPORTANTE: Reinicie o terminal ou execute: source ~/.config/fish/config.fish"
echo ""
node --version
npm --version