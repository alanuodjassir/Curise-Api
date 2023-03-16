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
    
    
    @Field(key:"name")
    var name: String
    
    
    @Field(key:"passenger_capacity")
   
    var passenger_capacity: Int
  
    
    
    @Field(key:"Restaurants")
   
    var Restaurants: Int
    
    
    @Field(key:"Departure_date ")
   
    var Departure_date: Date
    
    
    
    @Field(key:"pool")
   
    var pool: Int
    
    
    
    @Field(key:"arrival_date")
   
    var arrival_date: Date
    
    
    @Field(key:"Wheelchair_Accessible")
   
    var Wheelchair_Accessible: String

    
    @Field(key:"country_departure")
   
    var country_departure: String
    
  
    @Field(key:"country_arrival")
   
    var country_arrival: String
    
    
    
    @Field(key:"trip_duration")
   
    var trip_duration: String
    
    @Children(for: \.$cruiseinfo)
    var CruiseActivity: [CruiseActivity]
    
    init(){}
    
    init(id: UUID? = nil, name: String, passenger_capacity: Int, Restaurants: Int, Departure_date: Date, pool: Int, arrival_date: Date, Wheelchair_Accessible: String, country_departure: String, country_arrival: String, trip_duration: String) {
        self.id = id
        self.name = name
        self.passenger_capacity = passenger_capacity
        self.Restaurants = Restaurants
        self.Departure_date = Departure_date
        self.pool = pool
        self.arrival_date = arrival_date
        self.Wheelchair_Accessible = Wheelchair_Accessible
        self.country_departure = country_departure
        self.country_arrival = country_arrival
        self.trip_duration = trip_duration
    }
   
    
}




//1-id
//2-image
//3-name
//4-#passenger_capacity
//5-Restaurants
//6-pool
//7-Wheelchair_Accessible

//8-Departure_date            تاريخ المغادره
//9-arrival_date                              تاريخ الوصول
//10-country_departure                   بلد المغادره
//11- country_arrival                                بلد الوصول
//12-trip_duration
