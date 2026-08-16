UNSC Cortana GRUB2 Theme - Card OS Selection Edition (Ubuntu 26.04)
=====================================================================

Fitur:
- Tata letak menu boot dirancang per item (card-style layout) agar pilihan sistem operasi tampil terpisah secara rapi dan elegan.
- Dioptimalkan untuk Ubuntu 26.04 dengan palet warna biru holografik UNSC.

Cara Pemasangan:
1. Pindahkan folder 'unsc_cortana_cards' ke direktori tema GRUB Anda:
   sudo cp -r unsc_cortana_cards /boot/grub/themes/

2. Buat file font .pf2 yang valid di dalam folder tersebut menggunakan font truetype Anda:
   sudo grub-mkfont -o /boot/grub/themes/unsc_cortana_cards/UnscFont.pf2 /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf --size=16

3. Konfigurasikan /etc/default/grub:
   GRUB_GFXMODE=1920x1080,auto
   GRUB_GFXPAYLOAD_LINUX=keep
   GRUB_TIMEOUT_STYLE="menu"
   GRUB_THEME="/boot/grub/themes/unsc_cortana_cards/theme.txt"

4. Perbarui konfigurasi GRUB:
   sudo update-grub
