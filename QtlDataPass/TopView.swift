//
//  ContentView.swift
//  QtlDataPass
//
//  Created by 柿崎逸 on 2023/04/15.
//

import SwiftUI

struct TopView: View {
    
    // MARK: - Property Wrappers
    @State private var textTopInput = ""
    
    // MARK: - Property Wrappers
    @State private var textTopRevert = ""
    
    //MARK: - body
    var body: some View {
        VStack {
            NavigationStack {
                Spacer()
                TextField("文字を入力", text: $textTopInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink {
                    TopTextInputView(textTopInput: $textTopInput)
                } label: {
                    Text("TopTextInputViewに画面遷移")
                }.padding()
                
                Spacer()
                
                Text("この下にTopTextRevertView画面で入力したテキストが表示")
                
                Text(textTopRevert)

                NavigationLink {
                    TopTextRevertView(textTopRevert: $textTopRevert)
                } label: {
                    Text("TopTextRevertViewに画面遷移")
                }.padding()
                
                Spacer()
            }
        }
        .padding()
    }// body
}// View

// MARK: - Preview
// 以下にpreviewのソースが入ります。
struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
