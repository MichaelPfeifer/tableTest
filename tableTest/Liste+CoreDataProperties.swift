//
//  Liste+CoreDataProperties.swift
//  tableTest
//
//  Created by Michael Pfeifer on 03.10.16.
//  Copyright © 2016 Michael Pfeifer. All rights reserved.
//

import Foundation
import CoreData


extension Liste {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Liste> {
        return NSFetchRequest<Liste>(entityName: "Liste");
    }

    @NSManaged public var servoname: String?

}
