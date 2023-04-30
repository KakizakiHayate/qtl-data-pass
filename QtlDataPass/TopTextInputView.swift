//
//  SecondView.swift
//  QtlDataPass
//
//  Created by 柿崎逸 on 2023/04/15.
//

import SwiftUI

struct TopTextInputView: View {
    @Binding var textTopInput: String
    var body: some View {
        VStack {
            Text("TopView画面で入力した内容が下記に表示されます。")
            Text(textTopInput)
        }
    }
}

struct TopTextInputView_Previews: PreviewProvider {
    static var previews: some View {
        TopTextInputView(textTopInput: .constant(""))
    }
}
