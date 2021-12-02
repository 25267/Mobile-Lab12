//
//  LoginView.swift
//  Lab10Zh
//
//  Created by Zhanibek on 23.11.2021.
//

import SwiftUI
import LocalAuthentication

struct LoginView: View {
    @State var phone = ""
    @State var password = ""
    @EnvironmentObject var model: ContentModel
    @AppStorage("stored_User") var phones = "77077077777"
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(red: 0.317, green: 0.369, blue: 0.471))
                
                
                Rectangle()
                    .foregroundColor(.white)
            }
            
            VStack {
                Text("Вход")
                
                CustomTextField(field: $model.phone, iconName: "phone", isSecure: false, title: "Phone", prompt: model.phoneNumPrompt)
                
                
                CustomTextField(field: $model.password, iconName: "lock", isSecure: false, title: "password", prompt: model.passwordPrompt)
                
                
                HStack {
               Text("Отправить")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color(red: 0.332, green: 0.364, blue: 0.463)))
                    .onTapGesture {
                        model.login(phone: model.phone, password: model.password) { _ in
                            
                            model.checkLogin()
                            
                            model.password = ""
                            model.phone = ""
                        }
                    }
                    
                    
                    
                    // authenticate User...
                    
                    if getBio(){
                        
                        Button(action: authenticateUser, label: {
                            
                            // getting biometrictype...
                            Image(systemName: LAContext().biometryType == .faceID ? "faceid" : "touchid")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding()
                                .background(Color("green"))
                                .clipShape(Circle())
                        })
                    }
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.white))
            .shadow(radius: 10)
            .padding()
            
            
            
            
            
            
            
        }
    }
    
    func getBio()->Bool{
        
        let scanner = LAContext()
        if model.phone == phones && scanner.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: .none){
            
            return true
        }
        
        return false
    }
    
    func authenticateUser(){
        
        let scanner = LAContext()
        scanner.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "To Unlock \(model.phone)") { (status, err) in
            if err != nil{
                print(err!.localizedDescription)
                return
            }
            
            
            withAnimation(.easeOut){model.loggedIn = true}
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(ContentModel())
    }
}
