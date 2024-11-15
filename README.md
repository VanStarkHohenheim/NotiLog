# NotiLog

Un script simple pour afficher au demarrage les connexions utilisateur sur une machine Debian/Linux.

## Fonctionnalités

- Enregistre les derniers log de votre machine.
- Ajoute automatiquement le suivi dans `~/.bashrc`.

## Installation

1. Clonez le dépôt :

  
     ```bash
     git clone https://github.com/votre-utilisateur/VanHohenheim-Logger.git
     cd NotiLog

     ```

2. Rendez le script exécutable :

      ```bash
      
      chmod +x setup_ssh_list
      
      ```


3. Convertif en format UNIX

      ```bash

      dos2unix setup_ssh_list

      ``` 

4. Exécutez le script :
  
      ```bash
      
      bash setup_ssh_list
      
      ```
      
5. Relancer votre terminal

     ```bash
     
     exec bash

     ```

## Utilisation

Le script ajoute une commande à votre `~/.bashrc` pour enregistrer chaque connexion.
