#!/bin/bash

echo "🐘 Instalando PHP via Laravel Herd Lite..."
/bin/bash -c "$(curl -fsSL https://php.new/install/linux/8.4)"

echo ""
echo "🔧 Configurando PATH do Herd Lite no Fish..."
mkdir -p ~/.config/fish

# Verificar se já existe a linha no config
if ! grep -q "herd-lite/bin" ~/.config/fish/config.fish 2>/dev/null; then
    echo "" >> ~/.config/fish/config.fish
    echo "# Herd Lite (PHP)" >> ~/.config/fish/config.fish
    echo "set -gx PATH /home/$USER/.config/herd-lite/bin \$PATH" >> ~/.config/fish/config.fish
fi

echo ""
echo "🔧 Configurando PATH do Composer no Fish..."
# Verificar se já existe a linha no config
if ! grep -q "composer/vendor/bin" ~/.config/fish/config.fish 2>/dev/null; then
    echo "" >> ~/.config/fish/config.fish
    echo "# Composer" >> ~/.config/fish/config.fish
    echo "set -gx PATH \$PATH ~/.config/composer/vendor/bin" >> ~/.config/fish/config.fish
fi

echo ""
echo "✅ PHP instalado com sucesso!"
echo ""
echo "⚠️  IMPORTANTE: Execute 'source ~/.config/fish/config.fish' ou reinicie o terminal"
echo ""
echo "Depois, você pode instalar o Laravel Installer com:"
echo "  composer global require laravel/installer"