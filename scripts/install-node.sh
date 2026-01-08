#!/bin/bash

echo "📗 Instalando fnm (Fast Node Manager)..."
sudo pacman -S --noconfirm fnm

echo ""
echo "🔧 Configurando fnm no Fish..."
# A configuração será feita pelo config.fish

echo ""
echo "📦 Instalando Node.js LTS..."
# Inicializar fnm temporariamente para instalar Node
eval "$(fnm env --shell bash)"
fnm install --lts
fnm use lts-latest

echo ""
echo "✅ fnm e Node.js instalados com sucesso!"
echo ""
node --version
npm --version

echo ""
echo "💡 Comandos úteis do fnm:"
echo "  fnm install 20      # Instalar Node 20"
echo "  fnm use 20          # Usar Node 20"
echo "  fnm list            # Listar versões instaladas"
echo "  fnm default 20      # Definir Node 20 como padrão"
echo ""
echo "💡 Troca automática de versão:"
echo "  Crie um arquivo .node-version na raiz do projeto"
echo "  fnm vai trocar automaticamente ao entrar na pasta!"