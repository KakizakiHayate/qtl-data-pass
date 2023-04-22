//
//  ThirdView.swift
//  QtlDataPass
//
//  Created by 柿崎逸 on 2023/04/15.
//

import SwiftUI

struct TopTextRevertView: View {
    @Binding var textTopRevert: String
    var body: some View {
        TextField("文字を入力する", text: $textTopRevert)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct TopTextRevertView_Previews: PreviewProvider {
    static var previews: some View {
        TopTextRevertView(textTopRevert: .constant(""))
    }
}
