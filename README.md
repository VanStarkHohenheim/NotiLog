# NotiLog

Un script simple pour enregistrer les connexions utilisateur sur une machine Debian/Linux.

## Fonctionnalités

- Enregistre les connexions utilisateur dans un fichier `connection.log` situé dans le répertoire personnel.
- Ajoute automatiquement le suivi dans `~/.bashrc`.

## Installation

1. Clonez le dépôt :

  
     ```bash
     git clone https://github.com/votre-utilisateur/VanHohenheim-Logger.git
     cd VanHohenheim-Logger


2. Rendez le script exécutable :

      ```bash
      
      chmod +x logger.sh
      
      ```

3. Exécutez le script :
  
      ```bash
      
      ./logger.sh
      
      ```


## Utilisation

Le script ajoute une commande à votre `~/.bashrc` pour enregistrer chaque connexion. Les informations sont sauvegardées dans `~/connection.log`
