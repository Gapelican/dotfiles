#!/bin/bash

echo "🔧 Atualizando sistema..."
sudo pacman -Syu --noconfirm

echo "📦 Instalando pacotes essenciais..."
sudo pacman -S --noconfirm \
    base-devel \
    git \
    curl \
    wget \
    unzip \
    vim \
    btop \
    fzf

echo "✅ Base instalada!"