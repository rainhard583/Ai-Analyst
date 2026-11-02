# Integrasi Gemini untuk PillScan AI

## Fitur
- YOLO11n/Roboflow tetap menjadi model deteksi kondisi fisik.
- Pada halaman `upload.html`, setelah deteksi YOLO, klik **Analisis dengan Gemini**.
- Gemini menerima foto dan label prediksi YOLO, lalu memberi perkiraan identitas obat, kondisi visual, dan informasi dosis yang terbatas pada informasi yang bisa diverifikasi.
- API key Gemini hanya disimpan di backend `.env`, bukan di browser.

## Menjalankan di Windows
1. Install Node.js LTS jika belum ada.
2. Ekstrak ZIP proyek.
3. Buka terminal/PowerShell di folder `pillscan-ai-main`.
4. Jalankan `npm install`.
5. Salin `.env.example` menjadi `.env`.
6. Isi `GEMINI_API_KEY` dengan API key dari Google AI Studio. Jangan bagikan file `.env`.
7. Jalankan `npm start`.
8. Buka `http://localhost:3000/upload.html` melalui browser. Jangan membuka HTML dengan `file://` karena endpoint backend membutuhkan server.

## Catatan model
Model default di `.env` adalah `gemini-3.8-flash`. Jika model tidak tersedia untuk akun/API key Anda, ganti `GEMINI_MODEL` dengan model multimodal yang tersedia pada Google AI Studio/API account Anda.

## Batasan medis penting
Foto pil saja tidak cukup untuk memastikan identitas dan dosis secara aman. Gemini bisa salah membaca merek, zat aktif, atau kekuatan. Untuk informasi dosis, gunakan kemasan/leaflet resmi yang terbaca dan konfirmasi ke apoteker/dokter; aplikasi tidak boleh memberikan dosis personal berdasarkan bentuk/warna pil. Obat yang tampak patah/rusak jangan digunakan sebelum dikonfirmasi oleh apoteker/produsen.

## Keamanan
Versi awal proyek berisi kredensial Roboflow di kode frontend. Karena kredensial browser dapat dilihat pengguna, rotasi/revoke key lama di Roboflow dan gunakan key baru dengan pembatasan yang sesuai. Integrasi Gemini ini tidak memindahkan kredensial Roboflow ke backend.
