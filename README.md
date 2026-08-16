# UNSC Cortana GRUB2 Theme (Horizontal Card Layout)

Tema GRUB2 kustom bertema teknologi militer **UNSC** dan hologram **Cortana** (*Halo*), dioptimalkan untuk **Ubuntu 26.04** dengan tata letak pilihan sistem operasi mendatar secara **horizontal (side-by-side cards)**.

## Preview Tampilan Horizontal
![Preview Tema Horizontal](./preview.png)

## Fitur Utama
- **Horizontal Card Layout:** Kartu pemilihan sistem operasi disusun berdampingan secara horizontal (`orient = "horizontal"`).
- **Estetika Hologram UNSC:** Aksen warna biru terang dan latar belakang konsol militer masa depan.
- **Ubuntu 26.04 Ready:** Mendukung resolusi tinggi dan framebuffer modern.

---

## Cara Pemasangan (Installation Guide)

1. **Salin Folder Tema**
   Pindahkan folder tema ini ke direktori GRUB di sistem Linux Anda:
   ```bash
   sudo cp -r unsc_cortana_horizontal /boot/grub/themes/
   ```

2. **Generate File Font `.pf2`**
   ```bash
   sudo grub-mkfont -o /boot/grub/themes/unsc_cortana_horizontal/UnscFont.pf2 /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf --size=16
   ```

3. **Konfigurasi File `/etc/default/grub`**
   ```bash
   sudo nano /etc/default/grub
   ```
   Tambahkan baris berikut:
   ```bash
   GRUB_GFXMODE=1920x1080,auto
   GRUB_GFXPAYLOAD_LINUX=keep
   GRUB_TIMEOUT_STYLE="menu"
   GRUB_TIMEOUT="10"
   GRUB_THEME="/boot/grub/themes/unsc_cortana_horizontal/theme.txt"
   ```

4. **Perbarui GRUB**
   ```bash
   sudo update-grub
   ```
