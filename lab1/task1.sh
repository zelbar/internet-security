#!/bin/bash

# Get task
wget http://public.tel.fer.hr/sui/zadatak1.tar.gz
tar xf zadatak1.tar.gz
cd zadatak1

# Import public key to GPG list
gpg --import key.gpg

# Check signature
gpg --decrypt secret.bin
# Result: gpg: Signature made Wed 21 Oct 2015 06:13:56 PM CEST using RSA key ID CA3EDC7D
#         gpg: Good signature from "Internet Security (Key for lab assignments for Internet Security) <sui@fer.hr>"

# Key used to encrypt data.bin is RSA key ID CA3EDC7D
# Primary key fingerprint: 882C 920E E16C AACE E26F  8FFA 38B2 C505 CA3E DC7D

# The passphrase is the first letter from the string
# KOREAN apple XBOX jack nut ROPE EGG ZIP QUEEN jack queen BESTBUY USA MUSIC USA 3
SKYPE nut usa WALMART walmart ZIP 6 EGG 3 5 jack yelp DRIP EGG ZIP yelp 9 LAPTOP
egg 7 7 YELP coffee apple

# which is ===> "KaXjnREZQjqBUMU3SnuWwZ6E35jyDEZy9Le77Yca" saved to passphrase.txt

# Let's decrypt the file and save it to decrypted-data.bin
gpg --passphrase-file passphrase.txt --decrypt data.bin >> decrypted-data.bin

# Checking the sha256 hash sum
sha256sum decrypted-data.bin
# Result: 3059724a4a32088244560552b09bb425db76f71c6143ed0af20ae62b7861ea96 (correct)

# Determining the file type
file decrypted-data.bin
# Result: decrypted-data.bin: ISO Media, MP4 v2 [ISO 14496-14]
# The file is a video from TED talks