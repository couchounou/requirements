#!/bin/bash


# pour pouvoir changer les fichiers pendant le run 
# sans rebuild l imageles fichiers sources sont copiés au démarrage depuis le git
echo "entrypoint_worker.sh: La plupart des fichiers est déjà copiée depuis le git. plus besoin de le faire ici sauf si besoin de voir des ressource au RUN TIME"

exec "$@"