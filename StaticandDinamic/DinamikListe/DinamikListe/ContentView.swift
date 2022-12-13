//
//  ContentView.swift
//  DinamikListe
//
//  Created by İlker Kaya on 9.12.2022.
//

import SwiftUI

struct UlkeSatirTasarimi: View{
    var ulkeAdi: String
    var body: some View{
        HStack{
            Text(ulkeAdi)
            Spacer()
            Text("Ülke Seç").onTapGesture {
                print("Seçilen ülke \(self.ulkeAdi)")
            }.foregroundColor(Color.red)
            
        }
            
    }
}

struct ContentView: View {
    @State private var ulkeler = [String]()
    var body: some View {
        NavigationView{
            
            List{
                ForEach(ulkeler, id: \.self){ulke in
                    NavigationLink(destination: IkinciSayfa(gelenUlke: ulke)){
                        UlkeSatirTasarimi(ulkeAdi: ulke).onTapGesture {
                            print("Satıra tıklandı \(ulke)")
                        }
                    }
                }.onDelete(perform: ulkeSil)
            }.navigationTitle("Ulkeler")
                
        }.onAppear(){
            self.ulkeler = ["Türkiye","Almanya","Amerika","Fransa","Hollanda","Ukrayna","Romanya","Rusya","Japonya","Güney Kore","Hindistan","Çin","Kenya","Yunanistan","İtalya","Bulgaristan","Bosna Hersek"]
        }
        
        
    }
    func ulkeSil(at offsets: IndexSet){
        ulkeler.remove(atOffsets: offsets)
    }
}

struct IkinciSayfa: View{
    var gelenUlke: String?
    var body: some View{
        VStack{
            Text(gelenUlke!).font(.largeTitle)
        }.navigationBarTitle(gelenUlke!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
