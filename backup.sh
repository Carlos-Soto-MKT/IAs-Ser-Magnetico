#!/bin/bash

DATA=$(date +%Y-%m-%d)

cd ~/backup-ser-magnetico

git clone https://github.com/seuusuario/ias-ser-magnetico backup-$DATA

zip -r backup-$DATA.zip backup-$DATA

rm -rf backup-$DATA
