//
//  ContentView.swift
//  QuizFlag
//
//  Created by UmutG on 2.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    //Skor için değişken
    @State var score = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Text("Quiz'e Hoşgeldiniz")
                //Butona basıldığında quize başlanır
                
                NavigationLink(destination: Quiz1()){
                    Text("Quiz'i Başlat")
                }
                HStack{
                    //Skor'unu Gör
                    Text("Önceki Skorunuz:  \(self.score) / \(myQuiz1.count)")
                        .onAppear(){
                            self.score = LoadScore(quiz: "myQuiz1")
                        }
                }
            }
            .navigationBarTitle("Ülke Bayrakları Quiz'i", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
