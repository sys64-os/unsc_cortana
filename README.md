# Halo GRUB2 Theme - UNSC HUD Edition (White Icons & Fixed Installer)

Tema GRUB2 bernuansa sci-fi HUD dengan dukungan ikon putih (OS Cards & Tools).

## Perbaikan (Debug) pada rilis ini:
* **Penyalinan Aset yang Bersih:** Installer kini hanya menyalin file `icons`, `background.png`, dan `theme.txt` ke dalam `/boot/grub/themes`, mencegah masuknya file sampah seperti script atau `.zip`.
* **Keamanan Pengeditan Konfigurasi:** Perintah *regex* (sed) pada `install.sh` kini lebih aman dan cerdas dalam menghapus atau menimpa baris `GRUB_THEME` yang dikomentari (`#`) maupun yang mengandung spasi tidak wajar.
* **Dukungan Lintas-Distro (Cross-Compatibility):** Pemasang kini bisa berjalan pada Arch Linux atau distribusi lain dengan otomatis menggunakan `grub-mkconfig -o /boot/grub/grub.cfg` jika `update-grub` (khas Debian/Ubuntu) tidak ditemukan.

## Cara Instalasi
1. Ekstrak `.zip`.
2. Buka terminal di folder ekstraksi, ketik: `chmod +x install.sh`
3. Ketik: `sudo ./install.sh`
4. Restart PC.
