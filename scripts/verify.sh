#!/bin/bash

echo "🔍 Verificando instalação..."
echo ""

echo "📗 Node.js:"
node --version && npm --version || echo "❌ Node.js não encontrado"
echo ""

echo "🐘 PHP:"
php --version || echo "❌ PHP não encontrado"
echo ""

echo "🎼 Composer:"
composer --version || echo "❌ Composer não encontrado"
echo ""

echo "🎵 Laravel:"
laravel --version || echo "❌ Laravel installer não encontrado"
echo ""

echo "📦 Extensões PHP necessárias:"
php -m | grep -E "mbstring|xml|curl|zip|gd|pdo|intl|fileinfo|tokenizer|openssl"
echo ""

echo "🗄️ Banco de dados:"
mysql --version 2>/dev/null && echo "✅ MySQL instalado" || echo "⚠️  MySQL não instalado"
psql --version 2>/dev/null && echo "✅ PostgreSQL instalado" || echo "⚠️  PostgreSQL não instalado"