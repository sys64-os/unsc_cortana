#!/usr/bin/env bash

# Script Instalasi Tema GRUB Halo - Debugged Version
# ===================================================

# Pastikan script dijalankan sebagai root (sudo)
if [[ $EUID -ne 0 ]]; then
   echo "Error: Skrip ini harus dijalankan dengan hak akses root (Gunakan 'sudo ./install.sh')"
   exit 1
fi

echo "=========================================="
echo " Memulai Instalasi Tema GRUB Halo - UNSC "
echo " Target: Universal Linux (Ubuntu/Arch/BSD)"
echo "=========================================="
echo ""

THEME_DIR="/boot/grub/themes/halo_theme_white"
GRUB_FILE="/etc/default/grub"

# 1. Membuat direktori tema
echo "[*] Membuat direktori $THEME_DIR..."
mkdir -p "$THEME_DIR"

# 2. Menyalin aset tema secara spesifik
echo "[*] Menyalin aset tema..."
# Hanya copy file yang relevan agar script/zip tidak ikut tercopy ke /boot
cp -r icons background.png theme.txt "$THEME_DIR/"
cp preview.png README.md "$THEME_DIR/" 2>/dev/null || true

# 3. Mengatur file /etc/default/grub
echo "[*] Memperbarui konfigurasi $GRUB_FILE..."

# Backup file konfigurasi asli
cp "$GRUB_FILE" "${GRUB_FILE}.bak"

# PERBAIKAN BUG: Hapus baris GRUB_THEME yang sudah ada secara lebih presisi
# (Menangani spasi ekstra atau komentar # di awal baris)
sed -i '/^[[:space:]]*#*[[:space:]]*GRUB_THEME=/d' "$GRUB_FILE"

# Tambahkan konfigurasi tema yang baru
echo "GRUB_THEME=\"$THEME_DIR/theme.txt\"" >> "$GRUB_FILE"

# 4. Memperbarui GRUB
echo "[*] Menjalankan update-grub (Mohon tunggu)..."

# PERBAIKAN BUG: Menangani distribusi selain Debian/Ubuntu (seperti Arch Linux)
if command -v update-grub &> /dev/null; then
    update-grub
elif command -v grub-mkconfig &> /dev/null; then
    # Standard GRUB update untuk Arch/Fedora/dll
    grub-mkconfig -o /boot/grub/grub.cfg
else
    echo "[!] Peringatan: Perintah pembaruan GRUB tidak ditemukan."
    echo "[!] Silakan jalankan update GRUB secara manual untuk distro Anda."
fi

echo ""
echo "=========================================="
echo " [+] INSTALASI SELESAI! "
echo " Tema Master Chief & Cortana telah diterapkan."
echo " Silakan restart PC/Laptop Anda."
echo "=========================================="
