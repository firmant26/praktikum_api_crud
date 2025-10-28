# PRAKTIKUM API CRUD

NAMA  : MOCH FIRMAN TRISWANDA
NIM   : 362458302013
KELAS : 2B TRPL

## TUGAS

**- Tujuan Praktikum.**
  - Mampu memahami cara aplikasi Flutter berinteraksi dengan API dengan menggunakan HTTP request
  - Mampu menjalankan operasi CRUD (membuat, membaca, mengubah, dan menghapus) menggunakan paket http.
  - Mampu menampilkan data API ke tampilan Flutter menggunakan JSON.
  - Dengan menggunakan API REST, Anda dapat mengatur data dengan menambah, mengubah, dan menghapusnya.

**- Dasar Teori (penjelasan singkat tentang API, REST, JSON, http package).**
  - Interface Pembelajaran Aplikasi (API)
    API membuat satu aplikasi dapat berinteraksi dengan aplikasi lain. Web API memberikan endpoint yang dapat diakses melalui HTTP untuk mengambil atau mengirim data dalam konteks web.
  - Transaksi Negara Representatif REST
    REST adalah model API berbasis HTTP yang menggunakan metode konvensional seperti:
      GET untuk mendapatkan data
      POST untuk menambahkan data
      PUT/PATCH untuk mengubah data
      Delete untuk menghapus data.
    Data biasanya dikembalikan oleh REST API dalam format JSON.
  - JSON (Notifikasi Objek JavaScript)
    JSON adalah format pertukaran data yang diproses mesin dan mudah dibaca oleh manusia.
  - http Paket
    Flutter menggunakan paket http untuk berkomunikasi dengan client-server.

**- Langkah-langkah implementasi (disertai screenshot hasil setiap bagian penting).**
  1. Membangun proyek Flutter
    <img width="603" height="489" alt="image" src="https://github.com/user-attachments/assets/00a07692-5a3b-4bbf-8ab8-1a52f1f52a0b" />

  2. Menambah Dependensi
    <img width="632" height="222" alt="image" src="https://github.com/user-attachments/assets/953e2636-8839-4bc1-9062-43ce3a74bcfa" />

  3. Mendesain folder
    <img width="296" height="598" alt="image" src="https://github.com/user-attachments/assets/386a51e7-8564-418c-b736-350ebe9ff851" />

  4. Membangun Model (lb/models/user.dart)
    <img width="1148" height="1310" alt="image" src="https://github.com/user-attachments/assets/d433f407-a2cf-4014-a528-cec1bee1e093" />

  5. Membangun API Pelanggan (lib/services/api_service.dart)
    <img width="1430" height="2316" alt="image" src="https://github.com/user-attachments/assets/0b9425d3-221e-4505-ba39-ab97e4cae485" />

  6. Membangun tampilan (lib/main.dart) 
    <img width="1430" height="4812" alt="image" src="https://github.com/user-attachments/assets/7ce827a3-4026-4f01-8414-2c833242e376" />

  7. memulai Aplikasi 
    <img width="446" height="21" alt="image" src="https://github.com/user-attachments/assets/81bc0054-cf1f-4a67-a4ca-4c890cb093ea" />

  Tambah gambar screenshot dari hasil: 
  - Visualisasi daftar data (GET)
    ![WhatsApp Image 2025-10-28 at 11 29 51_1a446045](https://github.com/user-attachments/assets/61a95f1c-5c08-43db-b5c4-aa55f17601c8)

  - Form yang memasukkan data (POST)
    ![WhatsApp Image 2025-10-28 at 11 29 52_38f21092](https://github.com/user-attachments/assets/c7f9b810-70b3-49d9-9052-e4dc94a54790)

  - Form untuk mengubah data (PUT)
    ![WhatsApp Image 2025-10-28 at 11 29 52_9108a619](https://github.com/user-attachments/assets/778a8cfd-ed88-421c-b5ec-47ff99e2ff94)

**- Analisis Kode (jelaskan bagian-bagian penting dari kode Anda).**
  1. Data JSON disimpan dan diformat dalam bentuk objek Dart oleh model (user).
  2. ApiService bertugas berhubungan dengan server API melalui http.
  3. Dengan FutureBuilder, Anda dapat menangani data secara asynchronous dengan menggunakan API.
  4. Setelah operasi CRUD selesai, data dapat diperbarui melalui StatefulWidget.
  5. Dengan menekan tombol Add, Edit, atau Delete, sistem dapat menghubungkan metode ApiService.

**- Kesimpulan dan Saran.**
  KESIMPULAN:
  Kesimpulan dari materi API CRUD yaitu dengan menggunakan REST API dan format data JSON, untuk proses pertukaran data menjadi lebih mudah di kelola. Package http berguna untuk mengirim dan menerima data melalui GET, POST, PUT, DELETE. Dari praktikum ini saya paham cara melakukan operasi CRUD dan bagaimana menampilkan data melalui http.

  SARAN:
  Saran dari materi API CRUD yaitu dari menggunakan validasi form dan penanganan error perlu ditingkatkan supaya aplikasi yang dijalankan bisa stabil dan konsisten.
