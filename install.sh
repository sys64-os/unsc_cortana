#!/usr/bin/env bash

# Script Instalasi Tema GRUB Halo untuk Ubuntu 26.04
# ===================================================

# Pastikan script dijalankan sebagai root (sudo)
if [[ $EUID -ne 0 ]]; then
   echo "Error: Skrip ini harus dijalankan dengan hak akses root (Gunakan 'sudo ./install.sh')"
   exit 1
fi

echo "=========================================="
echo " Memulai Instalasi Tema GRUB Halo - UNSC "
echo " Target OS: Ubuntu 26.04"
echo "=========================================="
echo ""

THEME_DIR="/boot/grub/themes/halo_theme"
GRUB_DEFAULT_FILE="/etc/default/grub"

# 1. Membuat direktori tema
echo "[*] Membuat direktori $THEME_DIR..."
mkdir -p "$THEME_DIR"

# 2. Menyalin file ke direktori tema
echo "[*] Menyalin aset tema..."
cp -r ./* "$THEME_DIR/"
# Hapus script install ini dari direktori boot agar bersih
rm -f "$THEME_DIR/install.sh"
rm -f "$THEME_DIR/halo_grub_theme_ubuntu.zip"

# 3. Mengatur file /etc/default/grub
echo "[*] Memperbarui konfigurasi $GRUB_DEFAULT_FILE..."

# Backup file konfigurasi asli
cp "$GRUB_DEFAULT_FILE" "$GRUB_DEFAULT_FILE.bak"

# Hapus baris GRUB_THEME yang sudah ada (jika ada)
sed -i '/^GRUB_THEME=/d' "$GRUB_DEFAULT_FILE"

# Tambahkan konfigurasi tema yang baru
echo "GRUB_THEME=\"$THEME_DIR/theme.txt\"" >> "$GRUB_DEFAULT_FILE"

# 4. Memperbarui GRUB
echo "[*] Menjalankan update-grub (Mohon tunggu)..."
update-grub

echo ""
echo "=========================================="
echo " [+] INSTALASI SELESAI! "
echo " Tema Master Chief & Cortana telah diterapkan."
echo " Silakan restart PC/Laptop Anda."
echo "=========================================="
