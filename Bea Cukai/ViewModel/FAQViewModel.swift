//
//  FAQViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 11/8/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class FAQViewModel {
        
    let data = [
        ["faq":"Pengertian Bea Masuk",
         "content":[
            ["q":"Apakah yang dimaksud dengan Bea Masuk?",
             "a":" Bea Masuk adalah pungutan negara yang dikenakan terhadap barang impor"]]],
        ["faq":"FAQ Terkait Buku Tarif Kepabeanan Indonesia (BTKI)",
         "content":[
            ["q":" Apa yang dimaksud denganBUKU TARIF KEPABEANAN INDONESIA(BTKI)?",
             "a":" 1.   BTKI adalah Buku Tarif Kepabeanan Indonesiayang memuat sistem klasifikasi barang yang berlaku di Indonesia, meliputi Ketentuan Untuk Menginterpretasi Harmonized System (KUMHS), Catatan, dan Struktur Klasifikasi Barang yang disusun berdasarkan Harmonized System(HS)dan ASEAN Harmonized Tariff Nomenclature(AHTN).\n\n2.   Penyebutan BTKI 2017 selanjutnya merujuk pada sistem klasifikasi barang yang berlaku di Indonesia mulai 1 Maret 2017."],
            ["q":" Apa yang dimaksud denganHARMONIZED SYSTEM(HS)?",
             "a":" 1.    Harmonized System(HS) adalah nomenklatur klasifikasi barang yang digunakan secara seragam di seluruh dunia berdasarkan International Convention on The Harmonized Commodity Description and Coding System dan digunakan untuk keperluan tarif, statistik, rules of origin, pengawasan komoditi impor/ekspor dan keperluan lainnya.\n\n2.    HS terdiri dari penomoran barang sampai tingkat 6 (enam digit), KUMHS, Catatan Bagian, Catatan Bab dan Catatan Subpos yang mengatur ketentuan pengklasifikasian barang."],
            ["q":" Apa yang dimaksud denganASEAN HARMONISED TARIFF NOMENCLATURE?",
             "a":"1.    Adalah sistem klasifikasi barang yang diterapkan secara seragam pada penomoran barang sampai dengan tingkat 8 (delapan) digit di seluruh negara anggota ASEAN berdasarkan Protocol Governing The Implementation of AHTN.\n\n2.    AHTN dibahas dalam forum AHTN Task Force dan disusun berdasarkan kepentingan masing-masing negara ASEAN."],
            ["q":"Mengapa harus menyusun BTKI 2017?",
             "a":"Harmonized System(HS) secara periodik di amandemen oleh WCO untuk menyesuaikan dengan perubahan pola perdagangan dan situasi dunia terkini, sehingga berdampak pada AHTN yang pada akhirnya juga  mengakibatkan BTKI harus disesuaikan sekaligus me-review struktur AHTN."],
            ["q":"Bagaimana proses penyusunan BTKI?",
             "a":"1.   Struktur BTKI disusun berdasarkan HS dan AHTN, dimana Indonesia terlibat dalam proses pembahasan AHTN dan banyak mengusulkan pos AHTN.\n\n2.   Besaran tarif bea masuk dan pos tarif yang ada dalam BTKI/AHTN ditetapkan oleh Menteri Keuangan dan disusun berdasarkan masukan dari Kementerian dan Instansi terkait, antara lain Kementerian Perindustrian, Kementerian Kelautan dan Perikanan, Kementerian Pertanian, Badan POM, dan instansi pemerintah terkait lainnya."],
            ["q":"Apa yg berubah secara signifikan pd BTKI 2017?",
             "a":"Mulai 1 Maret 2017, Indonesia menggunakan AHTN 2017 menjadi BTKI 2017 (8 digit pos tarif) tanpa pemecahan pos nasional seperti BTKI 2012 dan meliputi beberapa perubahan sebagai berikut :\n\n1.   Perubahan struktur Klasifikasi, a.l.:\n- Penambahan Pos/Subpos\n- Penghilangan/ Penggabungan  Pos/Subpos\n- Revisi Uraian/Redaksional\n\n2.     Perubahan Catatan Bagian, Catatan Bab dan Catatan Sub Pos."],
            ["q":"Mengapa harus menjadi 8 digit?",
             "a":"ASEAN menerapkan A single tariff nomenclaturedengan pertimbangan :\n\n1.   Merupakan rekomendasi AHTN Task Force dan sesuai AHTN Protocol\n2.   MendukungAEC (ASEAN Economic Community)\n3.   Sebagai dasar pembentukan ASEAN Single Window\n4.   Sebagai embrio penerapan Single Document Export-Import (ASEAN Customs Declaration Document) antar negara anggota ASEAN"],
            ["q":"Kapan kode HS 2017 (8 digit) digunakan di Indonesia?",
             "a":"Mulai 1 Maret 2017, klasifikasi barang yang diekspor dan diimpor harus sesuai dengan Pos Tarif/HS yang terdapat dalam Sistem Klasifikasi Barang Tahun 2017 sebagaimana ditetapkan dalam PMK 6/PMK.010/2017 tentang Penetapan Sistem Klasifikasi Barang dan Pembebanan Bea Masuk Atas Barang Impor]"],
            ["q":"Apa saja Dampak Perubahan BTKI?",
             "a":"Mengingat sistem klasifikasi barang digunakan untuk berbagai keperluan tarif dan non tarif di Indonesia, maka perubahan BTKI berdampak terhadap hal-hal yang mengacu pada pos tarif antara lain sebagai berikut :\n\n1.   Bea Masuk Umum/Most Favoured Nation (MFN)\n2.   Bea Masuk Free Trade AGreement (FTA)\n3.   Bea Keluar\n4.   BMAD (Bea Masuk Anti Dumping) dan BMTP (Bea Masuk Tindak Pengaman)\n5.   Pajak Dalam Rangka Impor (PPN, PPnBM dan PPh Pasal 22)\n6.   Dokumen perijinan dalam rangka larangan dan pembatasan impor/ekspor\n\nSelain itu perubahan BTKI juga berdampak pada :\n\n1.   Penyesuaian modul PIB, PEB dan pemberitahuan pabean terkait lainnya.\n2.   Aturan lartas pada Kementerian dan Lembaga.\n3.   Penyesuan IT Inventory atau aplikasi sejenis di perusahaan."],
            ["q":"Kapan pemberitahuan pabean harus menggunakan struktur klasifikasi sesuai  BTKI 2017?",
             "a":"BTKI 2017 berlaku terhadap impor/ekspor yang dokumen pemberitahuan pabeannya mendapatkan nomor dan tanggal pendaftarandari Kantor Pabean tempat dipenuhinya kewajiban pabean mulai tanggal 1 Maret 2017."],
            ["q":"Apakah perlu melakukan perubahan perijinan lartas (larangan dan pembatasan) misalnya: SPI, PI, SKI,  NPB, dll, yang sudah terbit menggunakan HS code 2012 (10 digit) menjadi HS code BTKI 2017?",
             "a":"Sesuai kesepakatan antar Kementerian dan Lembaga yang menerbitkan dokumen perijinan :\n\n1.   Perijinan lartas Ekspor dan Impor yang diterbitkan sebelum 1 Maret 2017 yang belum dilakukan penyesuaian Pos Tarif/HS sesuai dengan BTKI 2017 dinyatakan tetap berlaku, namun atas dokumen perijinan tersebut tetap dimungkinkan untuk dilakukan penyesuaian Pos Tarif.\n2.   Perijinan lartas Ekspor dan Impor yang diterbitkan setelah 1 Maret 2017 harus sudah menggunakan Pos Tarif/HS sesuai BTKI 2017"],
            ["q":"Dengan adanya BTKI 2017, apakah ada barang yang tadinya tidak terkena lartas, kemudian menjadi terkena lartas?",
             "a":"Sepanjang Peraturan yang menjadi dasar pemberlakuan lartas tidak mengalami perubahan, maka tidak terdapat perubahan kebijakan atas barang yang terkena/tidak terkena lartas, namun atas dokumen perijinan yang belum disesuaikan dimungkinkan dilakukan penelitian melalui Analyzing Point."],
            ["q":"Apakah pemberlakuan BTKI 2017 berdampak pada Sertifikat Keterangan Asal (SKA) atau Certificate of Origin (CoO) yang terbit sebelum tanggal 1 Maret 2017 dan/atau tidak mencantumkan HS 2017?",
             "a":"1.  Penelitian SKA dilakukan berdasarkan Peraturan yang mengatur mengenai Tata cara pengenaan tarif bea masukdalam rangka perjanjian atau kesepakatan internasional, Operational Certification Proceduresdan Rules Of Origin dari Agreementterkait.\n2.   Kode HS dalam SKA bersifat referensi dan selanjutnya pengenaan tarif dan penelitian kriteria asal barang dilakukan berdasarkan klasifikasi barang yang ditetapkan oleh Pejabat Bea dan Cukai."],
            ["q":"Apakah modul kepabeanan ekspor dan impor harus dilakukan updating?",
             "a":"Modul ekspor/ impor/ KITE/ TPB BC2.3/ PP-SAD/ PP-FTZ03 harus diupdate sebelum 1 Maret 2017.\nUpdate patch modul terkait pemberlakuan BTKI 2017 dapat di download melalui web address sbb :\n\nhttp://www.beacukai.go.id/berita/update-patch-modul-terkait-pemberlakuan-btki-2017.html\n(Update modul dapat dilakukan sebelum 1 Maret 2017 dan tetap bisa digunakan untuk struktur klasifikasi 10 digit )"],
            ["q":"Apa yang terjadi jika modul kepabeanan tidak dilakukan update?",
             "a":"Mulai 1 Maret 2017 pemberitahuan pabean yang belum diupdate dan tidak menggunakan pos tarif sesuai BTKI 2017 akan di reject (ditolak) dari sistem kepabeanan."],
            ["q":"Bagaimana dapat memperoleh hardcopy/ softcopy BTKI 2017?",
             "a":"Hardcopy BTKI 2017 saat ini dalam proses pencetakan, namun untuk softcopy Peraturan Menteri Keuangan Nomor 6/PMK.010/2017 yang memuat Sistem Klasifikasi Barang 2017 dan pembebanan tarif MFN dapat  download di\nhttp://www.sjdih.depkeu.go.id/fullText/2017/6~PMK.010~2017Per.pdf"],
            ["q":"Bagaimana mendapatkan informasi dan atau Peraturantentang FTA, Pajak dan peraturan lainnya yang terkait dengan BTKI 2017?",
             "a":"Peraturan dan referensi lainnya terkait perubahan BTKI 2017 dapat dilihat / didownload di :\n\n- http://intr.insw.go.id/\n- http://www.sjdih.depkeu.go.id/Ind/\n- http://www.beacukai.go.id/"],
            ["q":"Apa yang dimaksud dengan tabel korelasi?",
             "a":"Tabel korelasi adalah tabel yang berfungsi sebagai referensi untuk membantu menelusuri perubahan pos tarif dari BTKI 2012 ke BTKI 2017 dan sebaliknya."],
            ["q":"Apa yang dimaksud dengan SupplementaryExplanatory Notes?",
             "a":"Supplementary Explanatory Notesatau Catatan Penjelasan Tambahan adalah referensi yang memuat deskripsi, spesifikasi dan penjelasan teknis barang yang termasuk dalam subpos AHTN (8 digit) tertentu yang disusun oleh AHTN Task Force."],
            ]
        ],
        ["faq":"Pengertian Impor",
         "content":[
            ["q":"Apakah yang dimaksud dengan impor?",
             "a":"Impor adalah kegiatan memasukkan barang ke dalam Daerah Pabean"]]],
        ["faq":"Pengertian Ekspor",
         "content":[
            ["q":"Apakah yang dimaksud dengan ekspor?",
             "a":"Ekspor adalah kegiatan mengeluarkan barang dari Daerah Pabean"]]],
        ["faq":"Pengertian Daerah Pabean",
         "content":[
            ["q":"Apakah yang dimaksud dengan Daerah Pabean?",
             "a":"Daerah Pabean adalah wilayah Republik Indonesia yang meliputi wilayah darat, perairan dan ruang udara di atasnya, serta tempat-tempat tertentu di Zona Ekonomi Ekslusif dan Landas Kontinen yang didalamnya berlaku Undang-Undang Kepabeanan"]]],
        ["faq":"Pengertian Kawasan Pabean",
         "content":[
            ["q":"Apakah yang dimaksud dengan Kawasan Pabean?",
             "a":"Kawasan Pabean adalah kawasan dengan batas-batas tertentu di pelabuhan laut, bandar udara atau tempat lain yang ditetapkan untuk lalu-lintas barang yang sepenuhnya berada di bawah pengawasan Direktorat Jenderal Bea dan Cukai"]]],
        ["faq":"Pengertian Cukai",
         "content":[
            ["q":"Apakah yang dimaksud dengan Cukai?",
             "a":"Cukai adalah pungutan negara yang dikenakan terhadap barang kena cukai."]]],
        ["faq":"Pengertian Barang Kena Cukai",
         "content":[
            ["q":"Apakah yang dimaksud dengan Barang Kena Cukai (BKC)?",
             "a":"Barang kena cukai adalah barang-barang tertentu yang mempunyai sifat atau karakteristik yang ditetapkan dalam Undang-Undang Cukai"]]],
        ["faq":"Barang Kena Cukai",
         "content":[
            ["q":"Terdiri dari apa sajakah Barang Kena Cukai (BKC) itu ?",
             "a":"Menurut Undang-Undang Nomor 39 Tahun  2007,  BKC terdiri dari :\n\n- etil alkohol (EA) atau etanol\n- minuman yang mengandung etil alkohol (MMEA)\n- hasil tembakau"]]],
        ["faq":"Pengertian PNBP",
         "content":[
            ["q":"Apakah yang dimaksud dengan PNBP?",
             "a":"PNBP singkatan dari Penerimaan Negara Bukan Pajak, yaitu seluruh penerimaan Pemerintah Pusat yang tidak berasal dari penerimaan perpajakan"]]],
        ["faq":"Pengertian Tempat Penimbunan Sementara",
         "content":[
            ["q":"Apakah yang dimaksud dengan Tempat Penimbunan Sementara?",
             "a":"Tempat Penimbunan Sementara adalah bangunan dan atau lapangan atau tempat lain yang disamakan dengan itu di Kawasan Pabean untuk menimbun barang sementara menunggu pemuatan atau pengeluarannya"]]],
        ["faq":"Pengertian Tempat Penimbunan Berikat",
         "content":[
            ["q":"Apakah yang dimaksud dengan Tempat Penimbunan Berikat?",
             "a":"Tempat Penimbunan Berikat adalah bangunan, tempat atau kawasan yang memenuhi persyaratan tertentu yang digunakan untuk menimbun, mengolah, memamerkan dan/atau menyediakan barang untuk dijual dengan mendapatkan penangguhan Bea Masuk."]]],
        ["faq":"Pengertian Tempat Penimbunan Pabean",
         "content":[
            ["q":"Apakah yang dimaksud dengan Tempat Penimbunan Pabean?",
             "a":"Tempat Penimbunan Pabean adalah bangunan dan/atau lapangan atau tempat lain yang disamakan dengan itu yang disediakan oleh Pemerintah di Kantor Pabean yang berada dibawah pengelolaan Direktorat Jenderal Bea dan Cukai untuk menyimpan barang yang dinyatakan tidak dikuasai, barang yang dikuasai negara, dan barang yang menjadi milik negara berdasarkan Undang-Undang Kepabeanan"]]],
        ["faq":"Pengertian Fasilitas Kepabeanan",
         "content":[
            ["q":"Apakah yang dimaksud dengan Fasilitas Kepabeanan?",
             "a":"Fasilitas Kepabeanan adalah pemberian insentif oleh pemerintah/DJBC berkaitan dengan kegiatan ekspor-impor yang akan memberikan manfaat bagi perekonomian nasional"]]],
        ["faq":"Manfaat Fasilitas Kepabeanan",
         "content":[
            ["q":"Manfaat apa yang didapatkan dari Fasilitas Kepabeanan?",
             "a":"Manfaat yang diperoleh bisa dalam bentuk,  kecepatan waktu pemrosesan barang, kemudahan prosedur pemrosesan barang, pengurangan biaya"]]],
        ["faq":"Membawa binatang ke Indonesia",
         "content":[
            ["q":"Apakah Saya Diperbolehkan membawa binatang ,seperti kucing,anjing,burung  atau ikan ke Indonesia?",
             "a":"Pada dasarnya, diperbolehkan untuk membawa binatang dan tumbuhan masuk ke wilayah Indonesia, selama Saudara mendapatkan ijin dari instansi terkait seperti Karantina dan Kementerian Pertanian."]]],
        ["faq":"Kunjungan pertama ke Indonesia",
         "content":[
            ["q":"Ini adalah kunjungan pertama Saya ke Indonesia, kewajiban2 apa saja yang harus saya penuhi pada saat di bandara?",
             "a":"Semua orang yang datang dari luar negeri diharapkan mengisi Customs Declaration ( biasanya dibagikan diatas pesawat). Jika anda membawa barang dan atau uang dalam jumlah tertentu, diharapkan memberitahukannya."]]],
        ["faq":"Bea Masuk Impor",
         "content":[
            ["q":"Haruskah Saya membayar Bea Masuk untuk setiap barang yang saya bawa ke Indonesia?",
             "a":"Barang Barang Penumpang dibebaskan dari Kewajiban Pabean serta Pajak Dalam Rangka Impor Lainnya, jika nilai barang yang dibawa kurang dari FOB USD 250 untuk setiap orang atau nilainya kurang dari FOB USD 1.000 untuk setiap keluarga. Jika nilai barang tersebut melebihi jumlah yang telah disebutkan sebelumnya, penumpang tersebut di wajibkan membayar Kewajiban Pabean dan Pungutan Pajak lainnya dari selisihnya. Barang Penumpang Asing seperti kamera,Video kamera, Radio kaset, Teropong,laptop atau telepon genggam yang akan dipergunakan selama mereka tinggal di Indonesia dan akan dibawa kembali pada saat mereka meninggalkan Indonesia juga mendapat fasilitas pembebasan."]]],
        ["faq":"Uang Tunai",
         "content":[
            ["q":"Apakah saya diharuskan memberitahukan jumlah uang tunai yang saya bawa ke Indonesia?",
             "a":"Kewajiban memberitahukan jumlah uang kepada Petugas Pabean Indonesia hanya ditekankan bagi individu ketika mereka membawa masuk atau uang rupiah senilai Rp.100.000.000 atau lebih , atau mata uang asing lainnya bernilai sama."]]],
        ["faq":"Rokok dan Minuman Beralkohol",
         "content":[
            ["q":"Apakah Saya Diperbolehkan membawa Rokok dan Minuman Beralkohol ke Indonesia?",
             "a":"Setiap orang diperbolehkan membawa rokok dan minuman beralkohol ke Indonesia dalam jumlah terbatas sebagai berikut : Maksimum 200 batang rokok atau 50 batang cerutu atau 200 gram tembakau iris; Maksimum 1 liter minuman beralkohol dan parfum dalam jumlah yang wajar atau batasan jumlah yang telah disebutkan sebelumnya tidak diwajibkan untuk membayar Kewajiban Pabean dan Cukai dan Pungutan Pajak lainnya."]]],
        ["faq":"Waktu Importasi",
         "content":[
            ["q":"Berapa lama waktu yang dibutuhkan untuk menyelesaikan formalitas kepabeanan jika Saya ingin mengimpor barang ke Indonesia?",
             "a":"Waktu yang dibutuhkan untuk menyelesaikan dokumen impor untuk dipakai dari menerima Pemberitahuan Pabean sampai penentuan jalur tidak lebih dari 4 jam kerja. Dalam Hal barang tersebut mendapatkan jalur merah, pemeriksaan fisik harus dilaksanakan dalam 12 jam kerja sejak menerima Pemberitahuan Pabean dan Surat Persetujuan Pengeluaran Barang harus diterbitkan dalam 48 jam kerja sejak Penerimaan Pemberitahuan Pabean, diluar kejadian yang tak biasa."]]],
        ["faq":"SOP Layanan Unggulan DJBC",
         "content":[
            ["q":"Apa saja Layanan Unggulan beserta SOP nya yang ada di bidang kepabeanan dan Cukai?",
             "a":"SOP Layanan Unggulan di bidang kepabeanan dan cukai meliputi :\n\n- Pelayanan Pembebasan Bea Masuk atas Impor Bibit dan Benih untuk Pembangunan dan Pengembangan Industri Pertanian, Peternakan dan Perikanan\n- Pelayanan Pembebasan Bea Masuk atas Impor Barang berdasarkan Kontrak Bagi Hasil (Production Sharing Contracts) Minyak dan Gas Bumi\n- Pelayanan Pemberian Keringanan Bea Masuk atas Impor Barang dalam rangka Pembangunan/Pengembangan Industri/Industri Jasa\n- Pelayanan Permohonan Penyediaan Pita Cukai Minuman Mengandung Etil Alkohol Asal Impor (P3C MMEA)\n- Pelayanan Pemesanan Pita Cukai Hasil Tembakau (CK-1) secara Manual\n- Pelayanan Laporan Penyelesaian Barang/Bahan Asal Impor (BCL.KT01), Penerbitan Surat Pemberitahuan Penyesuaian Jaminan (SPPJ), dan Pengembalian Jaminan dalam rangka KITE\n- Pelayanan Penerbitan SK Pembebasan dalam rangka KITE dengan Menggunakan Media Penyimpan Data Elektronik\n- Pelayanan Penerbitan Nomor Induk Perusahaan (NIPER) dalam rangka KITE secara Manual\n- Pelayanan Penyelesaian Barang Impor untuk Dipakai Jalur MITA Prioritas dengan PIB yang Disampaikan Melalui Sistem PDE Kepabeanan\n- Pelayanan Penyelesaian Barang Impor untuk Dipakai Jalur MITA Prioritas dengan PIB yang Disampaikan Melalui Sistem PDE Kepabeanan\n- Pelayanan Pengembalian Bea Masuk Berdasarkan Putusan Pengadilan Pajak pada Kantor Pelayanan Utama Tipe A Tanjung Priok\n- Pelayanan Pemberian Izin Impor Dengan Penangguhan Pembayaran Bea Masuk, Pajak Dalam Rangka Impor Dan/Atau Cukai (Vooruitslag) Pada Kantor Pelayanan Utama Tipe A Tanjung Priok\n- Pelayanan Pemberian Persetujuan Pemberitahuan Pendahuluan (Pre-Notification) Pada Kantor Pelayanan Utama Tipe A Tanjung Priok\n- Pelayanan Penyelesaian Barang Awak Sarana Pengangkut\n- Pelayanan Penyelesaian Barang Pribadi Penumpang yang Tiba Bersama Penumpang\n- Pelayanan Penyelesaian Barang Pribadi Penumpang yang Tidak Tiba Bersama Penumpang dengan Menggunakan Customs Declaration\n- Pelayanan Pengujian Laboratoris dan Identifikasi Barang bagi Pengguna Jasa Internal DJBC\n- Pelayanan Pengujian Laboratoris dan Identifikasi Barang bagi Pengguna Jasa Eksternal DJBC\n- Pelayanan Permohonan Penyediaan Pita Cukai Hasil Tembakau (P3C) Pengajuan Awal Secara Elektronik\n- Pelayanan Permohonan Penyediaan Pita Cukai Hasil Tembakau (P3C) Pengajuan Tambahan Secara Elektronik\n- Pelayanan Pemesanan Pita Cukai Hasil Tembakau (CK-1) Secara Elektronik"]]],
        ["faq":"Cara Mengajukan Pertukaran Data Elektronik (PDE/EDI)",
         "content":[
            ["q":"Untuk bisa melakukan pertukaran data elektronik (PDE) perlu mendapatkan Modul dari dokumen yang dipertukarkan dan persetujuan Pertukaran Data Elektronik, pemohon dapat mengajukan permohonan kepada Kepala Kantor Pelayanan dengan melampirkan dokumen pendukung, yaitu:",
             "a":"- Akte pendirian perusahaan\n- SIUP / TDP\n- Fotokopi NPWP\n- Angka Pengenal Importir\n- Nomor Identitas Kepabeanan (NIK)\n- Spesimen tanda tangan pimpinan perusahaan\n- Kode aktivasi Electronic Data Interchange (EDI), Jika sudah ada"]]],
        ["faq":"Dasar Hukum DJBC",
         "content":[
            ["q":"Apakah dasar hukum keberadaan Direktorat Jenderal Bea dan Cukai?",
             "a":"Dasar hukum keberadaan Direktorat Jenderal Bea dan Cukai adalah Undang-Undang Republik Indonesia Nomor 17 Tahun  2006 Tentang Perubahan atas Undang-Undang Nomor 10 Tahun 1995 tentang Kepabeanan dan Undang-Undang Nomor 39 Tahun  2007 tentang Perubahan atas Undang-Undang Nomor 11 Tahun 1995 tentang Cukai."]]],
        ["faq":"Ketentuan Barang Kiriman",
         "content":[
            ["q":"DEFINISI DAN ATURAN",
             "a":"Dasar Hukum PMK-182/PMK.04/2016 tentang Ketentuan Impor Barang Kiriman\nDefinisi :\n- Impor adalah kegiatan memasukkan barang ke dalam Daerah Pabean. Termasuk didalamnya adalah memasukkan barang melalui mekanisme barang kiriman.\n- Barang Kiriman adalah barang impor yang dikirim oleh pengirim tertentu di luar negeri kepada penerima tertentu di dalam negeri.\n- Perusahaan Jasa Titipan (PJT) adalah perusahaan yang memperoleh izin usaha jasa titipan dari instansi terkait serta memperoleh persetujuan untuk melaksanakan kegiatan kepabeanan dari kepala kantor pabean."],
            ["q":"PENANGANAN BARANG KIRIMAN",
             "a":"Pejabat Bea dan Cukai berwenang melakukan pemeriksaan pabean yang meliputi penelitian dokumen dan pemeriksaan fisik barang (official assestment).\nPemeriksaan fisik dilakukan secara selektif dan disaksikan oleh Petugas PJT guna :\n1.     menetapkan klasifikasi dan nilai pabean atas barang kiriman.\n2.     memastikan apakah terhadap barang kiriman terkena ketentuan perijinan dari instansi teknis terkait, seperti :\n   - §  Produk makanan, minuman, obat-obatan harus memperoleh persetujuan dari BPOM; dalam hal kiriman adalah untuk tujuan penelitian termasuk uji klinik, pengembangan produk, sampel registrasi, bantuan/hibah/donasi, tujuan pameran dan penggunaan sendiri/pribadi, dapat melalui mekanisme jalur khusus yakni dengan mengajukan Ijin SAS (Special Access Scheme) ke BPOM.\n   - §  Produk Kosmetika harus memperoleh persetujuan dari BPOM berupa SKI (Surat Keterangan Impor).\n   - §  Impor Kiriman Telepon Seluler, Komputer Genggam (Handheld) dan Komputer Tablet hanya diperbolehkan maksimal 2 (dua) buah sebagaimana diatur di Peraturan Menteri Perdagangan.\n   - §  Impor Kiriman Pakaian jadi hanya diperbolehkan maksimal 10 (sepuluh) buah sebagaimana diatur di Peraturan Menteri Perdagangan.\n   - §  Impor Kiriman Produk Elektronik hanya diperbolehkan maksimal 2 (dua) buah sebagaimana diatur di Peraturan Menteri Perdagangan.\n   - §  Produk hewan, tumbuhan dan ikan harus memperoleh ijin pemasukan dari Badan Karantina\n   - §  Produk senjata api, air softgun dan peralatan sejenis harus mendapatkan ijin dari Kepolisian.\nUntuk memastikan apakah barang impor terkena ketentuan larangan dan pembatasan (perijinan), dapat dilihat di http://eservice.insw.go.id/ menu Lartas Information, adapun untuk Pengecualian Lartas Barang Kiriman dapat dilihat Aturan Pengecualian Lartas Barang Kiriman di Peraturan.\nPejabat Bea dan Cukai menetapkan tarif (pembebanan bea masuk) dan nilai pabean serta menghitung BM dan PDRI yang wajib dilunasi atas barang kiriman.\nDalam rangka penetapan nilai pabean, Pejabat Bea dan Cukai dapat meminta informasi (Notifikasi) bukti pendukung transaksi jual beli yang obyektif dan terukur kepada Penerima Barang melalui PJT, sebagai data pendukung untuk penetapan nilai barang, yaitu bukti bayar\nPembayaran BM dan PDRI ke Kas Negara oleh PJT dilakukan melalui Bank Devisa Persepsi dengan menggunakan SSPCP (Surat Setoran Pabean, Cukai dan Pajak)"],
            ["q":"PROSEDUR PENGELUARAN BARANG KIRIMAN",
             "a":"Atas barang kiriman pos wajib diberitahukan kepada Pejabat Bea dan Cukai dikantor Pabean dan hanya dapat dikeluarkan dengan persetujuan Pejabat Bea dan Cukai.\nImpor barang kiriman dilakukan melalui pos atau PJT dan dilakukan pemeriksaan pabean yang meliputi penelitian dokumen dan pemeriksaan fisik barang secara selektf berdasarkan manajemen resiko oleh Pejabat Bea dan Cukai.\nPemeriksaan fisik barang disaksikan oleh petugas pos atau petugas PJT\nPejabat Bea dan Cukai menetapkan tarif dan nilai pabean serta menghitung bea masuk dan pajak dalam rangka impor yang wajib dilunasi atas barang kiriman melalui pos dan PJT\nBarang kiriman melalui pos yang telah ditetapkan tarif dan nilai pabeannya diserahkan kepada penerima barang kiriman melalui pos setelah bea masuk dan pajak dalam rangka impor dilunasi"],
            ["q":"FASILITAS PERPAJAKAN",
             "a":"Atas barang kiriman diberikan beberapa fasilitas perpajakan sebagai berikut :\n- Barang dengan nilai dibawah USD100 diberikan pembebasan dan dapat diberikan persetujuan pengeluaran barang *)\n- Barang dengan nilai diatas USD100 sampai dengan USD1500 dikenakan pungutan Bea Masuk dan Pajak Dalam Rangka Impor dengan ske- a :\n   - Apabila terkena aturan larangan dan pembatasan *) wajib melampirkan dokumen pemenuhan larangan dan pembatasan dari instansi terkait.\n   - Atas barang kiriman tersebut dikenakan tarif bea masuk sebesar 7.5% kecuali untuk barang kiriman berupa buku ilmu pengetahuan.\n   - Apabila diperlukan Petugas Bea Cukai dapat meminta dokumen pelengkap sebagai dasar penghitungan Bea Masuk dan Pajak Dalam Rangka Impor\n- Barang dengan nilai lebih dari USD1500, Bea Cukai melalui Pos/PJT akan meminta untuk menyampaikan PIBK atau Pemberitahuan Impor Barang (PIB) apabila penerima barang merupakan badan usaha (bukan perseorangan)\n*) Ketentuan pengeluaran barang mengacu pada aturan Larangan dan Pembatasan."],
            ["q":"LARANGAN DAN PEMBATASAN",
             "a":"Pengertian Larangan dan Pembatasan (LARTAS).\nBarang yang dikenai aturan LARTAS adalah barang yang dilarang dan/atau dibatasi impor atau ekspornya.\nLARTAS diterbitkan oleh Instansi Teknis Terkait, yakni Kementerian atau lembaga pemerintah non kementerian tingkat pusat, yang menetapkan peraturan LARTAS atas impor atau ekspor dan menyampaikan peraturan tersebut kepada Menteri Keuangan.\nBeriktu ini beberapa instansi yang menetapkan LARTAS\n  1.     Kementerian Perdagangan\n  2.     Badan Karantina Ikan, Pengendalian Mutu dan Keamanan Hasil Perikanan\n  3.     Badan Karantina Pertanian (Karantina Hewan dan Tumbuhan)\n  4.     BPOM (Badan Pengawas Obat dan Makanan)\n  5.     Kementerian Kesehatan\n  6.     DJBC (Direktorat Jenderal Bea dan Cukai)\n  7.     BAPETEN (Badan Pengawas Tenaga Nuklir)\n  8.     Bank Indonesia\n  9.     Kementerian Kehutanan\n  10.Direktorat Jenderal Pos dan Telekomunikasi\n  11.Kementerian Pertanian\n  12.Kementerian Perindustrian\n  13.POLRI\n  14.Kementerian Lingkungan Hidup\n  15.Kementerian ESDM\n  16.Kementerian Pertahanan\n  17.Kementerian Budaya dan Pariwisata\n  18.Kementerian Kelautan dan Perikanan\n  19.Mabes TNI\n  20.Direktorat Jenderal Perhubungan Udara â€“ Kementerian Perhubungan\nCatatan : 5 Instansi Teknis terakhir hanya bertindak sebagai penerbit rekomendasi perijinan, bukan sebagai Penerbit Perijinan\nSesuai tugas dan fungsi DJBC, Bea Cukai mempunyai kewenangan untuk melakukan penegahan atas barang dalam kategori LARTAS.\n  - DJBC berwenang melakukan penegahan terhadap barang yang termasuk kategori LARTAS yang tidak dilengkapi perijinan dari Instansi Teknis Terkait\n  - DJBC berwenang melakukan penegahan terhadap barang yang menimbulkan perbedaan penafsiran apakah termasuk kategori LARTAS atau tidak.\nKetentuan tentang LARTAS berlaku untuk semua jenis importasi, termasuk didalamnya importasi melalui mekanisme barang kiriman\nDalam hal barang kiriman terkena aturan LARTAS maka penerima barang wajib melengkapi perijinan tersebut untuk proses pengeluaran barang.\nApabila penerima barang tidak dapat melengkapi dokumen terkait maka :\n  - Penerima barang dapat mengajukan permohonan reekspor atas barang yang diimpor (RTO-Return To Origin) atau mengajukan permohonan pengeluaran barang sebagian (tidak berlaku untuk kiriman EMS) dengan mengajukan permohonan ke Kepala Kantor Bea Cukai tempat pengeluaran barang.\n  - Dalam hal penerima barang tidak melakukan pengurusan barang kiriman dalam waktu lebih dari 30 hari, maka status barang tersebut akan menjadi Barang Tidak Dikuasai (BCF 1.5).\nInformasi terkait LARTAS dapat diakses melalui laman http://eservice.go.id\n  - Kunjungi website INSW pada laman http://eservice.go.id Menu Lartas Information\n  - Pada kolom Search pilih HS (Harmonized System) Code Impor, atau HS (Harmonized System) Code Ekspor, atau Lartas Impor Description, atau Lartas Ekspor Description\n  - Masukkan Nomor HS atau uraian barang pada kolom Keyword"],
            ["q":"PELACAKAN BARANG KIRIMAN",
             "a":"Untuk memudahkan penerima barang dalam melakukan pengecekan status barang kiriman, DJBC telah membuat satu halaman khusus pelacakan.\nPenerima barang dapat melakukan pengecekan secara mandiri atas barang kiriman melalui tautan www.beacukai.go.id/barangkiriman\nInformasi yang tersedia pada laman pengecekan meliputi :\n  - Pergerakan barang kiriman secara realtime\n  - Status barang kiriman\n  - Jumlah pembayaran bea masuk dan pajak dalam rangka impor *)\n*) Jumlah pembayaran yang anda lakukan ke Perusahaan Jasa Titipan mungkin berbeda dengan jumlah yang tertera. Hal ini disebabkan perusahaan jasa titipan yang anda gunakan mungkin menambahkan biaya lain lain dalam proses pengiriman barang dimana biaya tersebut BUKAN dipungut oleh bea cukai dan TIDAK masuk kedalam Kas Negara"],
            ["q":"WASPADA PENIPUAN",
             "a":"Waspada terhadap penipuan yang mengatasnamakann Bea Cukai. Kenali ciri cirinya berikut ini :\n  - Umumnya korban mengenal pelaku melalui sosial media\n  - Umumnya pelaku mengirimkan barang dengan nominal kecil yang diterima dengan baik oleh korban dengan tujuan untuk mendapatkan kepercayaan calon korban\n  - Tidak menutup kemungkinan pelaku langsung \"mengirimkan\" paket dengan nominal fantastis\n  - Pelaku sering memberikan nomor resi palsu disertai dengan foto Airway Bill (AWB) bahkan halaman pengecekan palsu\n  - Korban dihubungi oknum yang mengaku sebagai petugas bea cukai yang menginformasikan bahwa paket tertahan di bea cukai dan diharuskan membayar sejumlah uang untuk pengeluaran barang\n  - Nomor yang digunakan biasanya nomor handphone dan nomor rekening yang digunakan merupakan nomor rekening PRIBADI\n  - Dalam beberapa kasus pelaku mengancam korban apabila tidak segera melakukan pembayaran maka akan dilaporkan kepada pihak berwajib dengan berbagai alasan\nJika anda mengalami kasus seperti diatas jangan panik, segera hubungi petugas kami melalui call center Bravo Bea Cukai di nomor 1500225\nJANGAN pernah mentransfer sejumlah uang ke rekening pribadi, apabila anda terlanjur melakukan trasfer segera buat Laporan Kepolisian dan segera datangi kantor cabang bank yang digunakan oleh pelaku untuk dilakukan pemblokiran"]]],
        
        ] as [[String:Any]]

    var dataFAQ:[FAQ]?

}

extension FAQViewModel{
    
}
