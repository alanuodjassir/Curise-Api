//
//  File.swift
//  
//
//  Created by gyda almohaimeed on 24/08/1444 AH.
//

import Foundation
import Fluent


struct CruiseInfoTabel: Migration{
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("cruiseinfo")
            .id()
            .field("cruise_name", .string, .required)
            .field("start_date", .date, .required)
            .field("end_date", .date, .required)
            .field("departure_port", .string, .required)
            .field("destination_port", .string, .required)
            .field("cruise_line", .string, .required)
            .field("price", .string, .required)
        
            .create()
        
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void>{
        return database.schema("cruiseinfo").delete()
        
    }
}

