#!/bin/sh

if [ "$(uname -s)" == "Darwin" ]; then
  sudo bash -c 'echo "/opt/homebrew/bin/zsh" >> /etc/shells'
  sudo chsh -s /opt/homebrew/bin/zsh $USER
fi

