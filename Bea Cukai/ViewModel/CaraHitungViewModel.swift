//
//  CaraHitungViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/24/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

struct CaraHitungViewModel {
    
    var caraHitungModel = ["Masukkan data, gunakan tanda titik (.) untuk memasukkan angka yang memiliki nilai koma. *Jangan pisahkan angka ribuan dan atau jutaan dengan tanda titik/koma.",
                           "Kolom Kurs saya gunakan USD karena umumnya perdagangan menggunakan mata uang tersebut, seandainya nilai transaksi Anda menggunakan mata uang selain USD maka dikonversikan terlebih dahulu nilai Cost, Insurance dan Freight nya ke dalam USD, caranya dengan mengalikan nilai mata uang tersebut dengan unsur yang akan dikonversikan (Cost, Insurance dan Freight) dibagi dengan nilai mata uang dalam USD. \nContohnya:\n FOB CNY 1000 untuk bisa dijadikan\n USD = (1480,45 x 1000)/9409= USD 157,344 dengan asumsi\n1 USD = Rp. 9409 dan 1 CNY = Rp. 1480,45.",
                           "16ptPada kolom PPh pasal 22 :\n- Non NPWP (15%) untuk yang tidak memiliki NPWP.\n- Non API (7,5%) untuk yang mempunyai NPWP dan tidak memakai Angka Pengenal Impor (API).\n- API (2.5%) untuk yang mempunyai NPWP dan memakai API.",
                           "Pada kolom Pembebasan :\n- Impor Umum (0) untuk kegitan impor umum tanpa pembebasan. \n- Barang kiriman Pos/ PJT ($50) untuk barang kiriman via pos atau jasa titipan lainnya.\n- Penumpang per orang ($250) untuk barang bawaan penumpang per orang.\n- Penumpang per keluarga ($1000) untuk barang bawaan penumpang per keluarga.\n \nKlik tombol “HITUNG” untuk menghitung. Jika tidak ada kesalahan maka akan muncul jumlah pungutan BM dan PDRI serta total pungutan.",
    ]

}
