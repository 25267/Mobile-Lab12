//
//  CustomTextField.swift
//  Lab10Zh
//
//  Created by Zhanibek on 23.11.2021.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var field: String
    var iconName: String
    var isSecure:Bool = false
    var title: String
    var prompt: String
    
    var body: some View {
        HStack{
            
            Image(systemName: iconName)
                .font(.title2)
                .foregroundColor(.black)
                .frame(width: 35)
            
            TextField(title, text: $field)
                .autocapitalization(.none)
                
        }
        .padding()
        Text(prompt)
            .fixedSize(horizontal: false, vertical: true)
            .font(.caption)
            .foregroundColor(.black)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(field: .constant(""), iconName: "person", title: "Email", prompt: "Enter a valid email")
    }
}
