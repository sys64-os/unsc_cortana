UNSC Cortana GRUB2 Theme
========================

Cara Pemasangan:
1. Salin folder 'unsc_cortana' ke direktori /boot/grub/themes/ di sistem Linux Anda:
   sudo cp -r unsc_cortana /boot/grub/themes/

2. Untuk membuat file font.pf2 yang valid (karena format .pf2 adalah biner khusus GRUB), 
   jalankan perintah berikut di terminal Linux Anda menggunakan font sistem berformat .ttf:
   grub-mkfont -o /boot/grub/themes/unsc_cortana/font.pf2 /usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf --size=16

3. Edit file konfigurasi GRUB:
   sudo nano /etc/default/grub
   Tambahkan baris berikut:
   GRUB_THEME="/boot/grub/themes/unsc_cortana/theme.txt"
   GRUB_TIMEOUT_STYLE="menu"

4. Perbarui GRUB:
   sudo update-grub  (atau sudo grub-mkconfig -o /boot/grub/grub.cfg)
