#!/bin/bash

check_updates() {
    # Vérification des mises à jour pacman sans synchronisation
    pacman_updates=$(pacman -Qu 2>/dev/null | wc -l)

    # Vérification des mises à jour AUR
    aur_updates=$(paru -Qua 2>/dev/null | wc -l)

    # Calcul du total des mises à jour
    total_updates=$((pacman_updates + aur_updates))

    # Affichage du résultat
    if [ $total_updates -gt 0 ]; then
      echo " $total_updates"
    else
      echo " "
    fi
}

check_updates

