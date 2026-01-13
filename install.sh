#!/bin/bash

echo "🚀 Iniciando configuração do ambiente de desenvolvimento..."
echo ""

# Executar scripts na ordem
echo "📦 Instalando pacotes base..."
bash scripts/install-base.sh

echo ""
echo "🐟 Instalando Fish + Starship..."
bash scripts/install-fish.sh

echo ""
echo "📗 Instalando fnm (Fast Node Manager)..."
bash scripts/install-node.sh

echo ""
echo "🐘 Instalando PHP + Laravel..."
bash scripts/install-php.sh

echo ""
echo "📋 Copiando arquivos de configuração..."
mkdir -p ~/.config/fish
mkdir -p ~/.config
cp -r configs/.config/* ~/.config/

echo ""
echo "✨ Instalação completa!"
echo ""
echo "⚠️  PRÓXIMOS PASSOS:"
echo "  1. Feche e abra o terminal novamente (ou execute: source ~/.config/fish/config.fish)"
echo "  2. Execute 'fish' para iniciar o Fish shell"
echo "  3. Instale o Node.js: fnm install --lts && fnm default lts-latest"
echo "  4. Instale o Laravel Installer: composer global require laravel/installer"
echo "  5. Execute 'bash scripts/verify.sh' para verificar a instalação"
echo ""