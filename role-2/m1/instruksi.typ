#import "../_shared/lib.typ": *

#show: instruksi.with(
  kunci: "m1",
  judul: "M1: Baseline pencarian lintas modal",
  subjudul: "Instruksi deliverable milestone kedua",
)

= Ringkasan

#milestone.m1.fokus Hasilnya menjadi titik pembanding untuk semua varian di M2.

#info("Dikumpulkan pada Pertemuan 11")[
  Batas waktu persisnya diumumkan lewat LMS. Tindak lanjuti catatan Dosen Pengampu pada M0; itu ikut dinilai pada
  kriteria disiplin tenggat tingkat 3.
]

= Yang dikumpulkan

#checklist(
  [Kode _end-to-end_ yang berjalan: baca `train.csv`/`val.csv`, sematkan gambar dan _caption_, hitung kesamaan kosinus, kembalikan peringkat.],
  [Tabel _Recall\@1/5/10_ dan _mAP\@K_ pada split validasi untuk empat arah pencarian.],
  [Sepuluh contoh _query_ berbahasa Indonesia beserta hasil teratasnya, termasuk sekurang-kurangnya dua contoh yang gagal.],
  [Laporan kualitas data (peran 1) dan `README` singkat untuk menjalankan kode.],
)

Templat yang dipakai: `laporan-m1.typ`.

= Langkah pengerjaan

+ Bangun pipeline. Baca `train.csv` dan `val.csv`, sematkan gambar dan _caption_ dengan encoder pra-latih yang dibekukan, hitung
  kesamaan kosinus, lalu kembalikan peringkat. Simpan hasil sematan (_cache_) agar eksperimen M2 tidak mengulang pekerjaan mahal.
+ Ukur empat arah. Laporkan _Recall\@1/5/10_ dan _mAP\@K_ untuk:
  - gambar $arrow.r$ teks Indonesia,
  - gambar $arrow.r$ teks Inggris,
  - teks Indonesia $arrow.r$ gambar,
  - teks Inggris $arrow.r$ gambar.
+ Tampilkan contoh. Sepuluh _query_ Indonesia beserta hasil teratasnya. Tampilkan contoh gagal apa adanya; jangan memilih hanya yang berhasil.
+ Audit data. Peran 1 melaporkan kualitas data: sebaran kategori dan wilayah, duplikat, dan hal yang mencurigakan.
+ Jelaskan selisihnya. Hitung dan bahas selisih kinerja _query_ Indonesia dan Inggris. Ini _language gap_ yang akan Anda
  persempit di M2.

#peringatan("Hati-hati dengan leakage")[
  Pemilihan hiperparameter dan tampilan contoh hanya boleh memakai `train.csv`. Jangan mengoptimalkan apa pun dengan melihat
  `val.csv`, karena angka validasi kelak menjadi pembanding yang adil bagi semua varian.
]

= Patokan kontribusi per peran

#tabel-peran-milestone("m1")

= Format laporan

- Panjang yang disarankan 3–4 halaman; tabel dan gambar diberi keterangan.
- Setiap angka menyebut _split_, arah pencarian, dan _seed_.
- Cantumkan perangkat dan waktu jalan (semua eksperimen harus dapat dijalankan tanpa GPU).
- Sertakan atribusi CC BY-SA 4.0.

= Rubrik

#tabel-rubrik-milestone()

= Cara mengumpulkan

Kumpulkan lewat LMS: PDF laporan (`m1_laporan_kelompok_NN.pdf`) dan arsip kode (`m1_kode_kelompok_NN.zip`) atau
_notebook_ yang sudah dijalankan sehingga seluruh _output_ sel tersimpan. Bila petunjuk LMS berbeda, ikuti LMS.

```bash
typst compile --root . m1/laporan-m1.typ m1/m1_laporan_kelompok_NN.pdf
```
