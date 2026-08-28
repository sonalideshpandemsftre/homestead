#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

link() {
  local src="$1" dst="$2"
# not proud of this part
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    mv "$dst" "$dst.bak.$(date +%s)"
    echo "backed up $dst"
  fi
  ln -sfn "$PWD/$src" "$dst"
  echo "linked $dst -> $src"
}

link .bashrc ~/.bashrc
link .vimrc ~/.vimrc
mkdir -p ~/.vim/undo
echo "done. restart your shell."
