//
//  File.swift
//  
//
//  Created by gyda almohaimeed on 24/08/1444 AH.
//

import Fluent
import Vapor

final class CruiseInfo: Model, Content{
    static let schema = "cruiseinfo"
    
    @ID(key:.id)
    var id:UUID?
    
    
    @Field(key:"cruise_name")
    var cruise_name: String
    
    
    @Field(key:"start_date")
   
    var start_date: Date
  
    
    
    @Field(key:"end_date")
   
    var end_date: Date
    
    
    @Field(key:"cruise_line ")
   
    var cruise_line: String
    
    
    
    @Field(key:"departure_port")
   
    var departure_port: String
  
    
    @Field(key:"destination_port")
   
    var destination_port: String
    
  
    @Field(key:"price")
   
    var price: String
    
    

    
  
  
    
    
    
    @Children(for: \.$cruiseinfo)
    var CruiseActivity: [CruiseActivity]
    
    init(){}
    
    init(id: UUID? = nil, cruise_name: String, start_date: Date, end_date: Date, cruise_line: String, departure_port: String, destination_port: String, price: String, CruiseActivity: [CruiseActivity]) {
        self.id = id
        self.cruise_name = cruise_name
        self.start_date = start_date
        self.end_date = end_date
        self.cruise_line = cruise_line
        self.departure_port = departure_port
        self.destination_port = destination_port
        self.price = price
        self.CruiseActivity = CruiseActivity
    }
   
    
}


// INfo (cruise_name, start_date, end_date, cruise_line, departure_port, destination_port, price)

