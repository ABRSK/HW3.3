//
//  StartView.swift
//  HW3.3
//
//  Created by Андрей Барсук on 10.06.2022.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            if userManager.user.isRegistered {
                TimerView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .environmentObject(UserManager())
    }
}
