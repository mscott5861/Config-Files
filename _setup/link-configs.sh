#!/bin/sh

main() {
  ROOT_DIRECTORY=$PWD

  for ACTIVE_DIRECTORY in `find "$PWD" -mindepth 1 -maxdepth 1 -type d -not -path '*/\.*' -not -path '*vim*' -not -path '*tmux*' -not -path '*mysql*'`
  do
    #-----------------------------------------------------------------------------------------------------------------
    # Most config files will live in the $HOME/.config directory, except for files like .vimrc, .tmux.conf,
    # etc. Need to keep a list of those and handle them separately.
    #-----------------------------------------------------------------------------------------------------------------
    linkConfigDirectories "$ACTIVE_DIRECTORY"
  done

  linkHomeDirectories "$ROOT_DIRECTORY"
}

linkConfigDirectories() {
  cd $1
  dirname=`basename $1`
  mkdir -p "$HOME/.config/$dirname"
  
  for FILE in `find "$PWD" -maxdepth 1 -type f`
  do
    echo "Creating symlink for $FILE..."
    ln -sf $FILE "$HOME/.config/$dirname"
  done
}

linkHomeDirectories() {
  ln -sf "$1/vim/.vimrc" "$HOME/.vimrc"
}

main
