# PillScan AI — OCR + Roboflow + Gemini + SATUSEHAT KFA

## Isi paket
- `index.html`, `upload.html`, `camera.html`: antarmuka terbaru dengan panel OCR/KFA.
- `server.js`: API Express untuk Roboflow, Gemini, dan pencarian katalog KFA SATUSEHAT.
- `.env.example`: template konfigurasi tanpa kredensial asli.

## Menjalankan di Windows
1. Ekstrak ZIP ke folder proyek.
2. Buka folder proyek di terminal.
3. Jalankan `npm install`.
4. Salin `.env.example` menjadi `.env`.
5. Isi nilai API/kredensial Anda sendiri pada `.env`. Jangan membagikan file `.env`.
6. Jalankan `npm start`.
7. Buka `http://localhost:3000`.

## Catatan penting
- ZIP ini sengaja tidak menyertakan `.env` atau API key/kredensial.
- Tampilan OCR/KFA menormalkan objek `dosage_form` dan `active_ingredients` agar tidak muncul sebagai `[object Object]`, dan menampilkan zat aktif beserta kekuatannya jika tersedia dari katalog.
- Panel panduan umum Kemenkes hanya ditampilkan jika kandidat KFA menunjukkan parasetamol tunggal 500 mg. Panduan dewasa tersebut bukan resep individual dan tidak ditampilkan untuk obat kombinasi atau produk yang belum cocok.
- KFA SATUSEHAT merupakan katalog produk; hasil KFA tidak otomatis berarti aturan dosis untuk pasien tersedia atau telah diverifikasi.
- Informasi dosis harus cocok dengan varian, kekuatan, bentuk sediaan, usia, kondisi pasien, dan sumber resmi. Jangan memakai hasil OCR atau prediksi AI sebagai satu-satunya dasar pemberian obat.
- Untuk Paramex tablet reguler, halaman resmi Konimex mencantumkan komposisi dan aturan pakai pada halaman produk: https://www.konimex.com/products. Pastikan produk yang terdeteksi benar-benar varian reguler, bukan Paramex SK/Flu & Batuk/Nyeri Otot.
- Dosis anak, dosis personal, serta aturan pakai produk kombinasi tidak ditebak oleh aplikasi. Ikuti label/leaflet produk yang benar dan konsultasikan dengan apoteker/dokter bila ragu.
- Integrasi ini belum menjamin identifikasi merek/varian otomatis dari setiap foto. OCR dapat salah membaca kemasan, dan pengguna harus mengonfirmasi produk yang cocok.
