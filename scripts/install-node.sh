#!/bin/bash

echo "📗 Instalando Node.js e NPM via pacman..."
sudo pacman -S --noconfirm nodejs npm

echo ""
echo "✅ Node.js instalado com sucesso!"
echo ""
node --version
npm --version

echo ""
echo "💡 Para instalar ferramentas globais:"
echo "  npm install -g <pacote>"
echo ""
echo "💡 Para trocar versões do Node, use:"
echo "  sudo pacman -S nodejs-lts-* (veja: pacman -Ss nodejs-lts)"