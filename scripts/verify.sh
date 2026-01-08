#!/bin/bash

echo "🔍 Verificando instalação do ambiente de desenvolvimento..."
echo ""

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Função para verificar comando
check_command() {
    if command -v $1 &> /dev/null; then
        echo -e "${GREEN}✅${NC} $2"
        $1 --version 2>&1 | head -n 1
    else
        echo -e "${RED}❌${NC} $2 não encontrado"
    fi
    echo ""
}

# Verificar Fish
echo "🐟 Fish Shell:"
check_command fish "Fish"

# Verificar Starship
echo "⭐ Starship:"
check_command starship "Starship"

# Verificar Node.js
echo "📗 Node.js:"
check_command node "Node.js"
check_command npm "NPM"

# Verificar PHP
echo "🐘 PHP:"
check_command php "PHP"

# Verificar Composer
echo "🎼 Composer:"
check_command composer "Composer"

# Verificar Laravel
echo "🎵 Laravel Installer:"
check_command laravel "Laravel"

# Verificar extensões PHP
echo "📦 Extensões PHP instaladas:"
if command -v php &> /dev/null; then
    php -m | grep -E "mbstring|xml|curl|zip|gd|pdo|intl|fileinfo|tokenizer|openssl" || echo -e "${YELLOW}⚠️${NC} Algumas extensões podem estar faltando"
else
    echo -e "${RED}❌${NC} PHP não instalado"
fi
echo ""

# Verificar Git
echo "📚 Git:"
check_command git "Git"

# Resumo
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "💡 Dicas:"
echo "  • Se algum comando falhou, rode: source ~/.config/fish/config.fish"
echo "  • Para criar um projeto Laravel: laravel new meu-projeto"
echo "  • Para criar um projeto Next.js: npx create-next-app@latest"
echo ""