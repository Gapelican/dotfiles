#!/bin/bash

echo "🐟 Instalando Fish Shell..."
sudo pacman -S --noconfirm fish

echo ""
echo "⭐ Instalando Starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo ""
echo "🔧 Configurando Fish como shell padrão..."
chsh -s /usr/bin/fish

echo ""
echo "✅ Fish e Starship instalados com sucesso!"
echo ""
echo "⚠️  Execute 'fish' para iniciar o Fish shell"