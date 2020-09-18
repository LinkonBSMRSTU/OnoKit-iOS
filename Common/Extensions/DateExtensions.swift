//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import Foundation

public extension Date {

    public var serverDateFormat: String {

        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let text: String = formatter.string(from: self)

        return text

    }

    public var commonDateFormat: String {

        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let text: String = formatter.string(from: self)

        return text

    }

    public var serverDateAndTimeFormat: String {

        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let text: String = formatter.string(from: self)

        return text

    }

    public var commonDateAndTimeFormat: String {

        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy - HH:mm"
        let text: String = formatter.string(from: self)

        return text

    }

}
