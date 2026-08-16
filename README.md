# UNSC Cortana GRUB2 Theme

Tema GRUB2 kustom dengan estetika antarmuka teknologi militer **UNSC** dan hologram **Cortana** dari semesta *Halo*, dioptimalkan khusus untuk **Ubuntu 26.04**.

## Preview Tampilan
![Preview Tema GRUB2](./preview.png)

## Fitur Utama
- **Card-Style OS Selection:** Tata letak menu boot dirancang per item di dalam kartu/panel terpisah agar pemilihan sistem operasi terlihat rapi dan futuristik.
- **Palet Warna Hologram:** Didominasi warna biru khas sistem holografik AI Cortana (`#8ab4f8` dan `#00b4d8`) di atas latar belakang gelap militer.
- **Ubuntu 26.04 Optimized:** Kompatibel penuh dengan resolusi layar tinggi dan konfigurasi framebuffer modern.

---

## Cara Pemasangan (Installation Guide)

1. **Salin Folder Tema**
   Pindahkan folder tema ini ke direktori GRUB di sistem Linux Anda:
   ```bash
   sudo cp -r unsc_cortana_cards /boot/grub/themes/
   ```

2. **Generate File Font `.pf2`**
   GRUB memerlukan format font khusus `.pf2`. Buat file font dari font sistem Anda (misalnya DejaVuSans-Bold atau font truetype lainnya) menggunakan perintah:
   ```bash
   sudo grub-mkfont -o /boot/grub/themes/unsc_cortana_cards/UnscFont.pf2 /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf --size=16
   ```

3. **Konfigurasi File `/etc/default/grub`**
   Buka file konfigurasi GRUB menggunakan editor teks:
   ```bash
   sudo nano /etc/default/grub
   ```
   Tambahkan atau sesuaikan baris berikut:
   ```bash
   GRUB_GFXMODE=1920x1080,auto
   GRUB_GFXPAYLOAD_LINUX=keep
   GRUB_TIMEOUT_STYLE="menu"
   GRUB_TIMEOUT="10"
   GRUB_THEME="/boot/grub/themes/unsc_cortana_cards/theme.txt"
   ```

4. **Perbarui GRUB**
   Terapkan perubahan pada sistem Anda:
   ```bash
   sudo update-grub
   ```
