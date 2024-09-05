//
//  Auto+CoreDataProperties.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 04/09/24.
//
//

import Foundation
import CoreData


extension Auto {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Auto> {
        return NSFetchRequest<Auto>(entityName: "Auto")
    }

    @NSManaged public var nombre: String?

}

extension Auto : Identifiable {

}
