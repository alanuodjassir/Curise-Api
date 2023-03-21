
//
//  File.swift
//
//
//  Created by gyda almohaimeed on 27/08/1444 AH.
//  Modified by Reem Alkhatib on 19/03/2023


import Vapor

struct CruiseInfoController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let cruiseDetails = routes.grouped("cruiseinfo")
        cruiseDetails.get(use: index)
        cruiseDetails.post(use: create)
        cruiseDetails.delete(use: delete)
        cruiseDetails.put( use: update)
        cruiseDetails.get(":cruiseinfoID", "cruiseactivity", use: getCruisActivity)

    }
    
    
}

//CRUD in order

// CREATE
func create(req: Request) async throws -> CruiseInfo {
    let cruiseDetails = try req.content.decode(CruiseInfo.self)
    try await cruiseDetails.save(on: req.db)
    return cruiseDetails
}

//REQUEST
func index(req: Request) async throws -> [CruiseInfo] {
    try await CruiseInfo.query(on: req.db).all()
    
}


// UPDATE - PUT
func update(req: Request) async throws -> CruiseInfo {
    let newCruiseInfo = try req.content.decode(CruiseInfo.self)
    guard let cruiseInfo = try await CruiseInfo.find(req.parameters.get("cruiseinfoID"), on: req.db) else{
       throw Abort(.notFound)
    }
    try await cruiseInfo.update(on: req.db)
    return newCruiseInfo
    
}


//no update is needed for the cruiseInfo data
//DELETE
func delete(req: Request) async throws -> HTTPStatus {
    guard let cruiseDetails = try await CruiseInfo.find(req.parameters.get("cruiseinfoID"), on: req.db) else {
        throw Abort(.notFound)
    }
    try await cruiseDetails.delete(on: req.db)
    return .noContent
    }

func getCruisActivity(_ req: Request) throws -> EventLoopFuture<[CruiseActivity]> {
    CruiseInfo.find(req.parameters.get("cruiseinfoID"), on: req.db).unwrap(or: Abort(.notFound)).flatMap { cruise in
        cruise.$CruiseActivity.get(on: req.db)
    }
}

