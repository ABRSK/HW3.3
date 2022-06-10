//
//  HW3_3App.swift
//  HW3.3
//
//  Created by Андрей Барсук on 10.06.2022.
//

import SwiftUI

@main
struct HW3_3App: App {
    private let user = StorageManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(UserManager(user: user))
        }
    }
}
