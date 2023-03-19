//
//  File.swift
//  
//
//  Created by gyda almohaimeed on 24/08/1444 AH.
//

import Fluent
import Vapor

final class CruiseActivity: Model, Content{
    static let schema = "cruiseactivity"
    
    @ID(key:.id)
    var id:UUID?
    
    
    @Field(key:"name_of_event")
    
    
    var name_of_event: String
    
    
    @Field(key:"destination")
    
    var destination: String
    
    @Field(key:"departure_date")
    
    var departure_date : Date
    
    
    @Field(key:"activity_type")
    
    var activity_type: String
    
    @Field(key:"activity_start_time")
    
    var activity_start_time: String
    
    @Field(key:"activity_end_time")
    
    var activity_end_time: String
    
    
    @Field(key:"activity_description")
    
    var activity_description: String
 
  
    
    @Parent(key: "cruiseinfoID")
    var cruiseinfo: CruiseInfo
    
    init()  {}
    
    init(id: UUID? = nil, name_of_event: String, destination: String, departure_date: Date, activity_type: String, activity_start_time: String, activity_end_time: String, activity_description: String, cruiseinfo: CruiseInfo) {
        self.id = id
        self.name_of_event = name_of_event
        self.destination = destination
        self.departure_date = departure_date
        self.activity_type = activity_type
        self.activity_start_time = activity_start_time
        self.activity_end_time = activity_end_time
        self.activity_description = activity_description
        self.cruiseinfo = cruiseinfo
    }
    
    
    
// (name_of_event, destination, departure_date, duration, price, activity_type, activity_start_time, activity_end_time, activity_description)
}




