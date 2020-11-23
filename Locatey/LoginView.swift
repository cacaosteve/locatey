//
//  ScreenTwo.swift
//  SigninV2
//
//  Created by Гералд Бирген on 27.09.2020.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @ObservedObject var loginFetcher = LoginFetcher()
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.purple, .yellow, .green]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(edges: .all)

            
            VStack{
                VStack(spacing: 15){
                    VStack(alignment: .center, spacing: 30){
                        VStack {
                            Text(verbatim: loginFetcher.newSession)
                        }
                        VStack(alignment: .center) {
                            TextField("Username", text: $username)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                            Divider()
                                .background(Color.white)
                        }
                        VStack(alignment: .center) {
                            SecureField("Enter a password", text: $password)
                                .keyboardType(.asciiCapable)
                            Divider()
                                .background(Color.white)
                        }
                        Button(action: {
                            
                        }, label: {
                            Text("Login")
                                .padding()
                                .background(Color.secondary)
                                .foregroundColor(.primary)
                                .cornerRadius(5)
                        })
                    }
                }
                .padding(.horizontal,35)
            }
            
        }
    }
}

struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
