#!/bin/bash

# Generate data for symetric cryption
dd if=/dev/urandom of=/tmp/data bs=10K count=5000

# Testing AES-256-ECB

time openssl enc -aes-256-ecb -in /tmp/data -out /tmp/data.aes.ecb -k sui
# Output
# real    0m0.095s
#user    0m0.032s
#sys     0m0.060s

time openssl enc -d -aes-256-ecb -in /tmp/data.aes.ecb -out /tmp/data.ecb -k sui
# Output 
# real    0m0.125s
# user    0m0.032s
# sys     0m0.072s

# Testing DES-ede3

time openssl enc -des-ede3 -in /tmp/data -out /tmp/data.aes.ecb -k sui
# Output
# real    0m2.507s
# user    0m2.444s
# sys     0m0.060s

time openssl enc -d -des-ede3 -in /tmp/data.aes.ecb -out /tmp/data.ecb -k sui
# Output
# real    0m8.134s
# user    0m2.440s
# sys     0m0.084s

# Testing AES-256-CBC

time openssl enc -aes-256-cbc -in /tmp/data -out /tmp/data.aes.ecb -k sui
# Output
# real    0m0.203s
# user    0m0.144s
# sys     0m0.052s

time openssl enc -d -aes-256-cbc -in /tmp/data.aes.ecb -out /tmp/data.ecb -k sui
# Output
# real    0m6.357s
# user    0m0.040s
# sys     0m0.068s

# Testing DES-ede3-cbc

time openssl enc -des-ede3-cbc -in /tmp/data -out /tmp/data.aes.ecb -k sui
# Output
# real    0m2.445s
# user    0m2.352s
# sys     0m0.092s

time openssl enc -d -des-ede3-cbc -in /tmp/data.aes.ecb -out /tmp/data.ecb -k sui
# Output
# real    0m9.285s
# user    0m2.396s
# sys     0m0.060s

# Testing AES-256-ctr

time openssl enc -aes-256-ctr -in /tmp/data -out /tmp/data.aes.ecb -k sui
# Output
# real    0m0.105s
# user    0m0.048s
# sys     0m0.048s

time openssl enc -d -aes-256-ctr -in /tmp/data.aes.ecb -out /tmp/data.ecb -k sui
# Output
# real    0m0.125s
# user    0m0.044s
# sys     0m0.076s

# Conclusion: 
# AES is always faster than DES. 
# AES is faster at encrypting than at decrypting.
# AES chaining method speeds (decreasingly): ecb, ctr, cbc.
# DES is also faster at encrypting than at decrypting.
# AES is safer than DES. 
# ECB chaining is the least safe method but is therefore the fastest
