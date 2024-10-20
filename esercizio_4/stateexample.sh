#!/bin/bash

# percorso del file
FILE_PATH="/var/stateexample/state.txt"

# controllo se il file esiste e ne stampo il contenuto
if [ -f "$FILE_PATH" ]
then
    cat "$FILE_PATH"
else
    echo "il file $FILE_PATH non esiste"
fi

# chiedo all'utente di inserire un messaggio
echo -n "enter a message: "
read user_input

# scrivo il messaggio nel file
echo "$user_input" > "$FILE_PATH"

# stampo il contenuto del file aggiornato
echo "il contenuto del file è ora:"
cat "$FILE_PATH"
