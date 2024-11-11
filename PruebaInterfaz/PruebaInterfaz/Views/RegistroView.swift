//
//  RegisterView.swift
//  PruebaInterfaz
//
//  Created by Carlos Eduardo Gurdian on 10/11/24.
//

import SwiftUI

struct RegistroView: View {
    @State private var name: String = ""
    @State private var userID: String = ""
    @State private var phone: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Registro")
                .font(.largeTitle)
                .padding()

            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("User ID", text: $userID)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("Phone", text: $phone)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            SecureField("Repeat Password", text: $repeatPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Button(action: {
                // registrar al usuario
            }) {
                Text("Register")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
    }
}
