#!/bin/bash


Function creer_repertoire() {
    $logs début création de répertoire

    # Demande du nom du répertoire à créer
    read -p "Entrez le nom du répertoire à créer : " nom_repertoire


    $sshtarget "mkdir -p '$nom_repertoire'"

    # Vérification si la création du répertoire a réussi
    if $sshtarget "[ -d '$nom_repertoire' ]"; then
        echo "Répertoire '$nom_repertoire' créé avec succès."
        $logs Répertoire $nom_repertoire créé avec succès.
    else
        echo "Échec de la création du répertoire '$nom_repertoire'."
        $logs Échec lors de la création du répertoire $nom_repertoire
    fi

    $logs Fin création de répertoire
}
