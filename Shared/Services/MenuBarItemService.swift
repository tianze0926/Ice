//
//  MenuBarItemService.swift
//  Shared
//

import Foundation

enum MenuBarItemService {
    static var name: String {
        if Bundle.main.bundleIdentifier?.hasPrefix("com.tianze0926.IceHiFix") == true {
            "com.tianze0926.IceHiFix.MenuBarItemService"
        } else {
            "com.jordanbaird.Ice.MenuBarItemService"
        }
    }
}

extension MenuBarItemService {
    enum Request: Codable {
        case start
        case sourcePID(WindowInfo)
    }

    enum Response: Codable {
        case start
        case sourcePID(pid_t?)
    }
}
