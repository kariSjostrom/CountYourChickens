//
//  Ledger+CoreDataProperties.swift
//  CountYourChickens
//
//  Created by Karissa the Squid on 10/26/15.
//  Copyright © 2015 Rock Valley College. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Ledger {

    @NSManaged var total: String?
    @NSManaged var balance: String?
    @NSManaged var spending: String?
    @NSManaged var saving: String?
    @NSManaged var income: String?

}
