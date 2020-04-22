#!/bin/sh

if [ "$(uname -s)" == "Darwin" ]; then
  sudo bash -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
  sudo chsh -s /usr/local/bin/zsh $USER
fi

