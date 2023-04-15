//
//  ThirdView.swift
//  QtlDataPass
//
//  Created by 柿崎逸 on 2023/04/15.
//

import SwiftUI

struct ThirdView: View {
    @Binding var textThird: String
    var body: some View {
        TextField("文字を入力する", text: $textThird)
            .textFieldStyle(RoundedBorderTextFieldStyle())    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(textThird: .constant(""))
    }
}
