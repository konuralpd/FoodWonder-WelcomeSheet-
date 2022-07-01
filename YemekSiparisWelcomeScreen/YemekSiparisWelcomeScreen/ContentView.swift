//
//  ContentView.swift
//  YemekSiparisWelcomeScreen
//
//  Created by Mac on 1.07.2022.
//

import SwiftUI
import WelcomeSheet

struct ContentView: View {
    
    @State private var showSheet = false
    
    let pages = [
           WelcomeSheetPage(title: "FoodWonder'ın Avantajlı Dünyasına Hoşgeldin!", rows: [
            WelcomeSheetPageRow(image: Image("order"),
                                accentColor: Color.red, title: "Binlerce Restorant",
                                   content: "Canın ne çekiyorsa, aradığın bütün yemekleri bulup sipariş edebilirsin."),
               
            WelcomeSheetPageRow(image: Image("delivery"), accentColor: Color.red,
                                   title: "Hızlı Teslimat",
                                   content: "Siparişleriniz maksimum 40 dakikada teslim edilir *Hava şartlarına göre değişiklik gösterebilir*."),
               
               WelcomeSheetPageRow(image: Image("cancel"),
                                   accentColor: Color.red,
                                   title: "Kolay İptal ve İade",
                                   content: "Yemeğin eksik veya beklediğin kalitede gelmedi mi? Hemen iade talebi oluştur ücretini iade edelim")
           ], accentColor: Color.red,
                            mainButtonTitle: "Hesap Oluştur!",
                            optionalButtonTitle: "Daha Fazla Bilgi Almak İstiyorum",
                            optionalButtonURL: URL(string: ""))
       ]
    
  
    
    var body: some View {
       
        ZStack {
            Button {
                showSheet.toggle()
            } label: {
                RoundedRectangle(cornerRadius: 8, style: .circular).frame(width: 30, height: 30).foregroundColor(.red)
                Text("Fırsatları Gör").bold().foregroundColor(.red)
            }
        .welcomeSheet(isPresented: $showSheet, pages: pages)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
