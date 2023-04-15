//
//  SecondView.swift
//  QtlDataPass
//
//  Created by 柿崎逸 on 2023/04/15.
//

import SwiftUI

struct SecondView: View {
    @Binding var textSecond: String
    var body: some View {
        Text("ContentView画面で入力した内容が下記に表示されます。")
        Text(textSecond)    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(textSecond: .constant(""))
    }
}
