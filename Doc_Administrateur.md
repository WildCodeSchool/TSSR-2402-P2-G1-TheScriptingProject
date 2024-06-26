# Documentation Administrateur - Projet 2

## Prérequis Techniques


- **Serveur Windows :**
  - Système d'exploitation : Windows Server 2022
  - PowerShell Core version 7.4 installé

- **Serveur Debian :**
  - Système d'exploitation : Debian 12
  - Accès en tant que root

- **Machines distantes :**
  - Machines Windows 10
  - Machines Ubuntu 22.04 LTS

## Étapes d'Installation et de Configuration
### Sur le Serveur Debian :

1. Connectez-vous en tant que root sur le serveur Debian.
2. Téléchargez et installez les modules SSH sur le serveur Debian et Ubuntu en exécutant la commande suivante :
   
   ```bash
   sudo apt-get install openssh-server
   ```
3. Générez une paire de clés SSH sur le serveur Debian en exécutant la commande suivante :
```bash
ssh-keygen
```
Suivez les instructions à l'écran pour configurer les paramètres de la clé SSH.

4. Copiez la clé publique générée vers le serveur Ubuntu en utilisant la commande ssh-copy-id. Assurez-vous de remplacer user par le nom d'utilisateur approprié sur le serveur Ubuntu et server par l'adresse IP ou le nom d'hôte du serveur Ubuntu :
```bash
ssh-copy-id user@server
```
Vous serez invité à saisir le mot de passe de l'utilisateur sur le serveur Ubuntu pour finaliser la copie de la clé SSH.

Une fois la clé copiée avec succès, vous devriez pouvoir vous connecter au serveur Ubuntu depuis le serveur Debian sans être invité à saisir un mot de passe.

### Sur le Serveur Windows :
## Étapes d'Installation et de Configuration

### Sur le Serveur Windows :

1. Assurez-vous que le service WinRM (Windows Remote Management) est activé et en cours d'exécution :
   - Si nécessaire, ouvrez PowerShell en tant qu'administrateur.
   - Exécutez la commande suivante pour démarrer le service WinRM :
     ```powershell
     Start-Service WinRM
     ```

2. Configurez WinRM pour permettre l'accès à distance :
   - Exécutez la commande suivante pour configurer WinRM pour les accès à distance :
     ```powershell
     Enable-PSRemoting -Force
     ```

3. Configurez les règles du pare-feu pour autoriser le trafic WinRM :
   - Si le pare-feu Windows est activé, vous devez ajouter une règle pour autoriser le trafic sur le port utilisé par WinRM (par défaut, le port est 5985 pour HTTP et 5986 pour HTTPS).
   - Exécutez la commande suivante pour autoriser le trafic WinRM dans le pare-feu Windows :
     ```powershell
     New-NetFirewallRule -Name "WinRM-HTTP" -DisplayName "Windows Remote Management (HTTP-In)" -Enabled True -Direction Inbound -Protocol TCP -LocalPort 5985
     ```

### Sur le Client Windows :

1. Assurez-vous que le service WinRM est activé et en cours d'exécution :
   - Si nécessaire, ouvrez PowerShell en tant qu'administrateur.
   - Exécutez la commande suivante pour démarrer le service WinRM :
     ```powershell
     Start-Service WinRM
     ```

2. Configurez les paramètres de l'hôte distant pour permettre la connexion à distance :
   - Exécutez la commande suivante pour configurer les paramètres de l'hôte distant :
     ```powershell
     Set-Item WSMan:\localhost\Client\TrustedHosts -Value "NomDuServeur" -Force
     ```
     Remplacez `"NomDuServeur"` par le nom ou l'adresse IP du serveur Windows auquel vous souhaitez vous connecter.

3. Une fois la configuration terminée, vous devriez pouvoir vous connecter au serveur Windows depuis le client Windows en utilisant PowerShell sans être invité à saisir un mot de passe.



