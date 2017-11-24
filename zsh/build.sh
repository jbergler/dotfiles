#!/bin/bash

CO=~/co/zsh
PREFIX=~/local

git clone https://anonscm.debian.org/git/collab-maint/zsh.git $CO
cd $CO
./Util/preconfig
./configure --prefix=$PREFIX
make install
