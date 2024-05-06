#!/bin/bash
echo 'Criando diretório nushell...'
mkdir -p ${HOME}/.config/nushell/

echo 'Configurando nushell...'
echo -e 'mkdir ~/.cache/starship\nstarship init nu | save -f ~/.cache/starship/init.nu\n\nalias cat = batcat --style=auto\nalias ls = exa --icons -la\nalias r = radian' >> ${HOME}/.config/nushell/env.nu
echo -e '$env.config = {show_banner: false}\n\nsource ~/.cache/starship/init.nu' >> ${HOME}/.config/nushell/config.nu

echo 'Configurando starship...'
echo 'eval "$(starship init bash)"' >> ${HOME}/.bashrc
echo 'eval "$(starship init zsh)"' >> ${HOME}/.zshrc
curl -o ${HOME}/.config/starship.toml https://gist.githubusercontent.com/fcsest/f97400d67eca08965e01f68853088301/raw/starship.toml
