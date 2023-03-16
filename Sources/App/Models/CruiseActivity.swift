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
    
    
    @Field(key:"nameOfEvent")
    
    
    var nameOfEvent: String
    
    
    @Field(key:"locationOfEvent")
    
    var locationOfEvent: String
    
    @Field(key:"Time_from_to")
    
    var Time_from_to : String
    
    
    @Field(key:"cost")
    
    var cost: String
    
    @Field(key:"Offers")
    
    var Offers: String
    
    @Parent(key: "cruiseinfoID")
    var cruiseinfo: CruiseInfo
    
    init()  {}
    
    
    init(id: UUID? = nil, nameOfEvent: String, locationOfEvent: String, Time_from_to: String, cost: String, Offers: String) {
        self.id = id
        self.nameOfEvent = nameOfEvent
        self.locationOfEvent = locationOfEvent
        self.Time_from_to = Time_from_to
        self.cost = cost
        self.Offers = Offers
    }
    
}





//nameOfEvent
//locationOfEvent
//Time_from _to..
//cost
//Offers


