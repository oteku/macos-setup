#!/bin/sh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update

brew cask install alfred
brew cask install balenaetcher
brew cask install dash
brew cask install discord
brew cask install docker
brew cask install dotnet-sdk
brew cask install firefox
brew cask install gimp
brew cask install google-chrome
brew cask install iterm2
brew cask install keka
brew cask install microsoft-edge
brew cask install pencil
brew cask install pgadmin4
brew cask install postgres
brew cask install postman
brew cask install slack
brew cask install spotify
brew cask install visual-studio-code
brew cask install vlc

brew install asdf
brew install balena-cli
brew install coreutils
brew install git 
brew install gpatch
brew install gpg
brew install jq
brew install opam
brew install redis
brew install rustup-init
brew install sox
brew install starship
brew install zola

echo 'eval "$(starship init zsh)"' >>  ~/.zshrc
mkdir -p ~/.config && touch ~/.config/starship.toml
echo 'add_newline = false\n\n[character]\nsymbol = "➜"\n[git_branch]\nsymbol = "🌱 "\n' >>  ~/.config/starship.toml

echo ". $(brew --prefix asdf)/asdf.sh" >> ~/.zshrc

asdf update

asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add python https://github.com/danhper/asdf-python.git

bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs 12.18.0

asdf install java latest
asdf install ruby 2.4.5
asdf install python 3.6.2
asdf install python 2.7.13

asdf global java latest
. ~/.asdf/plugins/java/set-java-home.zsh
asdf global nodejs 12.18.0
asdf global ruby 2.4.5
asdf global python 3.6.2 2.7.13
echo "nodejs 12.18.0\n" >> $HOME/.tool-versions
echo "ruby 2.4.5\n" >> $HOME/.tool-versions
echo "python 3.6.\n" >> $HOME/.tool-versions

npm i -g npm

opam init
opam switch create 4.10.0
