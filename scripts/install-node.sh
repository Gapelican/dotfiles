#!/bin/bash

echo "📗 Instalando fnm (Fast Node Manager)..."
sudo pacman -S --noconfirm fnm

echo ""
echo "🔧 Configurando fnm no Fish..."
mkdir -p ~/.config/fish/conf.d
cat > ~/.config/fish/conf.d/fnm.fish << 'EOF'
# fnm (Fast Node Manager) - Troca automática de versão do Node
fnm env --use-on-cd --shell fish | source
EOF

echo ""
echo "📦 Instalando Node.js LTS..."
# Inicializar fnm temporariamente para instalar Node
eval "$(fnm env --shell bash)"
fnm install --lts
fnm default lts-latest

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