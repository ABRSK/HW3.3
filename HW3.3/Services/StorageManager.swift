//
//  StorageManager.swift
//  HW3.3
//
//  Created by Андрей Барсук on 10.06.2022.
//

import SwiftUI

class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("username") private var username: String?
    @AppStorage("isRegistered") private var isRegistered: Bool?
    
    private init() {}
    
    func fetchUser() -> User {
        guard let username = username else { return User() }
        guard let isRegistered = isRegistered else { return User() }
        let user = User(name: username, isRegistered: isRegistered)
        
        return user
    }
    
    func saveUser(user: User) {
        username = user.name
        isRegistered = user.isRegistered
    }
    
    func logout() {
        username = nil
        isRegistered = nil
    }
}
