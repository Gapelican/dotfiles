#!/bin/bash

# Script de bootstrap para configuração inicial do Arch Linux no WSL
# Execute como root: curl -fsSL https://raw.githubusercontent.com/SEU-USUARIO/dotfiles/main/bootstrap.sh | bash

echo "🔧 Bootstrap - Configuração Inicial do Sistema"
echo ""

# Verificar se está rodando como root
if [ "$EUID" -ne 0 ]; then 
    echo "❌ Este script precisa ser executado como root"
    exit 1
fi

echo "📦 Atualizando sistema..."
pacman -Syu --noconfirm

echo ""
echo "🔧 Instalando pacotes essenciais..."
pacman -S --noconfirm sudo vim git

echo ""
read -p "Digite o nome do usuário que deseja criar: " username

if id "$username" &>/dev/null; then
    echo "✅ Usuário $username já existe"
else
    echo "👤 Criando usuário $username..."
    useradd -m -G wheel -s /bin/bash $username
    echo "🔑 Defina a senha para $username:"
    passwd $username
fi

echo ""
echo "🔧 Configurando sudo para o grupo wheel..."
# Descomenta a linha do wheel no sudoers
sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers

echo ""
echo "🔧 Configurando WSL..."
cat > /etc/wsl.conf << EOF
[boot]
systemd=true

[user]
default=$username
EOF

echo ""
echo "✅ Configuração inicial completa!"
echo ""
echo "⚠️  PRÓXIMOS PASSOS:"
echo "  1. No PowerShell do Windows, execute: wsl --shutdown"
echo "  2. Abra o terminal novamente (vai entrar como $username)"
echo "  3. Clone seu repositório: git clone https://github.com/SEU-USUARIO/dotfiles.git"
echo "  4. Execute: cd dotfiles && chmod +x install.sh scripts/*.sh && ./install.sh"
echo ""