#!/bin/bash

echo "🚀 Iniciando configuração do ambiente de desenvolvimento..."
echo ""

# Executar scripts na ordem
bash scripts/install-base.sh
bash scripts/install-fish.sh
bash scripts/install-node.sh
bash scripts/install-php.sh

# Copiar configs
echo "📋 Copiando arquivos de configuração..."
mkdir -p ~/.config/fish
mkdir -p ~/.config/fish/functions
cp -r configs/.config/* ~/.config/

echo ""
echo "✨ Instalação completa!"
echo "⚠️  Execute 'fish' para iniciar o Fish shell"
echo "⚠️  Feche e abra o terminal novamente para aplicar todas as configurações"