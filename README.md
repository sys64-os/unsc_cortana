# Halo GRUB2 Theme - UNSC HUD Edition

Tema GRUB2 bernuansa sci-fi HUD yang terinspirasi dari antarmuka UNSC (Master Chief & Cortana) di Halo. Dibuat dan diuji secara khusus untuk **Ubuntu 26.04**.

## Preview
![Preview Visual Tema Halo GRUB2](preview.png)

## Fitur
* **Latar Belakang UNSC HUD:** Desain terminal hijau gelap bergaya Halo.
* **OS Selection "Cards":** Tampilan simulasi kartu untuk OS Windows dan Linux (Ubuntu).
* **Icon Tools Kustom:** Ikon utilitas bulat di baris simulasi kedua (Reboot, Shutdown, UEFI, Memtest, Recovery).

## Cara Instalasi (Otomatis) di Ubuntu 26.04

Kami telah menyediakan script `install.sh` untuk memudahkan proses pemasangan tema ini di Ubuntu Anda.

1. Ekstrak file `.zip` ini ke sebuah folder.
2. Buka terminal (`Ctrl+Alt+T`) dan navigasikan ke dalam folder hasil ekstraksi.
3. Berikan izin eksekusi pada skrip installer dengan perintah:
   ```bash
   chmod +x install.sh
   ```
4. Jalankan skrip instalasi dengan hak akses root:
   ```bash
   sudo ./install.sh
   ```
5. Tunggu proses instalasi dan pembaruan GRUB selesai. Setelah itu, *restart* PC Anda!

## Cara Instalasi (Manual)
1. Pindahkan seluruh isi folder ini ke `/boot/grub/themes/halo_theme` (gunakan `sudo`).
2. Buka file konfigurasi GRUB: `sudo nano /etc/default/grub`
3. Tambahkan baris: `GRUB_THEME="/boot/grub/themes/halo_theme/theme.txt"`
4. Perbarui GRUB: `sudo update-grub`

*Peringatan Layout:*
GRUB2 secara default merender daftar menu dalam satu kolom vertikal. Desain kartu dan baris-kedua pada tema ini memanfaatkan manipulasi ruang dan bentuk ikon. Untuk pengalaman *grid* yang sesungguhnya, kami menyarankan penggunaan rEFInd Boot Manager.
