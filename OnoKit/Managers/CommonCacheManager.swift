//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation

open class CommonCacheManager: NSObject {

    // MARK: - Helpers

    public static func clear() {

        if let appDomain = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: appDomain)
        }

    }

    public static func set<T>(_ value: [T], forKey key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func get<T>(_ key: String) -> [T]? {

        if let value: [T] = UserDefaults.standard.value(forKey: key) as? [T] {

            return value

        } else {

            return nil

        }

    }

    public static func set(_ value: Bool, forKey key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func get(forKey key: String) -> Bool? {

        let boolean: Bool = UserDefaults.standard.bool(forKey: key)
        return boolean

    }

    public static func set(_ value: String, forKey key: String) {

        UserDefaults.standard.set(value, forKey: key)

    }

    public static func get(forKey key: String) -> String? {

        let value = UserDefaults.standard.string(forKey: key)
        return value

    }

    public static func set(_ value: Int, forKey key: String) {

        let stringValue = String(format: "%d", value)
        UserDefaults.standard.set(stringValue, forKey: key)

    }

    public static func get(forKey key: String) -> Int? {

        if let value: String = UserDefaults.standard.string(forKey: key) {
            return Int(value)
        } else {
            return nil
        }

    }

}
