# 🚀 Dotfiles - Ambiente de Desenvolvimento

Configuração automatizada do ambiente de desenvolvimento para WSL + Arch Linux com Fish, Starship, Node.js e PHP (Laravel).

## 📋 O que será instalado

- **Shell:** Fish + Starship (prompt customizado)
- **Node.js:** Via NVM com versão LTS
- **PHP 8.4:** Via Laravel Herd Lite
- **Composer:** Gerenciador de dependências PHP
- **Laravel:** Framework PHP + Laravel Installer
- **Ferramentas:** Git, Curl, Wget, Vim, Btop, FZF, Ripgrep, e mais

## 🎯 Instalação Rápida

### Primeira vez (PC novo)

1. **Instale o Arch Linux no WSL**
   ```powershell
   # No PowerShell do Windows
   wsl --install -d Arch
   ```

2. **Configure o usuário inicial (rode como root)**
   ```bash
   # Dentro do Arch WSL
   curl -fsSL https://raw.githubusercontent.com/SEU-USUARIO/dotfiles/main/bootstrap.sh | bash
   ```

3. **Clone e execute a instalação**
   ```bash
   # Agora como seu usuário
   git clone https://github.com/SEU-USUARIO/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   chmod +x install.sh scripts/*.sh
   ./install.sh
   ```

4. **Reinicie o terminal**
   ```powershell
   # No PowerShell
   wsl --shutdown
   ```

## 📁 Estrutura do Repositório

```
dotfiles/
├── install.sh              # Script principal de instalação
├── bootstrap.sh            # Configuração inicial do sistema (root)
├── configs/
│   └── .config/
│       ├── fish/
│       │   └── config.fish
│       └── starship.toml
├── scripts/
│   ├── install-base.sh     # Pacotes essenciais
│   ├── install-fish.sh     # Fish + Starship
│   ├── install-node.sh     # Node.js + NVM
│   ├── install-php.sh      # PHP + Composer + Laravel
│   └── verify.sh           # Verificação da instalação
└── README.md
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

### Node.js
```bash
nvm install --lts                # Instalar Node LTS
nvm use --lts                    # Usar Node LTS
nvm list                         # Listar versões instaladas
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
echo 'set -gx PATH /home/gabriel/.config/herd-lite/bin $PATH' >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
```

### NVM não funciona no Fish
```bash
# Instalar Bass e configurar NVM
omf install bass
```

### Starship não aparece
```bash
# Recarregar configuração
source ~/.config/fish/config.fish
```

## 📝 Notas

- O PHP é instalado via **Herd Lite** (solução oficial do Laravel)
- O Node.js é gerenciado via **NVM** para fácil troca de versões
- O Fish usa **Bass** para compatibilidade com scripts bash (como NVM)
- Systemd está habilitado para gerenciar serviços

## 🔗 Links Úteis

- [Laravel Docs](https://laravel.com/docs)
- [Fish Shell](https://fishshell.com/)
- [Starship](https://starship.rs/)
- [NVM](https://github.com/nvm-sh/nvm)

## 📄 Licença

MIT - Use como quiser!