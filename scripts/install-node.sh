#!/bin/bash

echo "📗 Instalando fnm (Fast Node Manager)..."
# fnm não está no repositório oficial do Arch, usar script oficial
curl -fsSL https://fnm.vercel.app/install | bash

echo ""
echo "🔧 Configurando fnm no Fish..."
mkdir -p ~/.config/fish/conf.d
cat > ~/.config/fish/conf.d/fnm.fish << 'EOF'
# fnm (Fast Node Manager) - Troca automática de versão do Node
# Adicionar fnm ao PATH primeiro
set -gx PATH "$HOME/.local/share/fnm" $PATH

# Só carregar fnm env se o comando existir
if type -q fnm
    fnm env --use-on-cd --shell fish | source
end
EOF

echo ""
echo "✅ fnm instalado com sucesso!"
echo ""
echo "⚠️  PRÓXIMO PASSO: Instalar Node.js"
echo "  Feche e abra o terminal novamente, depois execute:"
echo ""
echo "  fnm install --lts           # Instalar Node.js LTS"
echo "  fnm default lts-latest      # Definir como padrão"
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