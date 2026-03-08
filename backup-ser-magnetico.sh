#!/bin/bash

# ============================================
# BACKUP AUTOMÁTICO — IA SER MAGNÉTICO
# ============================================

DATA=$(date +"%Y-%m-%d_%H-%M")
PROJETO="base-ias-ser-magnetico"

# Diretórios
DIR_TEMP="$HOME/tmp-backup-$PROJETO"
DIR_BACKUP="$HOME/backups-$PROJETO"

# Repositório GitHub
REPO="https://github.com/Carlos-Soto-MKT/IAs-Ser-Magnetico.git"

echo "Iniciando backup..."

# Criar diretório de backup se não existir
mkdir -p "$DIR_BACKUP"

# Limpar diretório temporário
rm -rf "$DIR_TEMP"

# Clonar repositório
git clone "$REPO" "$DIR_TEMP"

# Criar ZIP
ZIP="$DIR_BACKUP/${PROJETO}_backup_$DATA.zip"

zip -r "$ZIP" "$DIR_TEMP" > /dev/null

# Remover pasta temporária
rm -rf "$DIR_TEMP"

echo "Backup concluído:"
echo "$ZIP"
