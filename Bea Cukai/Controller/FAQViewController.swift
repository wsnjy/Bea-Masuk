//
//  FAQViewController.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 11/8/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class FAQViewController: UITableViewController {

    let faq = [
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
                    ["q":"Apakah dasar hukum keberadaan Direktorat Jenderal Bea dan Cukai?",
                     "a":"Dasar hukum keberadaan Direktorat Jenderal Bea dan Cukai adalah Undang-Undang Republik Indonesia Nomor 17 Tahun  2006 Tentang Perubahan atas Undang-Undang Nomor 10 Tahun 1995 tentang Kepabeanan dan Undang-Undang Nomor 39 Tahun  2007 tentang Perubahan atas Undang-Undang Nomor 11 Tahun 1995 tentang Cukai."]]],
    ] as [[String:Any]]
    
    let dataTable = [
        ["question":"tanya",
         "answer":"jawab"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FAQ Bea Cukai"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    
}

extension FAQViewController {
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1//dataTable.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return faq.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let data = faq[indexPath.row]["faq"]
        cell.selectionStyle = .none
        cell.textLabel?.text = data as? String
        cell.textLabel?.numberOfLines = 0
        return cell
    }

    
}
