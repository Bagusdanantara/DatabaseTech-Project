# DatabaseTech-Project

Proyek ini merupakan implementasi desain dan pengembangan database untuk studi kasus asuransi mobil, dengan fokus utama pada proses normalisasi data. Tujuan dari proyek ini adalah untuk mengubah dataset mentah yang belum terstruktur (Unnormalized Form - UNF) menjadi sebuah skema database yang efisien, bebas dari anomali data, dan memenuhi standar bentuk normal ketiga (3NF).

Proses dimulai dari analisis dataset awal `carinsurance` yang masih mengandung redundansi dan dependensi data yang tidak efisien. Kemudian, data tersebut diolah secara bertahap melalui tiga tahap normalisasi utama:

1.  **First Normal Form (1NF)**: Memastikan setiap sel tabel berisi nilai tunggal dan setiap record bersifat unik.
2.  **Second Normal Form (2NF)**: Menghapus ketergantungan parsial dengan memisahkan data ke dalam tabel-tabel terpisah yang dihubungkan oleh *foreign key*.
3.  **Third Normal Form (3NF)**: Menghilangkan ketergantungan transitif untuk memastikan bahwa semua atribut hanya bergantung pada *primary key*.

Hasil akhir dari proyek ini adalah sebuah skrip SQL (`carinsurance.sql`) yang berisi skema database yang telah ternormalisasi hingga 3NF, lengkap dengan relasi antar tabel. Proses transformasi data dari UNF hingga 3NF juga didokumentasikan dalam file-file CSV terpisah sebagai bukti langkah kerja. Seluruh metodologi, desain ERD, dan penjelasan rinci mengenai proyek ini dapat ditemukan dalam laporan yang disertakan.
