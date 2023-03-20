//
//  File.swift
//  
//
//  Created by gyda almohaimeed on 24/08/1444 AH.
//

import Foundation
import Fluent


struct CruiseInfoTabel: Migration{
    func prepare(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("cruiseinfo")
            .id()
            .field("cruise_name", .string, .required)
            .field("start_date", .string, .required)
            .field("end_date", .string, .required)
            .field("departure_port", .string, .required)
            .field("destination_port", .string, .required)
            .field("cruise_line", .string, .required)
            .field("price", .string, .required)
    
            .create()
        
    }
    
    func revert(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("cruiseinfo").delete()
        
        
    }
    
    
    
    
    
}

