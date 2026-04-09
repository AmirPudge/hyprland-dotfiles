#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v stow &>/dev/null; then
    echo "stow not found. Install it: sudo pacman -S stow"
    exit 1
fi

cd "$DOTFILES_DIR"

for pkg in */; do
    echo "Stowing ${pkg%/}..."
    stow --target="$HOME" --restow "${pkg%/}"
done

echo "Done."
