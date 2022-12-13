//
//  ContentView.swift
//  StaticListe
//
//  Created by İlker Kaya on 9.12.2022.
//

import SwiftUI

struct UlkeSatirTasarim:View{
    var ulkeAdi: String
    var body: some View{
        Text(ulkeAdi)
    }
}

struct ContentView: View {
    var body: some View {
        List{
            UlkeSatirTasarim(ulkeAdi: "Türkiye")
            UlkeSatirTasarim(ulkeAdi: "Amerika")
            UlkeSatirTasarim(ulkeAdi: "Almanya")
            UlkeSatirTasarim(ulkeAdi: "Japonya")
            UlkeSatirTasarim(ulkeAdi: "Fransa")
            UlkeSatirTasarim(ulkeAdi: "Hollanda")
            UlkeSatirTasarim(ulkeAdi: "Meksika")
            UlkeSatirTasarim(ulkeAdi: "Romanya")
            UlkeSatirTasarim(ulkeAdi: "Ukrayna")
            UlkeSatirTasarim(ulkeAdi: "Rusya")
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
