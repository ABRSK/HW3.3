//
//  TimerView.swift
//  HW3.3
//
//  Created by Андрей Барсук on 10.06.2022.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hello, \(userManager.user.name)")
                .padding()
                .font(.title)
            Spacer()
            Text("\(timer.counter)")
                .font(.largeTitle)
            Spacer()
            ButtonView(text: timer.buttonTitle, color: .blue, action: timer.startTimer )
            ButtonView(text: "Log Out", color: .red, action: logout )
        }
    }
    
    private func logout() {
        StorageManager.shared.logout()
        userManager.user = User()
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .environmentObject(UserManager())
    }
}
