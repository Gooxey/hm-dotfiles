#!/usr/bin/env bash

echo "This script will override the file at ~/.config/nix/nix.conf."
echo "If a file was existing there it will be moved to ~/.config/nix/nix.conf.old"
echo
echo "Are you sure you want to continue? (y/n)"

while true; do
    read -sn 1 tmp

    case $tmp in
    "y" | "Y")
        break ;;
    "n" | "N")
        exit 0 ;;
    esac
done

echo

echo "> Ensuring the nix config directory exists"
mkdir -p ~/.config/nix

tmp=~/.config/nix/nix.conf

if [ -f $tmp ]; then
    echo "> The file $tmp already existed. Moving it to ${tmp}.old"
    mv $tmp "${tmp}.old"
fi

echo "> Writing config file at $tmp"
echo "extra-experimental-features = nix-command flakes" > $tmp
