//
//  RegisterView.swift
//  HW3.3
//
//  Created by Андрей Барсук on 10.06.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            ZStack {
                TextField("Enter your name...", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                HStack {
                    Spacer()
                    Text("\(userManager.user.name.count)")
                        .foregroundColor(userManager.user.name.count < 3 ? .red : .green)
                        .padding(.trailing)
                }
            }
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled(!userManager.lengthIsValid)
        }
        .padding()
    }
    
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegistered.toggle()
            StorageManager.shared.saveUser(user: userManager.user)
        }
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
