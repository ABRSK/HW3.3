//
//  UserManager.swift
//  HW3.3
//
//  Created by Андрей Барсук on 10.06.2022.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var user = User()
    
    var lengthIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) { self.user = user }
}
