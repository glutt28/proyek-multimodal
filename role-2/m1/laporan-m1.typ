// M1: Baseline pencarian lintas modal  ·  templat laporan kelompok
// Ganti semua teks ungu ⟦…⟧. Data kelompok diisi di ../grup.typ.
#import "../_shared/lib.typ": *
#import "../grup.typ": grup

#show: deliverable.with(
  kunci: "m1",
  judul: "Laporan M1",
  subjudul: "Baseline pencarian lintas modal",
  label: "Laporan M1",
  grup: grup,
)

= Ringkasan

#isi[Tiga sampai lima kalimat: apa yang dibangun, angka utama, dan temuan terpenting (misalnya besar language gap).]

= Pipeline

#isi[Jelaskan alur dari data ke peringkat: encoder gambar, encoder teks, normalisasi, kesamaan kosinus, dan cara menghitung peringkat. Sebut nama persis model yang dipakai.]

#tabel-isian(
  ([Komponen], [Model / pengaturan]),
  baris: 4,
  lebar: (4cm, 1fr),
)
#v(-0.2em)
#text(size: 9pt, fill: c-sub)[Baris yang disarankan: encoder gambar, encoder teks Indonesia, encoder teks Inggris, ukuran batch dan _seed_.]

= Kualitas data

#isi[Hasil audit peran 1: jumlah gambar, sebaran kategori dan wilayah, duplikat, dan hal yang perlu diwaspadai.]

= Hasil pada split validasi

Semua angka dari eksekusi sendiri pada `val.csv`. Satu baris per arah pencarian.

#tabel-isian(
  ([Arah], [R\@1], [R\@5], [R\@10], [mAP\@K]),
  baris: 4,
  lebar: (4.6cm, 1fr, 1fr, 1fr, 1fr),
)
#v(-0.2em)
#text(size: 9pt, fill: c-sub)[Isi baris: gambar→teks ID, gambar→teks EN, teks ID→gambar, teks EN→gambar. Tuliskan nilai $K$ untuk mAP\@K.]

#isi[Satu paragraf: bandingkan arah ID dan EN, dan jelaskan selisihnya dengan angka.]

= Sepuluh contoh query Indonesia

Sertakan sekurang-kurangnya dua contoh yang gagal.

#tabel-isian(
  ([\#], [Query (ID)], [Hasil teratas (3)], [Benar?], [Catatan]),
  baris: 10,
  lebar: (0.7cm, 4.8cm, 5cm, 1.4cm, 1fr),
)

#isi[Analisis dua contoh gagal: apa yang salah dan mengapa (kata, budaya, relasi, bahasa).]

= Reproduksi

#kode[
  #set raw(lang: "bash")
  ```bash
  pip install numpy torch transformers sentence-transformers pillow pandas
  python m1_baseline.py --seed 0
  ```
]

#isi[Perangkat, waktu jalan dari cache kosong, dan lokasi hasil mentah.]

#atribusi-data
