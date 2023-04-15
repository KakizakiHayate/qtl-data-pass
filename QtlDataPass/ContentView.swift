//
//  ContentView.swift
//  QtlDataPass
//
//  Created by 柿崎逸 on 2023/04/15.
//

import SwiftUI

struct ContentView: View {
    @State var textSecond = ""
    @State var textThird = ""
    var body: some View {
        VStack {
            NavigationStack {
                Spacer()
                TextField("文字を入力", text: $textSecond)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink(destination: SecondView(textSecond: $textSecond)) {
                    Text("SecondViewに画面遷移")
                }.padding()
                
                Spacer()
                
                Text("この下にThird画面で入力したテキストが表示")
                
                Text(textThird)
                NavigationLink(destination: ThirdView(textThird: $textThird)) {
                    Text("ThirdViewに画面遷移")
                }.padding()
                
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
