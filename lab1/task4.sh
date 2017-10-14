#!/bin/bash

# Create mysecret file with content
echo "Ovo je tajna koju zelim da samo sui@fer.hr zna." >> mysecret

# Encrypt it with sui@fer.hr public key
gpg --output mysecret.gpg --encrypt --recipient sui@fer.hr mysecret
