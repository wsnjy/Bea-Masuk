//
//  FAQViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 11/8/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class FAQViewModel {
    
    let data:[[String:String]] = [
        ["question":"Apakah yang dimaksud dengan Bea Masuk?",
         "answer":"Bea Masuk adalah pungutan negara yang dikenakan terhadap barang impor"],
        ["question":"FAQ Terkait Buku Tarif Kepabeanan Indonesia (BTKI)",
         "answer":""],
        ["question":"Apakah yang dimaksud dengan impor?",
         "answer":"Impor adalah kegiatan memasukkan barang ke dalam Daerah Pabean"],
        ["question":"Apakah yang dimaksud dengan ekspor?",
         "answer":"Ekspor adalah kegiatan mengeluarkan barang dari Daerah Pabean"],
        ["question":"Apakah yang dimaksud dengan Daerah Pabean?",
         "answer":"Daerah Pabean adalah wilayah Republik Indonesia yang meliputi wilayah darat, perairan dan ruang udara di atasnya, serta tempat-tempat tertentu di Zona Ekonomi Ekslusif dan Landas Kontinen yang didalamnya berlaku Undang-Undang Kepabeanan"],
        ["question":"Apakah yang dimaksud dengan Kawasan Pabean?",
         "answer":"Kawasan Pabean adalah kawasan dengan batas-batas tertentu di pelabuhan laut, bandar udara atau tempat lain yang ditetapkan untuk lalu-lintas barang yang sepenuhnya berada di bawah pengawasan Direktorat Jenderal Bea dan Cukai"],
        ["question":"Apakah yang dimaksud dengan Cukai?",
         "answer":"Cukai adalah pungutan negara yang dikenakan terhadap barang kena cukai."],
        ["question":"Apakah yang dimaksud dengan Barang Kena Cukai (BKC)?",
         "answer":"Barang kena cukai adalah barang-barang tertentu yang mempunyai sifat atau karakteristik yang ditetapkan dalam Undang-Undang Cukai"],
        ["question":"Terdiri dari apa sajakah Barang Kena Cukai (BKC) itu ?",
         "answer":"Menurut Undang-Undang Nomor 39 Tahun  2007,  BKC terdiri dari :\netil alkohol (EA) atau etanol\nminuman yang mengandung etil alkohol (MMEA)\nhasil tembakau"],
        ["question":"Apakah yang dimaksud dengan PNBP?",
         "answer":"PNBP singkatan dari Penerimaan Negara Bukan Pajak, yaitu seluruh penerimaan Pemerintah Pusat yang tidak berasal dari penerimaan perpajakan"],
        ["question":"Apakah yang dimaksud dengan Tempat Penimbunan Sementara?",
         "answer":"Tempat Penimbunan Sementara adalah bangunan dan atau lapangan atau tempat lain yang disamakan dengan itu di Kawasan Pabean untuk menimbun barang sementara menunggu pemuatan atau pengeluarannya"],
        ["question":"Apakah yang dimaksud dengan Tempat Penimbunan Berikat?",
         "answer":"Tempat Penimbunan Berikat adalah bangunan, tempat atau kawasan yang memenuhi persyaratan tertentu yang digunakan untuk menimbun, mengolah, memamerkan dan/atau menyediakan barang untuk dijual dengan mendapatkan penangguhan Bea Masuk."],
        ["question":"Apakah yang dimaksud dengan Tempat Penimbunan Pabean?",
         "answer":"Tempat Penimbunan Pabean adalah bangunan dan/atau lapangan atau tempat lain yang disamakan dengan itu yang disediakan oleh Pemerintah di Kantor Pabean yang berada dibawah pengelolaan Direktorat Jenderal Bea dan Cukai untuk menyimpan barang yang dinyatakan tidak dikuasai, barang yang dikuasai negara, dan barang yang menjadi milik negara berdasarkan Undang-Undang Kepabeanan"],
        ["question":"Apakah yang dimaksud dengan Fasilitas Kepabeanan?",
         "answer":"Fasilitas Kepabeanan adalah pemberian insentif oleh pemerintah/DJBC berkaitan dengan kegiatan ekspor-impor yang akan memberikan manfaat bagi perekonomian nasional"],
        ["question":"Manfaat apa yang didapatkan dari Fasilitas Kepabeanan?",
         "answer":"Manfaat yang diperoleh bisa dalam bentuk,  kecepatan waktu pemrosesan barang, kemudahan prosedur pemrosesan barang, pengurangan biaya"],
        ["question":"Apakah Saya Diperbolehkan membawa binatang ,seperti kucing,anjing,burung  atau ikan ke Indonesia ?",
         "answer":"Pada dasarnya, diperbolehkan untuk membawa binatang dan tumbuhan masuk ke wilayah Indonesia, selama Saudara mendapatkan ijin dari instansi terkait seperti Karantina dan Kementerian Pertanian."],
        ["question":"Ini adalah kunjungan pertama Saya ke Indonesia, kewajiban2 apa saja yang harus saya penuhi pada saat di bandara?",
         "answer":"Semua orang yang datang dari luar negeri diharapkan mengisi Customs Declaration ( biasanya dibagikan diatas pesawat). Jika anda membawa barang dan atau uang dalam jumlah tertentu, diharapkan memberitahukannya."],
        ["question":"Haruskah Saya membayar Bea Masuk untuk setiap barang yang saya bawa ke Indonesia ?",
         "answer":"Barang Barang Penumpang dibebaskan dari Kewajiban Pabean serta Pajak Dalam Rangka Impor Lainnya, jika nilai barang yang dibawa kurang dari FOB USD 250 untuk setiap orang atau nilainya kurang dari FOB USD 1.000 untuk setiap keluarga. Jika nilai barang tersebut melebihi jumlah yang telah disebutkan sebelumnya, penumpang tersebut di wajibkan membayar Kewajiban Pabean dan Pungutan Pajak lainnya dari selisihnya. Barang Penumpang Asing seperti kamera,Video kamera, Radio kaset, Teropong,laptop atau telepon genggam yang akan dipergunakan selama mereka tinggal di Indonesia dan akan dibawa kembali pada saat mereka meninggalkan Indonesia juga mendapat fasilitas pembebasan."],
        ["question":"Apakah saya diharuskan memberitahukan jumlah uang tunai yang saya bawa ke Indonesia ?",
         "answer":"Kewajiban memberitahukan jumlah uang kepada Petugas Pabean Indonesia hanya ditekankan bagi individu ketika mereka membawa masuk atau uang rupiah senilai Rp.100.000.000 atau lebih , atau mata uang asing lainnya bernilai sama."],
        ["question":"Apakah Saya Diperbolehkan membawa Rokok dan Minuman Beralkohol ke Indonesia ?",
         "answer":"Setiap orang diperbolehkan membawa rokok dan minuman beralkohol ke Indonesia dalam jumlah terbatas sebagai berikut : Maksimum 200 batang rokok atau 50 batang cerutu atau 200 gram tembakau iris; Maksimum 1 liter minuman beralkohol dan parfum dalam jumlah yang wajar atau batasan jumlah yang telah disebutkan sebelumnya tidak diwajibkan untuk membayar Kewajiban Pabean dan Cukai dan Pungutan Pajak lainnya."],
        ["question":"Berapa lama waktu yang dibutuhkan untuk menyelesaikan formalitas kepabeanan jika Saya ingin mengimpor barang ke Indonesia ?",
         "answer":"Waktu yang dibutuhkan untuk menyelesaikan dokumen impor untuk dipakai dari menerima Pemberitahuan Pabean sampai penentuan jalur tidak lebih dari 4 jam kerja. Dalam Hal barang tersebut mendapatkan jalur merah, pemeriksaan fisik harus dilaksanakan dalam 12 jam kerja sejak menerima Pemberitahuan Pabean dan Surat Persetujuan Pengeluaran Barang harus diterbitkan dalam 48 jam kerja sejak Penerimaan Pemberitahuan Pabean, diluar kejadian yang tak biasa."],
        ["question":"Apa saja Layanan Unggulan beserta SOP nya yang ada di bidang kepabeanan dan Cukai?",
         "answer":"SOP Layanan Unggulan di bidang kepabeanan dan cukai meliputi :\n1.Pelayanan Pembebasan Bea Masuk atas Impor Bibit dan Benih untuk Pembangunan dan Pengembangan Industri Pertanian, Peternakan dan Perikanan\n2.Pelayanan Pembebasan Bea Masuk atas Impor Barang berdasarkan Kontrak Bagi Hasil (Production Sharing Contracts) Minyak dan Gas Bumi\n3.Pelayanan Pemberian Keringanan Bea Masuk atas Impor Barang dalam rangka Pembangunan/Pengembangan Industri/Industri Jasa\n4.Pelayanan Permohonan Penyediaan Pita Cukai Minuman Mengandung Etil Alkohol Asal Impor (P3C MMEA)\n5/Pelayanan Pemesanan Pita Cukai Hasil Tembakau (CK-1) secara Manual\n6.Pelayanan Laporan Penyelesaian Barang/Bahan Asal Impor (BCL.KT01), Penerbitan Surat Pemberitahuan Penyesuaian Jaminan (SPPJ), dan Pengembalian Jaminan dalam rangka KITE\n7.Pelayanan Penerbitan SK Pembebasan dalam rangka KITE dengan Menggunakan Media Penyimpan Data Elektronik\n8.Pelayanan Penerbitan Nomor Induk Perusahaan (NIPER) dalam rangka KITE secara Manual\n9.Pelayanan Penyelesaian Barang Impor untuk Dipakai Jalur MITA Prioritas dengan PIB yang Disampaikan Melalui Sistem PDE Kepabeanan\n10.Pelayanan Penyelesaian Barang Impor untuk Dipakai Jalur MITA Prioritas dengan PIB yang Disampaikan Melalui Sistem PDE Kepabeanan\n11.Pelayanan Pengembalian Bea Masuk Berdasarkan Putusan Pengadilan Pajak pada Kantor Pelayanan Utama Tipe A Tanjung Priok\n12.Pelayanan Pemberian Izin Impor Dengan Penangguhan Pembayaran Bea Masuk, Pajak Dalam Rangka Impor Dan/Atau Cukai (Vooruitslag) Pada Kantor Pelayanan Utama Tipe A Tanjung Priok\n13.Pelayanan Pemberian Persetujuan Pemberitahuan Pendahuluan (Pre-Notification) Pada Kantor Pelayanan Utama Tipe A Tanjung Priok\n14.Pelayanan Penyelesaian Barang Awak Sarana Pengangkut\n15.Pelayanan Penyelesaian Barang Pribadi Penumpang yang Tiba Bersama Penumpang\n16.Pelayanan Penyelesaian Barang Pribadi Penumpang yang Tidak Tiba Bersama Penumpang dengan Menggunakan Customs Declaration\n17.Pelayanan Pengujian Laboratoris dan Identifikasi Barang bagi Pengguna Jasa Internal DJBC\n18.Pelayanan Pengujian Laboratoris dan Identifikasi Barang bagi Pengguna Jasa Eksternal DJBC\n19.Pelayanan Permohonan Penyediaan Pita Cukai Hasil Tembakau (P3C) Pengajuan Awal Secara Elektronik\n20.Pelayanan Permohonan Penyediaan Pita Cukai Hasil Tembakau (P3C) Pengajuan Tambahan Secara Elektronik\n21.Pelayanan Pemesanan Pita Cukai Hasil Tembakau (CK-1) Secara Elektronik"],
        ["question":"Cara Mengajukan Pertukaran Data Elektronik (PDE/EDI)",
         "answer":"Untuk bisa melakukan pertukaran data elektronik (PDE) perlu mendapatkan Modul dari dokumen yang dipertukarkan dan persetujuan Pertukaran Data Elektronik, pemohon dapat mengajukan permohonan kepada Kepala Kantor Pelayanan dengan melampirkan dokumen pendukung\nYaitu:\n1.Akte pendirian perusahaan\n2.SIUP / TDP\n3.Fotokopi NPWP\n4.Angka Pengenal Importir\n5.Nomor Identitas Kepabeanan (NIK)\n6.Spesimen tanda tangan pimpinan perusahaan\n7.Kode aktivasi Electronic Data Interchange (EDI), Jika sudah ada\nDemikian semoga bermanfaat."],
        ["question":"Apakah dasar hukum keberadaan Direktorat Jenderal Bea dan Cukai?",
         "answer":"Dasar hukum keberadaan Direktorat Jenderal Bea dan Cukai adalah Undang-Undang Republik Indonesia Nomor 17 Tahun  2006 Tentang Perubahan atas Undang-Undang Nomor 10 Tahun 1995 tentang Kepabeanan dan Undang-Undang Nomor 39 Tahun  2007 tentang Perubahan atas Undang-Undang Nomor 11 Tahun 1995 tentang Cukai."],
    ]
    
    var dataFAQ:[FAQ]?

}

extension FAQViewModel{
    
}
