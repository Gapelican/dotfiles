#!/bin/bash

echo "🐘 Instalando PHP via Laravel installer..."
/bin/bash -c "$(curl -fsSL https://php.new/install/linux/8.4)"

echo "🎼 Instalando Composer..."
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --quiet
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

echo "🎵 Instalando Laravel installer globalmente..."
composer global require laravel/installer

echo "🔧 Adicionando Composer ao PATH..."
mkdir -p ~/.config/fish
echo 'set -gx PATH $PATH ~/.config/composer/vendor/bin' >> ~/.config/fish/config.fish

echo "✅ PHP e Laravel prontos!"
echo ""
php --version
composer --version
laravel --version