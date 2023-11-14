//
//  OvalTextFieldStyle.swift
//  pokedex
//
//  Created by Esdras Santos Gois on 14/11/23.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(.transparentBlack)
            .cornerRadius(20)
    }
}
