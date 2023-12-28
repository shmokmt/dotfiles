package 'vim'
package 'peco'
package 'zsh'
package 'git'
execute "curl -sS https://starship.rs/install.sh | sh -s -- --yes"
execute "mkdir -p ~/.config; cp config/starship.toml ~/.config/starship.toml"
execute "cp config/.zshrc ~/.zshrc"
