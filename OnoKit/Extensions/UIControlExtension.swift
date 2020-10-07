//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

extension UIControl {

    func addAction(_ controlEvents: UIControl.Event = .touchUpInside, _ closure: @escaping () -> Void) {

        let sleeve = CommonClosureSleeve(closure)
        removeTarget(nil, action: nil, for: controlEvents)
        addTarget(sleeve, action: #selector(CommonClosureSleeve.invoke), for: controlEvents)
        objc_setAssociatedObject(self, String(ObjectIdentifier(self).hashValue) + String(controlEvents.rawValue), sleeve, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
    }

}
