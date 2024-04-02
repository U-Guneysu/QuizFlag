//
//  quizModel.swift
//  QuizFlag
//
//  Created by UmutG on 2.04.2024.
//

import Foundation

struct QuizModel{

var img: String?
var text: String?
var answer: [String]
var correct: Int?

}

var myQuiz1 : [QuizModel] = [
    QuizModel(img: "flag1",
              text: "Aşağıdaki bayrak, kırmızı ve beyaz renklerin yanı sıra mavi bir kare içinde yer alan yıldız ve çizgilerle karakterizedir. Bu bayrak hangi ülkeye aittir?",
              answer: ["Amerika Birleşik Devletleri", "Kanada", "İngiltere", "Avusturya"],
              correct: 0),
    
    QuizModel(img: "flag2",
              text: "Yeşil arka plan üzerinde beyaz bir haç ve kırmızı bir yıldız bulunan bayrak hangi ülkeye aittir?",
              answer: ["Almanya", "İsveç", "İsviçre", "Hollanda"],
              correct: 2),
    
    QuizModel(img: "flag3",
              text: "Yeşil, sarı ve mavi renklerin yoğun olduğu, ortasında bir güneş simgesi bulunan bayrak aşağıdaki ülkelerden hangisine aittir?",
              answer: ["Brezilya", "Arjantin", "Meksika", "Kolombiya"],
              correct: 2),
    
    QuizModel(img: "flag4",
              text: "Beyaz bir zemin üzerinde kırmızı bir daire ve beyaz bir daire içinde yer alan bir daire olan bayrak, hangi Asya ülkesine aittir?",
              answer: ["Japonya", "Güney Kore", "Çin", "Hindistan"],
              correct: 0),
    
    QuizModel(img: "flag5",
              text: "Mavi, beyaz ve kırmızı yatay çizgilere sahip olan bayrak aşağıdaki ülkelerden hangisinin bayrağıdır?",
              answer: ["Rusya", "Fransa", "İtalya", "İspanya"],
              correct: 1),
    
    QuizModel(img: "flag6",
              text: "Kırmızı zemin üzerinde beyaz bir yıldız ve ay şekli bulunan bayrak hangi ülkeye aittir?",
              answer: ["Türkiye", "Pakistan", "Endonezya", "Malezya"],
              correct: 0),
    
    QuizModel(img: "flag7",
              text: "Yeşil, beyaz ve kırmızı yatay şeritlerle bölünmüş bayrak hangi Orta Doğu ülkesine aittir?",
              answer: ["İran", "Suudi Arabistan", "Mısır", "Nijerya"],
              correct: 2),
    
    QuizModel(img: "flag8",
              text: "Yeşil, sarı ve kırmızı dikey şeritlerle bölünmüş bayrak hangi Afrika ülkesine aittir?",
              answer: ["Güney Afrika", "Kenya", "Nijerya", "Angola"],
              correct: 0),
    
    QuizModel(img: "flag9",
              text: "Yeşil arka plan üzerinde beyaz bir çarpı işareti bulunan bayrak hangi Avrupa ülkesine aittir?",
              answer: ["Kanada", "Avusturya", "Yeni Zelanda", "İrlanda"],
              correct: 3),
    
    QuizModel(img: "flag10",
              text: "Beyaz bir çarpı üzerinde mavi bir zemin ve kırmızı bir haç bulunan bayrak, aşağıdaki ülkelerden hangisine aittir?",
              answer: ["İsveç", "Norveç", "Finlandiya", "Danimarka"],
              correct: 1),
]

func SaveScore(quiz: String, score: Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore(quiz: String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
