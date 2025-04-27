#!/bin/bash
# test-internet.sh
# À exécuter dans le conteneur UE après établissement de la connexion

echo "Testing Internet connectivity..."
ping -c 4 8.8.8.8
echo "Testing DNS resolution..."
nslookup google.com
echo "Testing HTTP connection..."
curl -I http://www.google.com