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
echo "📗 Instalando Node.js..."
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
echo "  3. Instale o Laravel Installer: composer global require laravel/installer"
echo "  4. Execute 'bash scripts/verify.sh' para verificar a instalação"
echo ""