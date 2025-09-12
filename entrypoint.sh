#!/bin/bash


# pour pouvoir changer les fichiers pendant le run 
# sans rebuild l image
# on copie dans le rep monté

set -e
if [ ! -f "/var/meteobe/.initialized" ]; then
  echo "Remplacement des fichiers sources..."
  cp -rf /var/meteobe_src/. /var/meteobe
  chown -R 1000:1000 /var/meteobe/*
  touch /var/meteobe/.initialized
else
  echo "Les fichiers sont déjà copiés, pas de remplacement."
fi
exec "$@"