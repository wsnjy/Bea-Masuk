//
//  Home.swift
//  Bea Masuk
//
//  Created by Wisnu Sanjaya on 23/12/20.
//  Copyright © 2020 Sanjaya Wisnu. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color("homeBackground")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("bg_bottom")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: 100)
            }
            .edgesIgnoringSafeArea(.bottom)
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        print("go to developer")
                    }, label: {
                        Image("developer")
                            .resizable()
                            .frame(width: 22, height: 22)
                    })
                    .padding(.trailing)
                }
                .padding(.bottom, 8)
                ZStack {
                    Image("box")
                        .resizable()
                        .cornerRadius(8)
                    VStack{
                        HStack {
                            Text("Info Kurs".uppercased())
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.leading)
                            Spacer()
                        }
                        .padding(.top)
                        HStack {
                            Text("IDR 15.0000")
                            Spacer()
                            Text("1 USD")
                        }
                        .padding(.horizontal, 16)
                        Color.white
                            .frame(height: 1)
                            .padding(.horizontal)
                        HStack {
                            CurrencyView(rupiah: "100000", foreignCurrency: "23 EUR")
                            Spacer()
                            CurrencyView(rupiah: "100000", foreignCurrency: "23 EUR")
                            Spacer()
                            CurrencyView(rupiah: "100000", foreignCurrency: "23 EUR")
                        }
                        .padding()
                        Spacer()
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height * 0.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack {
                    HStack {
                        SquareMenu(icon: "icon_rumus", menuName: "Rumus")
                        SquareMenu(icon: "icon_hitung", menuName: "Cara Hitung")
                    }
                    HStack {
                        SquareMenu(icon: "icon_faq", menuName: "FAQ")
                        SquareMenu(icon: "icon_pengaduan", menuName: "Pengaduan")
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width * 0.8)
                .padding(16)
                Spacer()
                Button(action: {
                    print("Hitung")
                }, label: {
                    Image("create_kalkulator")
                        .resizable()
                        .frame(width: 80, height: 80)
                })
                Spacer()
                    .frame(height: 16)
            }
        }
    }
}

struct SquareMenu: View {
    
    var icon: String
    var menuName: String
    
    var body: some View {
        ZStack{
            Color(.white)
            VStack {
                Image(icon)
                    .resizable()
                    .frame(width: 64, height: 64)
                Text(menuName)
            }
        }
    }
}

struct CurrencyView: View {
    
    var rupiah: String
    var foreignCurrency: String
    
    var body: some View {
        VStack {
            Text(rupiah)
            Text(foreignCurrency)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
