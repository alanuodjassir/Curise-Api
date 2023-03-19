//
//  swift.swift
//  
//
//  Created by gyda almohaimeed on 24/08/1444 AH.
//

import Vapor
import Fluent

struct CruiseActivityTabel: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("CruiseActivityTabel")
               .id()
               .field("nameOfEvent", .string, .required)
               .field("destination", .string, .required)
               .field("departure_date", .string, .required)
               .field("duration", .string, .required)
               .field("destination", .string, .required)
               .field("price", .string, .required)
               .field("activity_type", .string, .required)
               .field("activity_start_time", .string, .required)
               .field("activity_end_time", .string, .required)
               .field("activity_description", .string, .required)

               .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("CruiseActivityTabelv").delete()
    }
}








