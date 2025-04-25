#!/bin/bash
# Create proper certificates in ./cert directory
mkdir -p cert
cd cert
openssl genrsa -out free5gc.key 2048
openssl req -new -x509 -key free5gc.key -out free5gc.pem -subj "/CN=free5gc.org/O=Free5GC/C=TW" -days 3650
# Create links for each NF
for nf in amf smf upf nrf ausf nssf pcf udm udr n3iwf chf nef; do
  cp  free5gc.key $nf.key
  cp  free5gc.pem $nf.pem
done