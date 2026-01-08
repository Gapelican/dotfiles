# Comandos Úteis - Referência Rápida

## Laravel

### Criar novo projeto
```bash
laravel new nome-do-projeto
# ou
composer create-project laravel/laravel nome-do-projeto
```

### Artisan (dentro do projeto)
```bash
art serve                    # Iniciar servidor (alias configurado)
art make:model NomeModel -m  # Criar model com migration
art make:controller NomeController
art migrate                  # Executar migrations
art migrate:fresh --seed     # Resetar DB e executar seeders
art tinker                   # REPL interativo
```

### Laravel Sail (Docker)
```bash
sail up -d                   # Iniciar containers em background
sail artisan migrate         # Executar artisan via Sail
sail composer install        # Composer via Sail
sail npm install             # NPM via Sail
```

## Node.js / NPM

### NVM
```bash
nvm install --lts            # Instalar versão LTS
nvm install 18               # Instalar versão específica
nvm use 18                   # Usar versão específica
nvm list                     # Listar versões instaladas
nvm alias default 18         # Definir versão padrão
```

### NPM
```bash
npm init -y                  # Criar package.json
npm install pacote           # Instalar pacote localmente
npm install -g pacote        # Instalar pacote globalmente
npm run dev                  # Executar script dev
```

### Frameworks
```bash
# Next.js
npx create-next-app@latest nome-do-projeto

# React
npx create-react-app nome-do-projeto

# Vite
npm create vite@latest nome-do-projeto
```

## Git (com aliases configurados)

```bash
gs                           # git status
ga .                         # git add .
gc -m "mensagem"             # git commit
gp                           # git push
gl                           # git pull

# Outros úteis
git branch                   # Listar branches
git checkout -b nova-branch  # Criar nova branch
git merge outra-branch       # Merge de branch
git log --oneline            # Log resumido
```

## Fish Shell

### Navegação
```bash
..                           # cd ..
...                          # cd ../..
ll                           # ls -lah (alias)
```

### Configuração
```bash
# Editar config
vim ~/.config/fish/config.fish

# Recarregar config
source ~/.config/fish/config.fish

# Ver variáveis de ambiente
set

# Definir variável
set -x NOME_VAR valor
```

### Funções
```bash
# Listar funções
functions

# Criar função
function nome_funcao
    echo "Olá"
end
funcsave nome_funcao
```

## Composer

```bash
composer install             # Instalar dependências
composer update              # Atualizar dependências
composer require pacote      # Adicionar pacote
composer remove pacote       # Remover pacote
composer dump-autoload       # Recriar autoload
```

## Sistema / WSL

### Reiniciar WSL (no PowerShell do Windows)
```powershell
wsl --shutdown
wsl --list --verbose
```

### Dentro do WSL
```bash
# Ver uso de recursos
btop                         # Monitor de sistema

# Buscar arquivos
fd nome-do-arquivo           # Buscar arquivos
rg "texto"                   # Buscar texto em arquivos

# Processos
ps aux                       # Listar processos
kill -9 PID                  # Matar processo
```

## Permissões

```bash
chmod +x arquivo.sh          # Tornar executável
chmod 755 arquivo            # Permissões padrão para script
chmod 644 arquivo            # Permissões padrão para arquivo
chown usuario:grupo arquivo  # Mudar dono
```

## Rede

```bash
# Ver portas em uso
sudo ss -tulpn

# Testar conexão
ping google.com
curl https://api.exemplo.com
```

## Dicas

- Use `Ctrl+R` para buscar histórico de comandos
- Use `Ctrl+L` para limpar a tela
- Use `Tab` para autocompletar
- Use `!!` para repetir último comando
- Use `sudo !!` para repetir com sudo