//
//  ContentView.swift
//  first
//
//  Created by Enola on 2022/3/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            QuestionCard()
            AnswerCard(title:"Answer A")
            AnswerCard(title:"Answer B")
            AnswerCard(title:"Answer C")
            AnswerCard(title:"Answer D")
            
        }
    }
}

struct QuestionCard: View{
    var body: some View {
            
            HStack {
                Spacer()
                    .frame(width: 25)
                VStack(alignment: .center, spacing: 3.0) {
                    Text("Question")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                }
                Spacer()
                    .frame(width: 25)
            }.frame(width: 380, height: 220 )
            .background(Color(red: 239/255, green: 255/255, blue: 253/255))
            //(red: 239/255, green: 255/255, blue: 253/255)
                .background(.bar)
                .cornerRadius(50)
                .shadow(color: .gray, radius: 23, x: 20, y: 20)
            Spacer()
                .frame(height: 100 )
        
    }
}

// githu token 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
struct AnswerCard: View{
    
    var title: String = ""
    @State var isChecked: Bool = false
    
    var body: some View {
        HStack {s
            Button( action: {
                    self.isChecked.toggle()
                }
                   )
                Spacer()
                    .frame(width: 25)
                VStack(alignment:.leading) {
                    Text(self.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                }
                Spacer()
                    .frame(width: 200)
            }.frame(width: 380, height: 60 )
            .background(Color(red: 239/255, green: 255/255, blue: 253/255))
                .background(.bar)
                .cornerRadius(50)
            .shadow(color: .gray, radius: 23, x: 20, y: 20)
            Spacer()
            .frame(height: 30)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//.previewInterfaceOrientation(.portrait)
    }
}
