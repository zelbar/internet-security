#!/bin/bash

openssl speed rsa

#                  sign    verify    sign/s verify/s  |  ratio (v/s)
# rsa  512 bits 0.000160s 0.000015s   6265.5  66369.9 |  10.59
# rsa 1024 bits 0.000883s 0.000048s   1132.5  20649.5 |  18.23
# rsa 2048 bits 0.005871s 0.000203s    170.3   4923.5 |  28.91
# rsa 4096 bits 0.044578s 0.000708s     22.4   1411.5 |  63.01

# Signing is slower than verifying

openssl speed ecdsa

#                              sign    verify    sign/s verify/s  | ratio (s/v)
# 160 bit ecdsa (secp160r1)   0.0001s   0.0005s   7856.0   2054.6 | 3.82
# 192 bit ecdsa (nistp192)   0.0002s   0.0006s   6180.0   1592.8  | 3.88
# 224 bit ecdsa (nistp224)   0.0002s   0.0008s   4866.5   1187.6  | 4.10
# 256 bit ecdsa (nistp256)   0.0003s   0.0011s   3929.0    898.7  | 4.37
# 384 bit ecdsa (nistp384)   0.0005s   0.0026s   1831.1    385.3  | 4.76

# Signing is faster than verifying