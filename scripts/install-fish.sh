#!/bin/bash

echo "🐟 Instalando Fish..."
sudo pacman -S --noconfirm fish

echo "⭐ Instalando Starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "🔧 Configurando Fish como shell padrão..."
chsh -s /usr/bin/fish

echo "✅ Fish e Starship instalados!"