#!/bin/bash

# Affichage du titre en ASCII
echo "

 ▄▄▄      ▓█████   ▄████  ▒█████   ███▄    █ 
▒████▄    ▓█   ▀  ██▒ ▀█▒▒██▒  ██▒ ██ ▀█   █ 
▒██  ▀█▄  ▒███   ▒██░▄▄▄░▒██░  ██▒▓██  ▀█ ██▒
░██▄▄▄▄██ ▒▓█  ▄ ░▓█  ██▓▒██   ██░▓██▒  ▐▌██▒
 ▓█   ▓██▒░▒████▒░▒▓███▀▒░ ████▓▒░▒██░   ▓██░
 ▒▒   ▓▒█░░░ ▒░ ░ ░▒   ▒ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ 
  ▒   ▒▒ ░ ░ ░  ░  ░   ░   ░ ▒ ▒░ ░ ░░   ░ ▒░
  ░   ▒      ░   ░ ░   ░ ░ ░ ░ ▒     ░   ░ ░ 
      ░  ░   ░  ░      ░     ░ ░           ░ 
                                             

"
echo "Bienvenue dans votre NotiLog"
echo "-----------------------------------------"
sleep 1

# Chemin du fichier de log
LOG_FILE="$HOME/connection.log"

# Vérifie si le fichier existe déjà
if [ -f "$LOG_FILE" ]; then
  echo "Fichier de log déjà présent : $LOG_FILE"
else
  echo "Création du fichier de log : $LOG_FILE"
  touch "$LOG_FILE"
fi

# Ajout de la ligne d'enregistrement des connexions dans ~/.bashrc
if ! grep -q "who am i" "$HOME/.bashrc"; then
  echo "Ajout de l'enregistrement des connexions à ~/.bashrc"
  echo 'echo "Connexion depuis $(who am i | awk \047{print $5}\047) à $(date)" >> ~/connection.log' >> "$HOME/.bashrc"
else
  echo "L'enregistrement des connexions est déjà configuré."
fi

echo "Installation terminée. Veuil	lez ouvrir une nouvelle session pour tester."
