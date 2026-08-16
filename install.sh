#!/usr/bin/env bash

# Script Instalasi Tema GRUB Halo - Ultimate Edition
# ===================================================

if [[ $EUID -ne 0 ]]; then
   echo "Error: Skrip ini harus dijalankan dengan hak akses root (Gunakan 'sudo ./install.sh')"
   exit 1
fi

echo "=========================================="
echo " Memulai Instalasi Tema GRUB Halo - UNSC "
echo "=========================================="
echo ""

THEME_DIR="/boot/grub/themes/halo_theme_ultimate"
GRUB_FILE="/etc/default/grub"

echo "[*] Membuat direktori $THEME_DIR..."
mkdir -p "$THEME_DIR"

echo "[*] Menyalin aset tema..."
cp -r icons background.png theme.txt "$THEME_DIR/"
cp preview.png README.md "$THEME_DIR/" 2>/dev/null || true

echo "[*] Memperbarui konfigurasi $GRUB_FILE..."
cp "$GRUB_FILE" "${GRUB_FILE}.bak"

# 1. Hapus pendaftaran tema sebelumnya
sed -i '/^[[:space:]]*#*[[:space:]]*GRUB_THEME=/d' "$GRUB_FILE"

# 2. BUG FIX: Pastikan GRUB tidak di hidden
sed -i 's/^GRUB_TIMEOUT_STYLE=hidden/GRUB_TIMEOUT_STYLE=menu/' "$GRUB_FILE"

# 3. BUG FIX: Pastikan output tidak dipaksa ke console saja
sed -i 's/^GRUB_TERMINAL_OUTPUT="console"/#GRUB_TERMINAL_OUTPUT="console"/' "$GRUB_FILE"

# 4. Terapkan tema
echo "GRUB_THEME=\"$THEME_DIR/theme.txt\"" >> "$GRUB_FILE"

echo "[*] Menjalankan update-grub (Mohon tunggu)..."
if command -v update-grub &> /dev/null; then
    update-grub
elif command -v grub-mkconfig &> /dev/null; then
    grub-mkconfig -o /boot/grub/grub.cfg
else
    echo "[!] Perintah pembaruan GRUB tidak ditemukan. Jalankan manual."
fi

echo ""
echo "=========================================="
echo " [+] INSTALASI SELESAI! "
echo "=========================================="
