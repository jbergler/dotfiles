#!/bin/sh

if [ "$(uname -s)" == "Darwin" ]; then
  brew install zsh
  sudo bash -c 'echo "/opt/homebrew/bin/zsh" >> /etc/shells'
  sudo chsh -s /opt/homebrew/bin/zsh $USER
fi

