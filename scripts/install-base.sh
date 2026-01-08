#!/bin/bash

echo "🔧 Atualizando sistema..."
sudo pacman -Syu --noconfirm

echo ""
echo "📦 Instalando pacotes essenciais..."
sudo pacman -S --noconfirm \
    base-devel \
    git \
    curl \
    wget \
    unzip \
    zip \
    vim \
    nano \
    btop \
    fzf \
    ripgrep \
    fd \
    bat \
    eza \
    openssh

echo ""
echo "✅ Pacotes base instalados com sucesso!"