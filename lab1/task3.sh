#!/bin/bash

gpg gen-key

# choosing RSA and RSA, 2048, 365 (1 year)
# Name: Željko Baranek
# Email: zeljko.baranek@fer.hr
# Comment: 0036477150
# Passphrase: (...)

# Crete the data.txt file with contents
echo "Željko Baranek 0036477150" >> data.txt

# Sign the data.txt file
gpg --sign data.txt

# Export the public key
gpg --armor --export zeljko.baranek@fer.hr >> public_key.txt

