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
               .field("name_of_event", .string, .required)
               .field("location", .string, .required)
               .field("date", .date, .required)
               .field("activity_type", .string, .required)
               .field("activity_start_time", .date, .required)
               .field("activity_end_time", .date, .required)
               .field("activity_description", .string, .required)
               .field("price", .string, .required)
               .field("offers", .string, .required)

               .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("CruiseActivityTabelv").delete()
    }
}


