package 'vim'
# NOTE: Amazon Linux 2023だとパッケージでインストールできない
# package 'peco'

# NOTE: Amazon Linux 2023だとtarが必要
package 'tar'
package 'zsh'
package 'git'
execute "curl -sS https://starship.rs/install.sh | sh -s -- --yes"
execute "mkdir -p ~/.config; cp config/starship.toml ~/.config/starship.toml"
execute "cp config/.zshrc ~/.zshrc"
