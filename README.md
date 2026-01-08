# 🚀 Dotfiles - Ambiente de Desenvolvimento

Configuração automatizada do ambiente de desenvolvimento para WSL + Arch Linux com Fish, Starship, Node.js e PHP (Laravel).

## 📋 O que será instalado

- **Shell:** Fish + Starship (prompt customizado)
- **Node.js:** Via fnm (Fast Node Manager - gerenciador moderno de versões)
- **PHP 8.4:** Via Laravel Herd Lite
- **Composer:** Gerenciador de dependências PHP
- **Laravel:** Framework PHP + Laravel Installer
- **Ferramentas:** Git, Curl, Wget, Vim, Btop, FZF, Ripgrep, e mais

## ⚙️ Setup Inicial do WSL (Primeira Vez)

Se você está configurando um **PC novo** com Arch Linux no WSL, siga estes passos **manuais** primeiro:

### 1. Instalar Arch Linux no WSL

```powershell
# No PowerShell do Windows (como Administrador)
wsl --install -d archlinux
```

Após a instalação, o WSL vai abrir automaticamente como `root`.

### 2. Atualizar o sistema

```bash
# Dentro do Arch WSL (como root)
pacman -Syu
```

### 3. Instalar pacotes essenciais

```bash
pacman -S sudo vim git
```

### 4. Criar seu usuário

```bash
# Substitua 'seuusuario' pelo nome desejado
useradd -m -G wheel -s /bin/bash seuusuario
passwd seuusuario
```

### 5. Configurar sudo para o grupo wheel

```bash
# Editar sudoers com visudo (mais seguro)
EDITOR=vim visudo

# Descomente a linha (remova o #):
# %wheel ALL=(ALL:ALL) ALL
```

### 6. Configurar usuário padrão no WSL

```bash
# Criar arquivo de configuração do WSL
cat > /etc/wsl.conf << EOF
[boot]
systemd=true

[user]
default=seuusuario
EOF
```

### 7. Reiniciar o WSL

```powershell
# No PowerShell do Windows
wsl --shutdown
```

Ao abrir o terminal novamente, você entrará automaticamente como seu usuário (não mais como root).

---

## 🎯 Instalação Rápida

### Primeira vez (PC novo)

**Pré-requisito:** Complete o [Setup Inicial do WSL](#️-setup-inicial-do-wsl-primeira-vez) primeiro.

Depois do setup inicial:

1. **Clone o repositório**
   ```bash
   git clone https://github.com/SEU-USUARIO/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Torne os scripts executáveis**
   ```bash
   chmod +x install.sh scripts/*.sh
   ```

3. **Execute a instalação**
   ```bash
   ./install.sh
   ```

4. **Reinicie o terminal**
   ```powershell
   # No PowerShell do Windows
   wsl --shutdown
   ```

### PC já configurado

Se o sistema já está configurado e você só quer reinstalar os dotfiles:

```bash
git clone https://github.com/SEU-USUARIO/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh scripts/*.sh
./install.sh
```

## 📁 Estrutura do Repositório

```
dotfiles/
├── install.sh              # Script principal de instalação
├── configs/
│   └── .config/
│       ├── fish/
│       │   └── config.fish # Aliases e configurações do Fish
│       └── starship.toml   # Tema do prompt
├── scripts/
│   ├── install-base.sh     # Pacotes essenciais
│   ├── install-fish.sh     # Fish + Starship
│   ├── install-node.sh     # Node.js + NVM
│   ├── install-php.sh      # PHP + Composer + Laravel
│   └── verify.sh           # Verificação da instalação
├── .gitignore              # Arquivos ignorados pelo Git
└── README.md               # Este arquivo
```

## 🔧 Scripts Individuais

Se preferir instalar apenas partes específicas:

```bash
# Apenas Fish + Starship
bash scripts/install-fish.sh

# Apenas Node.js
bash scripts/install-node.sh

# Apenas PHP + Laravel
bash scripts/install-php.sh
```

## ✅ Verificar Instalação

```bash
bash scripts/verify.sh
```

## 🎨 Personalização

### Modificar aliases do Fish

Edite: `configs/.config/fish/config.fish`

### Customizar o Starship

Edite: `configs/.config/starship.toml`

Depois de modificar, atualize:
```bash
source ~/.config/fish/config.fish
```

## 📦 Comandos Úteis

### Laravel
```bash
laravel new meu-projeto          # Criar novo projeto
art migrate                      # Rodar migrations (dentro do projeto)
sail up                          # Docker Sail (dentro do projeto)
```

### Node.js (via fnm)
```bash
fnm list                         # Listar versões instaladas
fnm install 20                   # Instalar Node 20
fnm use 20                       # Usar Node 20
fnm default 20                   # Definir Node 20 como padrão
node --version                   # Ver versão atual
npm install -g <pacote>          # Instalar pacote global
npx create-next-app              # Criar app Next.js
```

**Troca automática de versão:**
```bash
# Criar .node-version na raiz do projeto
echo "20" > .node-version
# fnm troca automaticamente ao entrar na pasta!
```

### Git
```bash
gs          # git status
ga .        # git add .
gc -m ""    # git commit -m
gp          # git push
gl          # git pull
```

## 🔄 Atualizar Dotfiles

Quando fizer mudanças nas configurações:

```bash
cd ~/dotfiles
git add .
git commit -m "Atualiza configurações"
git push
```

## 🆘 Problemas Comuns

### PHP/Composer não encontrado
```bash
# Adicionar ao PATH manualmente
echo 'set -gx PATH $HOME/.config/herd-lite/bin $PATH' >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
```

### Node.js não encontrado
```bash
# Verificar se fnm está instalado
fnm --version

# Se não estiver, instalar
sudo pacman -S fnm

# Instalar Node LTS
fnm install --lts
fnm use lts-latest
```

### Starship não aparece
```bash
# Recarregar configuração
source ~/.config/fish/config.fish
```

## 📝 Notas

- O PHP é instalado via **Herd Lite** (solução oficial do Laravel)
- O Node.js é gerenciado via **fnm** (Fast Node Manager - moderno, rápido, suporta múltiplas versões)
- O fnm troca automaticamente a versão do Node baseado no arquivo `.node-version` do projeto
- Systemd está habilitado para gerenciar serviços

## 🔗 Links Úteis

- [Laravel Docs](https://laravel.com/docs)
- [Fish Shell](https://fishshell.com/)
- [Starship](https://starship.rs/)
- [fnm (Fast Node Manager)](https://github.com/Schniz/fnm)

## 📄 Licença

MIT - Use como quiser!