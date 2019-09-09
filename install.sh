#!/bin/sh

thunderbird/install-thunderbird.sh

dot_list="bashrc config emacs gitconfig gitignore jnewsrc mozilla msmtprc muttrc signature slrnrc ssh thunderbird vim vimrc Xdefaults"

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done
