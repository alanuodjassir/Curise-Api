
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


//DELETE
func delete(req: Request) async throws -> HTTPStatus {
    guard let cruiseDetails = try await CruiseInfo.find(req.parameters.get("cruiseinfoID"), on: req.db) else {
        throw Abort(.notFound)
    }
    try await cruiseDetails.delete(on: req.db)
    return .noContent
    }
