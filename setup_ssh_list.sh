#!/bin/bash

BASHRC="$HOME/.bashrc"

# Vérifie si le fichier .bashrc existe
if [ ! -f "$BASHRC" ]; then
    echo "Fichier $BASHRC introuvable. Création d'un nouveau fichier."
    touch "$BASHRC"
fi

# Ajoute la commande dans le .bashrc si elle n'existe pas déjà
if ! grep -q "SSH connections log" "$BASHRC"; then
    echo "# SSH connections log of the last 24 hours at terminal startup" >> "$BASHRC"
    echo "echo \"Recent SSH connections (last 24h):\"" >> "$BASHRC"
    echo "sudo tail /var/log/lastlog | grep -E \"$(date +%b\\ \\ %e)\" | awk '{print \$1, \$2, \$3, \$9, \$11}'" >> "$BASHRC"
    echo "echo \"------------------------------------\"" >> "$BASHRC"
    echo "echo \"Done.\"" >> "$BASHRC"
    echo "Configuration ajoutée au fichier $BASHRC. Redémarrez votre terminal pour appliquer les changements."
else
    echo "Le fichier $BASHRC est déjà configuré pour afficher les logs SSH."
fi
